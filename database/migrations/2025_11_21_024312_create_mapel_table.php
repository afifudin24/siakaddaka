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
    Schema::create('mapel', function (Blueprint $table) {
        $table->id();
        $table->string('nama_mapel');

        // relasi ke kategori_mapel
        $table->foreignId('kategori_mapel_id')
              ->nullable()
              ->constrained('kategori_mapel')
              ->onDelete('set null');

        $table->timestamps();
    });
}


    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('mapel', function (Blueprint $table) {
            //
        });
    }
};
