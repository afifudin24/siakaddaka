<?php

namespace App\Imports;

use App\Models\Siswa;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
use Illuminate\Support\Facades\Log;

class SiswaImport implements ToModel, WithHeadingRow
{
    public $errors = []; // menampung error tiap baris

    public function model(array $row)
    {
        try {
            // cek username sudah ada atau belum
            $existingUser = User::where('username', $row['username'])->first();
            if ($existingUser) {
                $this->errors[] = "Username '{$row['username']}' sudah ada, baris dilewati.";
                return null; // skip baris ini
            }

            // 1. Buat user
            $user = User::create([
                'nama' => $row['nama_lengkap'],
                'email' => $row['username'] . '@sekolah.test',
                'username' => $row['username'],
                'role' => 'siswa',
                'password' => Hash::make($row['password']),
                'password_text' => $row['password']
            ]);

            // 2. Buat siswa
            return new Siswa([
                'user_id'       => $user->id,
                'nama'          => $row['nama_lengkap'],
                'nis'           => $row['nis'],
                'nisn'          => $row['nisn'],
                'tgl_lahir'     => $row['tanggal_lahir_yyyy_mm_dd'],
                'no_hp'         => $row['no_hp'],
                'no_hp_ortu'    => $row['no_hp_ortu'],
                'alamat'        => $row['alamat'],
                'jenis_kelamin' => $row['jenis_kelamin_lp'],
                'kelas_id'      => null
            ]);

        } catch (\Exception $e) {
            // jika terjadi error lain, simpan ke array errors
            $this->errors[] = "Baris '{$row['nama_lengkap']}' gagal: " . $e->getMessage();
            return null;
        }
    }
}
