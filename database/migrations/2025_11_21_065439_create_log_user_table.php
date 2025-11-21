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
        Schema::create('log_user', function (Blueprint $table) {
            $table->id();
            $table->foreignId('user_id')->constrained()->onDelete('cascade'); // user terkait
            $table->string('action'); // aksi, misal 'login', 'logout', 'update'
            $table->text('description')->nullable(); // deskripsi detail aktivitas
            $table->string('ip_address')->nullable(); // IP user
            $table->string('user_agent')->nullable(); // browser/device
            $table->timestamps(); // created_at & updated_at
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('log_user');
    }
};
