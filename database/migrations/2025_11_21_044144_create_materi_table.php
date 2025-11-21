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
       Schema::create('materi', function (Blueprint $table) {
    $table->id();
    
    $table->foreignId('mengajar_id')
          ->constrained('data_mengajar')
          ->onDelete('cascade');

    $table->string('judul');
    $table->text('deskripsi')->nullable();
    $table->string('file')->nullable();
    $table->date('tanggal');
    $table->enum('tipe', ['teks','file','video'])->default('teks');
    $table->enum('status', ['draft','publish'])->default('draft');

    $table->timestamps();
});
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('materi');
    }
};
