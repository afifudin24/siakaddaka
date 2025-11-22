<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DataSekolahSeeder extends Seeder
{
    public function run(): void
    {
        DB::table('data_sekolah')->insert([
            'nama_sekolah'     => 'SMK Contoh Nusantara',
            'alamat'           => 'Jl. Pendidikan No. 123, Purwokerto',
            'telepon'          => '0281-123456',
            'email_sekolah'            => 'info@smkcontoh.sch.id',
            'website'          => 'https://www.smkcontoh.sch.id',
            'ikon'             => 'ikon.png',
            'logo'             => 'logo.png',
            'gambar_unggulan'  => 'header.jpg',
            'kepala_sekolah'   => 'Drs. Andi Wijaya',
            'visi'             => 'Menjadi sekolah unggul yang berkarakter dan berprestasi.',
            'misi'             => 'Mencetak lulusan yang kompeten, berakhlak mulia, dan siap kerja.',
            'created_at'       => now(),
            'updated_at'       => now(),
        ]);
    }
}
