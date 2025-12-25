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
       // tabel laporan_detail
Schema::create('laporan_detail', function (Blueprint $table) {
    $table->id();
    $table->foreignId('laporan_id');
    $table->enum('jenis', ['pemasukan','pengeluaran']);
    $table->string('keterangan');
    $table->date('tanggal');
    $table->bigInteger('nominal');
    $table->timestamps();
});
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('laporan_keuangan_detail');
    }
};
