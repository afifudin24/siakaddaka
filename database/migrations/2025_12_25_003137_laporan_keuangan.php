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
       Schema::create('laporan_keuangan', function (Blueprint $table) {
    $table->id();
    $table->date('tanggal_mulai')->nullable();
    $table->date('tanggal_selesai')->nullable();
    $table->foreignId('semester_id');
    $table->foreignId('tahun_pelajaran_id');
    $table->tinyInteger('status_rekap')->default(0); // 0 = belum, 1 = sudah
    $table->timestamps();
});
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('laporan_keuangan');
    }
};
