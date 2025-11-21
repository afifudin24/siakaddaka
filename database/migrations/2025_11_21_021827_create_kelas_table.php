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
    Schema::create('kelas', function (Blueprint $table) {
        $table->id();
        $table->string('tingkat'); // contoh: XII RPL 1
        $table->string('nama_kelas'); // contoh: XII RPL 1

        // Relasi ke jurusan
        $table->foreignId('jurusan_id')
              ->constrained('jurusan')
              ->onDelete('cascade');

        $table->timestamps();
    });
}

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('kelas');
    }
};
