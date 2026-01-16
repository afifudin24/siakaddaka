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
       Schema::create('jam_pelajaran', function (Blueprint $table) {
    $table->id();
    // relasi ke hari id
    $table->foreignId('hari_id')->constrained('hari_aktif')->onDelete('cascade');
    $table->integer('jam_ke');
    $table->time('mulai');
    $table->time('selesai');
    $table->timestamps();
});
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('jam_pelajaran');
    }
};
