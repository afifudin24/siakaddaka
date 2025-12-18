<?php

namespace App\Imports;

use App\Models\User;
use App\Models\Guru;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Maatwebsite\Excel\Concerns\{
    ToCollection,
    WithHeadingRow,
    WithValidation
};
use Illuminate\Support\Collection;

class GuruImport implements ToCollection, WithHeadingRow, WithValidation
{
    public array $skipped = [];

    public function collection(Collection $rows)
    {
        DB::beginTransaction();

        try {
            foreach ($rows as $index => $row) {

                if (empty($row['nama'])) continue;

                // 🔍 CEK DUPLIKAT USER
                $exists = User::where('email', $row['email'])
                    ->orWhere('username', $row['username'])
                    ->exists();

                if ($exists) {
                    // simpan info baris yang di-skip
                    $this->skipped[] = [
                        'row' => $index + 2, // +2 karena heading
                        'email' => $row['email'],
                        'username' => $row['username'],
                        'reason' => 'Email atau Username sudah ada'
                    ];
                    continue; // ⬅️ SKIP DATA INI
                }

                // Insert ke users
                $user = User::create([
                    'nama'          => $row['nama'],
                    'username'      => $row['username'],
                    'email'         => $row['email'],
                    'password'      => Hash::make($row['password']),
                    'password_text' => $row['password'],
                    'role'          => 'guru',
                ]);

                // Insert ke guru
                Guru::create([
                    'user_id'   => $user->id,
                    'nama'      => $row['nama'],
                    'no_hp'     => $row['no_hp'] ?? null,
                    'tgl_lahir' => $row['tanggal_lahir'] ?? null,
                    'email'     => $user->email,
                ]);
            }

            DB::commit();

        } catch (\Throwable $e) {
            DB::rollBack();
            throw $e;
        }
    }

    // VALIDASI
    public function rules(): array
    {
        return [
            '*.nama'           => 'required',
            '*.email'          => 'required|email',
            '*.username'       => 'required',
            '*.password'       => 'required|min:6',
            '*.no_hp'          => 'nullable',
            '*.tanggal_lahir'  => 'nullable|date',
        ];
    }

    public function customValidationMessages()
    {
        return [
            '*.nama.required'          => 'Nama wajib diisi',
            '*.email.required'         => 'Email wajib diisi',
          
            '*.username.required'      => 'Username wajib diisi',
           
            '*.password.required'      => 'Password wajib diisi',
            '*.password.min'           => 'Password minimal 6 karakter',
            '*.tanggal_lahir.date'     => 'Tanggal lahir harus format YYYY-MM-DD',
        ];
    }
}
