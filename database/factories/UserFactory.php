<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Hash;

class UserFactory extends Factory
{
    protected $model = \App\Models\User::class;

    public function definition()
    {
        return [
            'username' => $this->faker->unique()->userName,
            'nama' => $this->faker->name,
            'email' => $this->faker->unique()->safeEmail,
            'password' => Hash::make('password'), // default password
            'role' => $this->faker->randomElement(['admin','guru','siswa']),
            'foto_profil' => 'profile.png',
        ];
    }
}
