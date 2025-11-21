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
        Schema::create('agenda', function (Blueprint $table) {
            $table->id();
            $table->string('judul'); // Judul kegiatan
            $table->text('deskripsi')->nullable(); // Deskripsi kegiatan
            $table->date('tgl_mulai'); // Tanggal mulai kegiatan
            $table->date('tgl_selesai')->nullable(); // Tanggal selesai, opsional
            $table->time('waktu_mulai')->nullable(); // Jam mulai kegiatan
            $table->time('waktu_selesai')->nullable(); // Jam selesai kegiatan
            $table->string('lokasi')->nullable(); // Lokasi kegiatan
            $table->enum('status', ['terjadwal', 'selesai', 'batal'])->default('terjadwal');
            $table->timestamps();
        });
    }


    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('agenda');
    }
};
