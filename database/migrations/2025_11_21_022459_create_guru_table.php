<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
   public function up()
{
    Schema::create('guru', function (Blueprint $table) {
        $table->id();
          $table->foreignId('user_id')
              ->constrained('users')
              ->onDelete('cascade'); 
        $table->string('nama');
        $table->string('bio')->nullable();
        $table->string('nip')->unique()->nullable();     // NIP bisa kosong (honorer)
        $table->string('nuptk')->unique()->nullable();   // opsional
        $table->string('email')->unique();
        $table->enum('jenis_kelamin', ['L', 'P'])->nullable();
        $table->string('no_hp')->nullable();
        $table->date('tgl_lahir')->nullable();

        $table->string('alamat')->nullable();

        $table->timestamps();
    });
}

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('guru');
    }
};
