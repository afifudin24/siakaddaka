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
     Schema::create('tagihan', function (Blueprint $table) {
    $table->id();
    $table->foreignId('siswa_id')->constrained('siswa')->onDelete('cascade');
    $table->string('nama_tagihan');
   $table->foreignId('jenis_tagihan_id')
      ->constrained('jenis_tagihan')
      ->cascadeOnDelete();

    $table->decimal('jumlah', 12, 2); 
    $table->date('tgl_tagihan');
    $table->enum('status', ['belum_lunas','lunas'])->default('belum_lunas');
    $table->timestamps();
});
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('keuangan');
    }
};
