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
    Schema::create('backups', function (Blueprint $table) {
        $table->id();

        // nama file backup
        $table->string('file_name');

        // path file (storage/app/backup/xxx.sql)
        $table->string('file_path');

        // ukuran file (optional tapi berguna)
        $table->bigInteger('file_size')->nullable();

    
        // status backup
        $table->enum('status', ['success', 'failed'])
              ->default('success');

        // keterangan tambahan
        $table->text('note')->nullable();

        $table->timestamps();
    });
}


    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('backups');
    }
};
