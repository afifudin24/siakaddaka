<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
     public function up(): void
    {
        Schema::create('data_sekolah', function (Blueprint $table) {
            $table->id();

            // Informasi Umum
            $table->string('nama_sekolah')->nullable();
            $table->string('npsn')->nullable()->unique();
            $table->string('status')->nullable(); // Negeri / Swasta
            $table->string('jenjang')->nullable(); // SMK / SMA / dll

            // Kontak dan Alamat
            $table->text('alamat')->nullable();
            $table->string('email_sekolah')->nullable();
            $table->string('telepon')->nullable();

            // Media
            $table->string('logo')->nullable();
            $table->string('ikon')->nullable();
            $table->string('gambar_unggulan')->nullable();
            $table->string('gambar_unggulan_2')->nullable();
            $table->string('gambar_unggulan_3')->nullable();
            $table->string('banner')->nullable();

            // Kepala Sekolah
            $table->string('kepala_sekolah')->nullable();
            $table->string('nip_kepala_sekolah')->nullable();
            $table->string('website')->nullable();

            // Profil Singkat
            $table->text('deskripsi_singkat')->nullable();
            $table->text('visi')->nullable();
            $table->text('misi')->nullable();

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('data_sekolah');
    }
};
