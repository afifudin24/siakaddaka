<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Staff\StaffDashboardController;
use App\Http\Controllers\Staff\StaffTagihanController;
use App\Http\Controllers\Staff\StaffJenisTagihanController;
use App\Http\Controllers\Staff\StaffPembayaranController;
use App\Http\Controllers\Staff\StaffKasKeluarController;
use App\Http\Controllers\Staff\StaffLaporanKeuanganController;
use App\Models\Staff;

Route::middleware(['auth', 'role:staff'])
    ->name('staff.')
    ->group(function () {
        // dashboard
        Route::get('dashboard', [StaffDashboardController::class, 'index'])
            ->name('dashboard');
            // routes/web.php atau api.php
Route::get('/dashboard/keuangan/pemasukan-per-jenis', 
    [StaffDashboardController::class, 'pemasukanPerJenis']
);
Route::get(
    '/dashboard/chart-pemasukan-pengeluaran',
    [StaffDashboardController::class, 'chartPemasukanPengeluaran']
)->name('dashboard.chart.pemasukan-pengeluaran');


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
        Route::get(
            '/tagihan/cetak/{tagihan}',
            [StaffTagihanController::class, 'cetakTagihan']
        )->name('tagihan.cetak');
        Route::get('/tagihan/aksi/cetakBySiswa/{siswaId}', [StaffTagihanController::class, 'cetakTagihanByIdSiswa'])
            ->name('tagihan.cetak.tagihan.bySiswa');
        Route::get('/tagihan/aksi/massal', [StaffTagihanController::class, 'massalForm'])
            ->name('tagihan.massal.form');

        Route::post('/tagihan/aksi/massal', [StaffTagihanController::class, 'massalStore'])
            ->name('tagihan.massal.store');
        Route::get('/cetakmassal/tagihan', [StaffTagihanController::class, 'cetakMassalForm'])->name('tagihan.cetak.massal.form');
        Route::get('/cetakmassal/tagihanpost', [StaffTagihanController::class, 'cetakMassalStore'])->name('tagihan.cetakMassalStore');
        Route::get('/tagihan/aksi/by-tahun-semester', [StaffTagihanController::class, 'getByTahunSemester']);


        // Pembayaran
        Route::post('/tagihan/pembayaran', [StaffPembayaranController::class, 'store'])->name('pembayaran.store');
        Route::get(
            '/tagihan/pembayaran/cetak-riwayat/{tagihan}',
            [StaffPembayaranController::class, 'cetakRiwayatByTagihan']
        )->name('pembayaran.cetakRiwayatPembayaranByTagihan');
          Route::get('/cetakmassal/riwayatpembayaran', [StaffPembayaranController::class, 'cetakMassalForm'])->name('pembayaran.cetak.massal.form');
        Route::get('/cetakmassal/pemabayaranpost', [StaffPembayaranController::class, 'cetakRiwayatPembayaranMassal'])->name('pembayaran.cetakMassalStore');

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

        // laporan keuangan
        Route::get('/laporankeuangan', [StaffLaporanKeuanganController::class, 'index'])->name('laporankeuangan.index');
        Route::get('/laporankeuangan/tambah', [StaffLaporanKeuanganController::class, 'tambahLaporanKeuangan'])->name('laporankeuangan.tambah');
        Route::post('/laporankeuangan/generate', [StaffLaporanKeuanganController::class, 'generateLaporanKeuangan'])->name('laporankeuangan.generate');
        Route::get(
    '/laporankeuangan/cetak/{id}',
    [StaffLaporanKeuanganController::class, 'cetak']
)->name('staff.laporankeuangan.cetak');
Route::post(
    '/laporankeuangan/aksi/rekap',
    [StaffLaporanKeuanganController::class, 'rekap']
)->name('laporankeuangan.rekap');

Route::get(
    '/laporankeuangan/export/{id}',
    [StaffLaporanKeuanganController::class, 'cetakExcel']
)->name('laporankeuangan.export');
// web.php
Route::delete(
    '/laporankeuangan/{id}/hapus',
    [StaffLaporanKeuanganController::class, 'hapus']
)->name('laporankeuangan.hapus');




    }); 
