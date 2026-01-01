<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Admin\AdminDashboardController;
use App\Http\Controllers\Admin\AdminTahunPelajaranController;
use App\Http\Controllers\Admin\AdminSemesterController;
use App\Http\Controllers\Admin\AdminKelasController;
use App\Http\Controllers\Admin\AdminJurusanController;
use App\Http\Controllers\Admin\AdminMapelController;
use App\Http\Controllers\Admin\AdminKategoriMapelController;
use App\Http\Controllers\Admin\AdminGuruController;
use App\Http\Controllers\Admin\AdminSiswaController;
use App\Http\Controllers\Admin\AdminDataSekolahController;



Route::middleware(['auth', 'role:admin'])
    ->name('admin.')
    ->group(function () {
        // dashboard
        Route::get('dashboard', [AdminDashboardController::class, 'index'])
            ->name('dashboard');
        // Tambahkan route lain khusus admin
        // Route::resource('/users', \App\Http\Controllers\Admin\UserController::class);

        // Tahun Pelajaran
        Route::resource('/tahun-pelajaran', AdminTahunPelajaranController::class);
        Route::delete('/tahunpelajaran/massdelete', [AdminTahunPelajaranController::class, 'massdelete'])
    ->name('tahunpelajaran.massdelete');

    // Semester
    Route::resource('/semester', AdminSemesterController::class);

    // Kelas
    Route::resource('/kelas', AdminKelasController::class);
        Route::delete('/kelas/massdelete', [AdminTahunPelajaranController::class, 'massdelete'])
    ->name('kelas.massdelete');

    // Jurusan
    Route::resource('/jurusan', AdminJurusanController::class);
    // Mapel
    Route::resource('/mapel', AdminMapelController::class);
    // Kategori Mapel
    Route::resource('/kategori-mapel', AdminKategoriMapelController::class);
    // guru
    Route::resource('/guru', AdminGuruController::class);
       Route::get('/guru/aksi/importview', [AdminGuruController::class, 'importView'])->name('guru.importview');
     Route::get('/guru/aksi/template', [AdminGuruController::class, 'downloadTemplate'])->name('guru.template');
      Route::post('/guru/aksi/import', [AdminGuruController::class, 'importGuru'])->name('guru.import');
       Route::post('/guru/aksi/preview', [AdminSiswaController::class, 'previewExcel'])->name('admin.guru.preview');
       Route::post('/guru/aksi/hapus', [AdminGuruController::class, 'hapus'])->name('guru.hapus');
       Route::post('/guru/aksi/{id}/fotoprofil', [AdminGuruController::class, 'updateFotoProfil'])->name('guru.updateFotoProfil');
       Route::post('/guru/aksi/{id}/foto-unggulan',[AdminGuruController::class, 'updateFotoUnggulan'])->name('guru.updateFotoUnggulan');
       Route::post('/guru/aksi/{id}/update-password',[AdminGuruController::class, 'updatePassword'])->name('guru.updatePassword');
       Route::post('/guru/aksi/{id}/hapus-foto', [AdminGuruController::class, 'hapusFoto'])->name('guru.hapusFoto');
       Route::get('/guru/aksi/{id}/editJabatan', [AdminGuruController::class, 'editJabatanView'])->name('guru.editJabatan');


    // siswa
    // Route::post('/siswa/aksi/massaction', [AdminSiswaController::class, 'massaction'])->name('siswa.massaction');
    Route::post('/siswa/aksi/preview', [AdminSiswaController::class, 'previewExcel'])->name('admin.siswa.preview');
    Route::delete('/siswa/aksi/massdelete', [AdminSiswaController::class, 'massdelete'])->name('siswa.massdelete');
    Route::get('/siswa/aksi/importview', [AdminSiswaController::class, 'importView'])->name('siswa.importview');
    Route::post('/siswa/aksi/massleave', [AdminSiswaController::class, 'massleave'])->name('siswa.massleave');
    Route::get('/siswa/aksi/template', [AdminSiswaController::class, 'downloadTemplate'])->name('siswa.template');
    Route::post('/siswa/aksi/import', [AdminSiswaController::class, 'importExcel'])->name('siswa.import');
    Route::resource('/siswa', AdminSiswaController::class);

    // Data Sekolah
    Route::get('/datasekolah', [AdminDataSekolahController::class, 'index'])->name('datasekolah.index');
    Route::post('/datasekolah/updateImage', [AdminDataSekolahController::class, 'updateImage'])->name('datasekolah.updateImage');
    Route::post('/datasekolah/update', [AdminDataSekolahController::class, 'update'])->name('datasekolah.update');    
    });
