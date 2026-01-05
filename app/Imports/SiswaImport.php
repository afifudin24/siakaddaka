<?php
namespace App\Imports;

use App\Models\User;
use App\Models\Siswa;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\Hash;
use Maatwebsite\Excel\Concerns\{
    ToModel,
    WithHeadingRow,
    WithValidation,
    SkipsOnFailure,
    WithEvents,
    ShouldQueue,
    WithChunkReading
};
use Maatwebsite\Excel\Events\AfterImport;
use Maatwebsite\Excel\Concerns\SkipsFailures;

class SiswaImport implements
    ToModel,
    WithHeadingRow,
    WithValidation,
    SkipsOnFailure,
    WithEvents,
    ShouldQueue,
    WithChunkReading
{
    use SkipsFailures;

    protected $importKey;

    public function __construct($importKey)
    {
        $this->importKey = $importKey;
    }

    public function rules(): array
    {
        return [
            'nama_lengkap' => 'required',
            'nis' => 'required',
            'nisn' => 'required',
            'username' => 'required',
            'password' => 'required',
            'tanggal_lahir_yyyy_mm_dd' => 'required|date',
        ];
    }

    public function model(array $row)
    {
        if (User::where('username', $row['username'])->exists()) {
            $this->updateProgress();
            return null;
        }

        $user = User::create([
            'nama' => $row['nama_lengkap'],
            'email' => $row['username'].'@sekolah.test',
            'username' => $row['username'],
            'role' => 'siswa',
            'password' => Hash::make($row['password']),
            'password_text' => $row['password'],
        ]);

        Siswa::create([
            'user_id' => $user->id,
            'nama' => $row['nama_lengkap'],
            'nis' => $row['nis'],
            'nisn' => $row['nisn'],
            'tgl_lahir' => $row['tanggal_lahir_yyyy_mm_dd'],
            'kelas_id' => null
        ]);

        $this->updateProgress();
    }

    protected function updateProgress()
    {
        $data = Cache::get("import_$this->importKey");

        $processed = $data['processed'] + 1;
        $percent = intval(($processed / $data['total']) * 100);

        Cache::put("import_$this->importKey", [
            'total' => $data['total'],
            'processed' => $processed,
            'percent' => $percent,
            'done' => $processed >= $data['total']
        ]);
    }

    public function chunkSize(): int
    {
        return 20;
    }

    public function registerEvents(): array
    {
        return [
            AfterImport::class => function () {
                $data = Cache::get("import_$this->importKey");

                if ($data['processed'] >= $data['total']) {
                    Cache::put("import_$this->importKey", array_merge($data, [
                        'percent' => 100,
                        'done' => true
                    ]));
                }
            }
        ];
    }
}
