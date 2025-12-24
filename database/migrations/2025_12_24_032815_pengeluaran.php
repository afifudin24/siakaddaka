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
        Schema::create('kaskeluar', function (Blueprint $table) {
            $table->id();

            $table->string('kode_pengeluaran')->unique();
            $table->date('tanggal');
            $table->string('kategori');
            $table->text('keterangan')->nullable();
            $table->decimal('jumlah', 15, 2);
            $table->foreignId('petugas_id')
                  ->constrained('staff')
                  ->cascadeOnDelete();

            $table->foreignId('semester_id')
                  ->constrained()
                  ->cascadeOnDelete();

            $table->foreignId('tahun_pelajaran_id')
                  ->constrained()
                  ->cascadeOnDelete();

            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('pengeluaran');
    }
};
