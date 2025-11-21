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
        Schema::create('waka_kesiswaan', function (Blueprint $table) {
            $table->id();

            // relasi ke guru
            $table->foreignId('guru_id')
                  ->constrained('guru')
                  ->onDelete('cascade');

            $table->timestamps();
        });
    }


    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('waka_kesiswaan');
    }
};
