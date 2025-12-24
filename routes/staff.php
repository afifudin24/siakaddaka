<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Staff\StaffDashboardController;
use App\Http\Controllers\Staff\StaffTagihanController;
use App\Http\Controllers\Staff\StaffJenisTagihanController;
use App\Http\Controllers\Staff\StaffPembayaranController;
use App\Http\Controllers\Staff\StaffKasKeluarController;
use App\Models\Staff;

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
    Route::get('/tagihan/aksi/massal', [StaffTagihanController::class, 'massalForm'])
    ->name('tagihan.massal.form');

Route::post('/tagihan/aksi/massal', [StaffTagihanController::class, 'massalStore'])
    ->name('tagihan.massal.store');
    Route::get('/tagihan/aksi/cetakmassal', [StaffTagihanController::class, 'cetakMassalForm'])->name('tagihan.cetak.massal.form');
    Route::post('/tagihan/aksi/cetakmassalstore', [StaffTagihanController::class, 'cetakMassalStore'])->name('tagihan.cetakMassalStore');

        // Pembayaran
        Route::post('/tagihan/pembayaran', [StaffPembayaranController::class, 'store'])->name('pembayaran.store');
        Route::get(
    '/tagihan/pembayaran/cetak-riwayat/{tagihan}',
    [StaffPembayaranController::class, 'cetakRiwayatByTagihan']
)->name('pembayaran.cetakRiwayatPembayaranByTagihan');

// Get Semester
Route::get('/semester/by-tahun/{tahun}', function ($tahun) {
    return \App\Models\Semester::where('tahun_pelajaran_id', $tahun)
        ->orderBy('nama')
        ->get();
})->name('staff.semester.byTahun');

// Kas keluar
Route::resource('/kaskeluar', StaffKasKeluarController::class);

Route::get('/kaskeluar/aksi/cetak', [StaffKasKeluarController::class, 'cetak'])
    ->name('kaskeluar.cetak');

    });
