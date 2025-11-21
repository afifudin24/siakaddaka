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
        Schema::create('data_mengajar', function (Blueprint $table) {
            $table->id();

            // relasi guru
            $table->foreignId('guru_id')
                  ->constrained('guru')
                  ->onDelete('cascade');

            // relasi mapel
            $table->foreignId('mapel_id')
                  ->constrained('mapel')
                  ->onDelete('cascade');

            $table->integer('jam_mengajar');             // jumlah jam mengajar
            $table->integer('pertemuan_per_minggu');     // contoh: 2 kali per minggu

            $table->timestamps();
        });
    }


    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('data_mengajar');
    }
};
