<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Guru\GuruDashboardController;

Route::middleware(['auth', 'role:guru'])
    ->name('guru.')
    ->group(function () {

        Route::get('/dashboard', [GuruDashboardController::class, 'index'])
            ->name('dashboard');

    }); 
