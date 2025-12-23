<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Staff\StaffDashboardController;
use App\Http\Controllers\Staff\StaffTagihanController;
use App\Http\Controllers\Staff\StaffJenisTagihanController;
use App\Http\Controllers\Staff\StaffPembayaranController;

Route::middleware(['auth', 'role:staff'])
    ->name('staff.')
    ->group(function () {
        // dashboard
        Route::get('dashboard', [StaffDashboardController::class, 'index'])
            ->name('dashboard');
        // Jenis Tagihan
        Route::resource('/jenistagihan', StaffJenisTagihanController::class);
        Route::patch(
            '/jenistagihan/{id}/toggle',
            [StaffJenisTagihanController::class, 'toggleStatus']
        )->name('jenistagihan.toggle');

        // Tagihan
        Route::resource('/tagihan', StaffTagihanController::class);
        Route::get(
            '/tagihan/tampilkantagihan/{id}',
            [StaffTagihanController::class, 'tampilkanTagihan']
        )->name('tagihan.tampilkantagihan');
        Route::get(
            '/tagihan/detailTagihan/{id}',
            [StaffTagihanController::class, 'detailTagihan']
        )->name('tagihan.detailTagihan');
        Route::get('/tagihan/cetak/{tagihan}', 
    [StaffTagihanController::class, 'cetakTagihan'])
    ->name('tagihan.cetak');

        // Pembayaran
        Route::post('/tagihan/pembayaran', [StaffPembayaranController::class, 'store'])->name('pembayaran.store');
        Route::get(
    '/tagihan/pembayaran/cetak-riwayat/{tagihan}',
    [StaffPembayaranController::class, 'cetakRiwayatByTagihan']
)->name('pembayaran.cetakRiwayatPembayaranByTagihan');
    });
