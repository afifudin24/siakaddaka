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
use App\Http\Controllers\Admin\AdminStaffController;
use App\Http\Controllers\Admin\AdminDataSekolahController;
use App\Http\Controllers\Admin\AdminUserController;
use App\Http\Controllers\Admin\AdminDataMengajarController;
use App\Http\Controllers\Admin\AdminPengumumanController;
use App\Http\Controllers\Admin\AdminHariAktifController;
use App\Http\Controllers\Admin\AdminJamPelajaranController;
use App\Http\Controllers\Admin\AdminJadwalMengajarController;
use App\Http\Controllers\Admin\AdminBackupController;
use App\Http\Controllers\Admin\AdminPanitiaPKLController;
use App\Http\Controllers\Admin\AdminPembimbingPKLController;




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
       Route::get('/guru/aksi/{id}/editDataMengajar', [AdminGuruController::class, 'editDataMengajarView'])->name('guru.editDataMengajar');


    // siswa
    // Route::post('/siswa/aksi/massaction', [AdminSiswaController::class, 'massaction'])->name('siswa.massaction');
    Route::post('/siswa/aksi/preview', [AdminSiswaController::class, 'previewExcel'])->name('admin.siswa.preview');
    Route::delete('/siswa/aksi/massdelete', [AdminSiswaController::class, 'massdelete'])->name('siswa.massdelete');
    Route::get('/siswa/aksi/importview', [AdminSiswaController::class, 'importView'])->name('siswa.importview');
    Route::post('/siswa/aksi/massleave', [AdminSiswaController::class, 'massleave'])->name('siswa.massleave');
    Route::get('/siswa/aksi/template', [AdminSiswaController::class, 'downloadTemplate'])->name('siswa.template');
    Route::get('/siswa/import/progress/{key}', [AdminSiswaController::class, 'importProgress']);
    Route::post('/siswa/import/process', [AdminSiswaController::class, 'processChunk']);

    Route::post('/siswa/aksi/import', [AdminSiswaController::class, 'importExcel'])->name('siswa.import');
    Route::resource('/siswa', AdminSiswaController::class);
    Route::delete('/siswa/aksi/hapus/{id}', [AdminSiswaController::class, 'destroy'])->name('siswa.destroy');

      Route::post('/siswa/aksi/{id}/fotoprofil', [AdminSiswaController::class, 'updateFotoProfil'])->name('siswa.updateFotoProfil');
       Route::post('/siswa/aksi/{id}/foto-unggulan',[AdminSiswaController::class, 'updateFotoUnggulan'])->name('siswa.updateFotoUnggulan');
       Route::post('/siswa/aksi/{id}/update-password',[AdminSiswaController::class, 'updatePassword'])->name('siswa.updatePassword');
       Route::post('/siswa/aksi/{id}/hapus-foto', [AdminSiswaController::class, 'hapusFoto'])->name('siswa.hapusFoto');

    // Staff
        Route::resource('/staff', AdminStaffController::class);
           Route::post('/staff/aksi/{id}/fotoprofil', [AdminStaffController::class, 'updateFotoProfil'])->name('staff.updateFotoProfil');
       Route::post('/staff/aksi/{id}/foto-unggulan',[AdminStaffController::class, 'updateFotoUnggulan'])->name('staff.updateFotoUnggulan');
       Route::post('/staff/aksi/{id}/update-password',[AdminStaffController::class, 'updatePassword'])->name('staff.updatePassword');
       Route::post('/staff/aksi/{id}/hapus-foto', [AdminStaffController::class, 'hapusFoto'])->name('staff.hapusFoto');


    // Data Sekolah
    Route::get('/datasekolah', [AdminDataSekolahController::class, 'index'])->name('datasekolah.index');
    Route::post('/datasekolah/updateImage', [AdminDataSekolahController::class, 'updateImage'])->name('datasekolah.updateImage');
    Route::post('/datasekolah/update', [AdminDataSekolahController::class, 'update'])->name('datasekolah.update');    

    // User
    Route::get('/users/admin', [AdminUserController::class, 'admin'])->name('users.admin');
    Route::post('/users/admin/aktifkansemua', [AdminUserController::class, 'aktifkanSemuaAdmin'])->name('users.admin.aktifkansemua');
    Route::post('/users/admin/nonaktifkansemua', [AdminUserController::class, 'nonaktifkanSemuaAdmin'])->name('users.admin.nonaktifkansemua');

     Route::get('/users/siswa', [AdminUserController::class, 'siswa'])->name('users.admin');
    Route::post('/users/siswa/aktifkansemua', [AdminUserController::class, 'aktifkanSemuaSiswa'])->name('users.siswa.aktifkansemua');
    Route::post('/users/siswa/nonaktifkansemua', [AdminUserController::class, 'nonaktifkanSemuaSiswa'])->name('users.siswa.nonaktifkansemua');

       Route::get('/users/guru', [AdminUserController::class, 'guru'])->name('users.guru');
    Route::post('/users/guru/aktifkansemua', [AdminUserController::class, 'aktifkanSemuaGuru'])->name('users.guru.aktifkansemua');
    Route::post('/users/guru/nonaktifkansemua', [AdminUserController::class, 'nonaktifkanSemuaGuru'])->name('users.guru.nonaktifkansemua');

      Route::get('/users/staff', [AdminUserController::class, 'staff'])->name('users.staff');
    Route::post('/users/staff/aktifkansemua', [AdminUserController::class, 'aktifkanSemuaStaff'])->name('users.staff.aktifkansemua');
    Route::post('/users/staff/nonaktifkansemua', [AdminUserController::class, 'nonaktifkanSemuaStaff'])->name('users.staff.nonaktifkansemua');

    Route::post('/users/{id}/togglestatus', [AdminUserController::class, 'toggleStatus'])->name('users.toggleStatus');

    Route::delete('/users/{id}', [AdminUserController::class, 'destroy'])->name('users.destroy');

    // Data Mengajar
    Route::get('/guru/{id}/datamengajar', [AdminDataMengajarController::class, 'dataMengajarPerGuru'])->name('guru.datamengajar');
    Route::get('/datamengajar/kelas-by-mapel', [AdminDataMengajarController::class, 'kelasByMapel'])
