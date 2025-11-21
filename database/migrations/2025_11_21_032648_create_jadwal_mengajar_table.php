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
        Schema::create('jadwal_mengajar', function (Blueprint $table) {
            $table->id();

            // Relasi ke data mengajar
            $table->foreignId('data_mengajar_id')
                  ->constrained('data_mengajar')
                  ->onDelete('cascade');

            // Relasi ke jam mengajar (mulai)
            $table->foreignId('jam_mulai_id')
                  ->constrained('jam_mengajar')
                  ->onDelete('cascade');

            // Relasi ke jam mengajar (selesai)
            $table->foreignId('jam_selesai_id')
                  ->constrained('jam_mengajar')
                  ->onDelete('cascade');

            $table->timestamps();
        });
    }
    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('jadwal_mengajar');
    }
};
