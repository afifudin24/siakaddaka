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
      Schema::create('pembayaran', function (Blueprint $table) {
    $table->id();
    $table->foreignId('tagihan_id')->constrained('tagihan')->onDelete('cascade');
    $table->decimal('jumlah_bayar', 12, 2);
    $table->date('tgl_bayar');
    $table->string('keterangan')->nullable(); // contoh: Cicilan 1, Cicilan 2
    $table->timestamps();
});
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('pembayaran');
    }
};