->name('datamengajar.kelasByMapel');
    Route::post('/guru/{id}/datamengajar/update', [AdminDataMengajarController::class, 'update'])->name('guru.datamengajar.update');

    Route::resource('/datamengajar', AdminDataMengajarController::class);
    Route::put('/datamengajar/jammengajar/{id}', [AdminDataMengajarController::class, 'updateJamMengajar'])->name('datamengajar.updateJamMengajar');
Route::delete('/datamengajar/{id}', [AdminDataMengajarController::class, 'destroy']);



    // Pengumuman
    Route::resource('/pengumuman', AdminPengumumanController::class);
    Route::post('/pengumuman/{id}/toggle-status', 
    [AdminPengumumanController::class, 'toggleStatus']
)->name('pengumuman.toggle-status');
Route::delete('/admin/pengumuman/{id}', 
    [AdminPengumumanController::class, 'destroy']
)->name('pengumuman.destroy');

// Hari Aktif
    Route::get('/hariaktif', [AdminHariAktifController::class, 'index'])->name('hariaktif.index');
    Route::post('/hariaktif/update', [AdminHariAktifController::class, 'update'])->name('hariaktif.update');
    Route::post('/hariaktif/store', [AdminHariAktifController::class, 'store'])
    ->name('hari-aktif.store');
    Route::delete('/hariaktif/{id}', [AdminHariAktifController::class, 'destroy'])->name('hariaktif.destroy');
    // Jam Pelajaran
    Route::get('/jam-pelajaran/{hari}', [AdminJamPelajaranController::class, 'index']);
Route::post('/jam-pelajaran/{hari}', [AdminJamPelajaranController::class, 'store']);

        // Jadwal Mengajar
        Route::get('/jadwalmengajar', [AdminJadwalMengajarController::class, 'index']);
Route::post('/jadwalmengajar', [AdminJadwalMengajarController::class, 'store'])
    ->name('jadwal.store');

    // backup
    Route::get('/backup', [AdminBackupController::class, 'index'])->name('backup.index');
    Route::post('/backup', [AdminBackupController::class, 'backup'])->name('backup.backup');
    Route::post('/admin/backup', [AdminBackupController::class, 'store'])
    ->name('backup.store');
    Route::get('/backup/download/{file}', [AdminBackupController::class, 'download'])->name('backup.download');
    Route::delete('/backup/{backup}', [AdminBackupController::class, 'destroy'])
    ->name('backup.destroy');

    // Panitia PKL
    Route::get('/panitia-pkl', [AdminPanitiaPKLController::class, 'index'])->name('panitia-pkl.index');
    Route::post('/panitia-pkl', [AdminPanitiaPKLController::class, 'store'])->name('panitia-pkl.store');
Route::put('/panitia-pkl/{id}', [AdminPanitiaPKLController::class, 'update'])
    ->name('panitia-pkl.update');
    Route::delete('/panitia-pkl/{id}', [AdminPanitiaPKLController::class, 'destroy'])
    ->name('panitia-pkl.destroy');

    // Pembimbing PKL
    Route::get('/pembimbing-pkl', [AdminPembimbingPKLController::class, 'index'])->name('pembimbing-pkl.index');
    Route::get('/pembimbing-pkl/add', [AdminPembimbingPKLController::class, 'add'])->name('pembimbing-pkl.add');
    Route::post('/pembimbing-pkl', [AdminPembimbingPKLController::class, 'store'])->name('pembimbing-pkl.store');
Route::put('/pembimbing-pkl/{id}', [AdminPembimbingPKLController::class, 'update'])
    ->name('pembimbing-pkl.update');
    Route::delete('/pembimbing-pkl/{id}', [AdminPembimbingPKLController::class, 'destroy'])
    ->name('pembimbing-pkl.destroy');
    // routes/web.php
Route::post('/pembimbing-pkl/store-massal', [AdminPembimbingPKLController::class, 'storeMassal'])
    ->name('pembimbing-pkl.store-massal');

Route::post('/pembimbing-pkl/store-single', [AdminPembimbingPKLController::class, 'storeSingle'])
    ->name('pembimbing-pkl.store-single');



    });
