<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    public function up(): void
    {
        Schema::create('pengumuman_target', function (Blueprint $table) {
            $table->id();

            $table->foreignId('pengumuman_id')
                  ->constrained('pengumuman')
                  ->cascadeOnDelete();

            $table->enum('target_type', ['all', 'role', 'user']);
            $table->unsignedBigInteger('target_id')->nullable();

            $table->timestamps();

            // optional index untuk performa
            $table->index(['target_type', 'target_id']);
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('pengumuman_target');
    }
};