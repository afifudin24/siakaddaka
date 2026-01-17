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
       Schema::create('dudi', function (Blueprint $table) {
    $table->id();

    $table->foreignId('pembimbing_pkl_id')
        ->constrained('pembimbing_pkl')
        ->cascadeOnDelete();

    $table->string('nama_dudi');
    $table->string('bidang_usaha')->nullable();

    // ✅ TAMBAHAN
    $table->string('pimpinan_dudi')->nullable();
    $table->string('pembimbing_dudi')->nullable();

    $table->text('alamat')->nullable();
    $table->string('kontak')->nullable();

    $table->timestamps();
});

    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('dudis');
    }
};
