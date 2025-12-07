<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Admin\AdminDashboardController;
use App\Http\Controllers\Admin\AdminTahunPelajaranController;
use App\Http\Controllers\Admin\AdminSemesterController;
use App\Http\Controllers\Admin\AdminKelasController;
use App\Http\Controllers\Admin\AdminJurusanController;


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

    });
