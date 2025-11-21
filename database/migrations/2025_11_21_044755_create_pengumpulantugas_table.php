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
        Schema::create('pengumpulan_tugas', function (Blueprint $table) {
            $table->id();

            // Relasi ke tugas
            $table->foreignId('tugas_id')
                  ->constrained('tugas')
                  ->onDelete('cascade');

            // Relasi ke siswa
            $table->foreignId('siswa_id')
                  ->constrained('siswa')
                  ->onDelete('cascade');

            $table->string('file')->nullable();
            $table->text('jawaban_teks')->nullable();
            $table->integer('nilai')->nullable();
            $table->text('komentar')->nullable();
            $table->enum('status', ['belum', 'terkirim', 'dinilai'])->default('belum');

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('pengumpulantugas');
    }
};
