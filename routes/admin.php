<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Admin\AdminDashboardController;
use App\Http\Controllers\Admin\AdminTahunPelajaranController;

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

    });
