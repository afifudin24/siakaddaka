<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\User;
use App\Models\Siswa;

class SiswaFactory extends Factory
{
    protected $model = Siswa::class;

    public function definition()
    {
        $user = User::factory()->create(['role' => 'siswa']);

        return [
            'user_id' => $user->id,
            'nama' => $user->nama,
            'nis' => $this->faker->unique()->numerify('SIS######'),
            'nisn' => $this->faker->unique()->numerify('NISN######'),
            'tgl_lahir' => $this->faker->date(),
            'no_hp' => $this->faker->phoneNumber,
            'no_hp_ortu' => $this->faker->phoneNumber,
            'alamat' => $this->faker->address,
            'kelas_id' => null, // bisa diisi manual atau pake factory kelas
        ];
    }
}
