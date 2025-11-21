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
        Schema::create('ejurnal', function (Blueprint $table) {
            $table->id();

            // Relasi ke data_mengajar
            $table->foreignId('mengajar_id')
                  ->constrained('data_mengajar')
                  ->onDelete('cascade');

            $table->date('tgl_jurnal');       // tanggal jurnal
            $table->text('pembahasan')->nullable(); // materi/pembahasan
            $table->integer('jml_hadir')->default(0);
            $table->integer('jml_izin')->default(0);
            $table->integer('jml_sakit')->default(0);
            $table->integer('jml_alfa')->default(0);

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('ejurnal');
    }
};
