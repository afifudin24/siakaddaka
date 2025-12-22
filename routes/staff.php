<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Staff\StaffDashboardController;
use App\Http\Controllers\Staff\StaffTagihanController;

Route::middleware(['auth', 'role:staff'])
    ->name('staff.')
    ->group(function () {
        // dashboard
        Route::get('dashboard', [StaffDashboardController::class, 'index'])
            ->name('dashboard');

        // Tagihan
        Route::resource('/tagihan', StaffTagihanController::class);

    });
