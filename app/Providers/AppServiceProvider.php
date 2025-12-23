<?php

namespace App\Providers;
use App\Models\StatusNotifikasi;
use App\Models\User;
use App\Models\DataMengajar;
use App\Models\Ejurnal;
use App\Models\Mapel;
use App\Models\Materi;
use App\Observers\UserObserver;
use App\Observers\DataMengajarObserver;
use App\Observers\EjurnalObserver;
use App\Observers\MapelObserver;
use App\Observers\MateriObserver;
use App\Models\DataSekolah;
use Illuminate\Support\Facades\View;
use Illuminate\Pagination\Paginator;
use Carbon\Carbon;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }
    

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        // carbon
        Carbon::setLocale('id');
        //pagination
        Paginator::useBootstrap();
         User::observe(UserObserver::class);
         DataMengajar::observe(DataMengajarObserver::class);
         Ejurnal::observe(EjurnalObserver::class);
       Mapel::observe(MapelObserver::class);
         Materi::observe(MateriObserver::class);

        //  ambil title dan logo
        View::composer('*', function ($view) {
        $datasekolah = DataSekolah::first(); // misal table: pengaturan_umum
       
        $view->with([
            'site_title' => 'SIAKAD ' . $datasekolah->nama_singkatan ?? 'SIAKAD SMK',
            'favicon'    => $datasekolah->ikon,
        ]);
    });
    }
}
