<?php

namespace Database\Factories;

use App\Models\TahunPelajaran;
use Illuminate\Database\Eloquent\Factories\Factory;

class SemesterFactory extends Factory
{
    public function definition(): array
    {
        return [
            'tahun_pelajaran_id' => TahunPelajaran::factory(),
            'nama' => $this->faker->randomElement(['Ganjil', 'Genap']),
            'tanggal_mulai' => $this->faker->date(),
            'tanggal_selesai' => $this->faker->date(),
            'is_active' => $this->faker->boolean(20),
        ];
    }
}
