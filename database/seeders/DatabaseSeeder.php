<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Agenda;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // \App\Models\User::factory(10)->create();
       \App\Models\Agenda::factory()->count(10)->create();
        \App\Models\Admin::factory()->create();
\App\Models\Guru::factory()->count(5)->create();
\App\Models\Siswa::factory()->count(20)->create();

$this->call([
        DataSekolahSeeder::class,
    ]);


        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);
    }
}
