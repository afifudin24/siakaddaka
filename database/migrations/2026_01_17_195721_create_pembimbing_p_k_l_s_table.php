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
       Schema::create('pembimbing_pkl', function (Blueprint $table) {
    $table->id();

    $table->foreignId('guru_id')
        ->constrained('guru')
        ->cascadeOnDelete();

    $table->foreignId('tahun_pelajaran_id')
        ->constrained('tahun_pelajaran')
        ->cascadeOnDelete();

    $table->string('status')->default('aktif'); // aktif / nonaktif

    $table->timestamps();

    // 1 guru hanya boleh 1 pembimbing per tahun
    $table->unique(['guru_id', 'tahun_pelajaran_id']);
});

    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('pembimbing_p_k_l_s');
    }
};
