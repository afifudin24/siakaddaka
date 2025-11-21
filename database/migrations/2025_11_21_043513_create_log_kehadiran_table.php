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
        Schema::create('log_kehadiran', function (Blueprint $table) {
            $table->id();

            // Relasi ke data_mengajar
            $table->foreignId('mengajar_id')
                  ->constrained('data_mengajar')
                  ->onDelete('cascade');

            // Relasi ke siswa
            $table->foreignId('siswa_id')
                  ->constrained('siswa')
                  ->onDelete('cascade');

            $table->integer('pertemuan_ke');      // pertemuan ke-n
            $table->date('tgl_kehadiran');        // tanggal kehadiran
            $table->enum('status_kehadiran', ['H', 'I', 'S', 'A'])->default('H'); // Hadir, Izin, Sakit, Alfa

            $table->timestamps();
        });
    }


    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('log_kehadiran');
    }
};
