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
    Schema::create('users', function (Blueprint $table) {
        $table->id(); // id
        $table->string('username')->unique(); // username
        $table->string('nama'); // username
        $table->string('email')->unique(); // email
        $table->string('password'); // password
        $table->string('role')->default('siswa'); // role

        // foto profil
       $table->string('foto_profil')
      ->nullable()
      ->default('profile.png'); // default foto profil
       $table->string('foto_unggulan')
      ->nullable()
      ->default('profile.png'); // default foto profil

        // reset password token
        $table->string('reset_password_token')->nullable();

        $table->timestamps(); // created_at & updated_at
    });
}

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('users');
    }
};
