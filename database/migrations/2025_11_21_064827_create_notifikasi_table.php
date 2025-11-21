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
        Schema::create('notifikasi', function (Blueprint $table) {
            $table->id();
            $table->foreignId('user_id')->constrained()->onDelete('cascade');
            $table->foreignId('status_notifikasi_id')->constrained('status_notifikasi')->onDelete('cascade');
            $table->string('title'); // judul notifikasi
            $table->text('message')->nullable(); // isi pesan
            $table->string('url')->nullable(); // halaman tujuan ketika diklik
            $table->boolean('is_read')->default(false); // status dibaca
            $table->timestamp('read_at')->nullable(); // waktu dibaca
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('notifikasi');
    }
};
