<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\User;
use App\Models\Guru;

class GuruFactory extends Factory
{
    protected $model = Guru::class;

    public function definition()
    {
        $user = User::factory()->create(['role' => 'guru']);

        return [
            'user_id' => $user->id,
            'nama' => $user->nama,
            'bio' => $this->faker->sentence,
            'nip' => $this->faker->unique()->numerify('##########'),
            'nuptk' => $this->faker->unique()->numerify('##########'),
            'email' => $user->email,
            'jenis_kelamin' => $this->faker->randomElement(['L', 'P']),
            'no_hp' => $this->faker->phoneNumber,
            'tgl_lahir' => $this->faker->date(),
            'alamat' => $this->faker->address,
        ];
    }
}
