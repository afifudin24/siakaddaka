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
      Schema::create('nilai_pkl_detail', function (Blueprint $table) {
    $table->id();

    $table->foreignId('nilai_pkl_id')
        ->constrained('nilai_pkl')
        ->cascadeOnDelete();

    $table->foreignId('kriteria_nilai_pkl_id')
        ->constrained('kriteria_nilai_pkl')
        ->cascadeOnDelete();

    $table->decimal('nilai', 5, 2);

    $table->timestamps();
});

    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('nilai_pkl_detail');
    }
};
