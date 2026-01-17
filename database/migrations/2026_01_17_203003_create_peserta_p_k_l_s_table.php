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
       Schema::create('peserta_pkl', function (Blueprint $table) {
    $table->id();

    $table->foreignId('siswa_id')
        ->constrained('siswa')
        ->cascadeOnDelete();

    $table->foreignId('dudi_id')
        ->constrained('dudi')
        ->cascadeOnDelete();

    $table->enum('status', ['aktif', 'selesai', 'batal'])->default('aktif');

    $table->timestamps();
});

    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('peserta_p_k_l_s');
    }
};
