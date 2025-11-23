<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Guru\GuruDashboardController;

Route::middleware(['auth', 'role:guru'])
    ->prefix('guru')
    ->name('guru.')
    ->group(function () {

        Route::get('/dashboard', [DashboardGuruController::class, 'index'])
            ->name('dashboard');

    }); 
