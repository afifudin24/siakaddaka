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
        Schema::create('jam_mengajar', function (Blueprint $table) {
            $table->id();
            $table->integer('jam_ke');      // contoh: 1, 2, 3
            $table->string('pukul');         // contoh: 07:30 - 08:15
            $table->timestamps();
        });
    }


    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('jam_mengajar');
    }
};
