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
       Schema::create('laporan_pkl', function (Blueprint $table) {
    $table->id();

    $table->foreignId('peserta_pkl_id')
        ->constrained('peserta_pkl')
        ->cascadeOnDelete();

    $table->string('file_laporan');
    $table->date('tanggal_upload');
    $table->enum('status', ['draft', 'dikumpulkan', 'disetujui'])->default('draft');

    $table->timestamps();
});

    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('laporan_pkl');
    }
};
