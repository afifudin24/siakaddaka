<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Staff\StaffDashboardController;
use App\Http\Controllers\Staff\StaffTagihanController;
use App\Http\Controllers\Staff\StaffJenisTagihanController;

Route::middleware(['auth', 'role:staff'])
    ->name('staff.')
    ->group(function () {
        // dashboard
        Route::get('dashboard', [StaffDashboardController::class, 'index'])
            ->name('dashboard');
        // Jenis Tagihan
        Route::resource('/jenistagihan', StaffJenisTagihanController::class);
        Route::patch('/jenistagihan/{id}/toggle', 
    [StaffJenisTagihanController::class, 'toggleStatus']
)->name('jenistagihan.toggle');

        // Tagihan
        Route::resource('/tagihan', StaffTagihanController::class);
        Route::get('/tagihan/tampilkantagihan/{id}', 
    [StaffTagihanController::class, 'tampilkanTagihan']
)->name('tagihan.tampilkantagihan');

    });
