<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up()
{
    Schema::create('siswa', function (Blueprint $table) {
        $table->id();
          $table->foreignId('user_id')
              ->constrained('users')
              ->onDelete('cascade'); 
        $table->string('nama');
        $table->string('nis')->unique();      // Nomor induk sekolah
        $table->string('nisn')->unique();     // Nomor induk siswa nasional

        $table->date('tgl_lahir')->nullable(); // Tanggal lahir
        
        $table->string('no_hp')->nullable();   // Nomor HP siswa
        $table->string('no_hp_ortu')->nullable(); // Nomor HP orang tua

        $table->string('alamat')->nullable();
        $table->string('jenis_kelamin')->enum('L', 'P')->nullable()->default('L');

        // Relasi ke tabel kelas
        $table->foreignId('kelas_id')
              ->nullable()
              ->constrained('kelas')
              ->onDelete('set null');

        $table->timestamps();
    });
}

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('siswa');
    }
};
