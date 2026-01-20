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
        Schema::create('agenda_monitoring_pkls', function (Blueprint $table) {
            $table->id();

            $table->string('nama_agenda');
            $table->date('tanggal_mulai');
            $table->date('tanggal_selesai');
            $table->text('catatan')->nullable();

            $table->foreignId('tahun_pelajaran_id')
                  ->constrained('tahun_pelajaran')
                  ->cascadeOnDelete();

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('agenda_monitoring_pkls');
    }
};
