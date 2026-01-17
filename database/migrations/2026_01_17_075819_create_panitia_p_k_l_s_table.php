<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;


return new class extends Migration {
    public function up(): void
    {
        Schema::create('panitia_pkl', function (Blueprint $table) {
            $table->id();

            // relasi ke guru
            $table->unsignedBigInteger('guru_id');

            $table->string('jabatan')->nullable(); // ketua, sekretaris, anggota, dll
              // Relasi tahun pelajaran
            $table->unsignedBigInteger('tahun_pelajaran_id');
            $table->enum('status', ['aktif', 'nonaktif'])->default('aktif');

            $table->timestamps();

            // foreign key
            $table->foreign('guru_id')
                  ->references('id')
                  ->on('guru')
                  ->onDelete('cascade');
                      $table->foreign('tahun_pelajaran_id')
                  ->references('id')
                  ->on('tahun_pelajaran')
                  ->onDelete('cascade');
                    $table->unique(['guru_id', 'tahun_pelajaran_id']);
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('panitia_pkl');
    }
};