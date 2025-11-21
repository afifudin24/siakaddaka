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
        Schema::create('status_notifikasi', function (Blueprint $table) {
            $table->id(); // id
            $table->string('status'); // status, contoh: 'Berhasil', 'Gagal'
            $table->string('icon')->nullable(); // icon, contoh: 'check', 'times'
            $table->string('color')->nullable(); // warna, contoh: 'green', 'red'
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('status_notifikasi');
    }
};
