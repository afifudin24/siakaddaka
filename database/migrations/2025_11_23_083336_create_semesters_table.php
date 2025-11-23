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
        Schema::create('semesters', function (Blueprint $table) {
            $table->id();

            // Relasi ke Tahun Pelajaran
            $table->foreignId('tahun_pelajaran_id')
                ->constrained('tahun_pelajaran')
                ->onDelete('cascade');

            // Nama semester: "Ganjil" / "Genap"
            $table->enum('nama', ['Ganjil', 'Genap']);

            // Tanggal berjalan
            $table->date('tanggal_mulai')->nullable();
            $table->date('tanggal_selesai')->nullable();

            // Status aktif
            $table->boolean('is_active')->default(false);

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('semesters');
    }
};
