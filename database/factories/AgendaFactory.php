<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Agenda;

class AgendaFactory extends Factory
{
    protected $model = Agenda::class;

    public function definition()
    {
        $startDate = $this->faker->dateTimeBetween('-1 month', '+1 month'); // mulai 1 bulan lalu sampai 1 bulan ke depan
        $endDate = (clone $startDate)->modify('+'.rand(1,3).' days'); // durasi 1-3 hari

        return [
            'judul' => $this->faker->sentence(3), // Judul kegiatan
            'deskripsi' => $this->faker->paragraph, // Deskripsi kegiatan
            'tgl_mulai' => $startDate->format('Y-m-d'),
            'tgl_selesai' => $endDate->format('Y-m-d'),
            'waktu_mulai' => $this->faker->time('H:i:s'),
            'waktu_selesai' => $this->faker->time('H:i:s'),
            'lokasi' => $this->faker->city,
            'status' => $this->faker->randomElement(['terjadwal', 'selesai', 'batal']),
        ];
    }
}
