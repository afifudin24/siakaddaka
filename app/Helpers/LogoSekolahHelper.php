<?php

use App\Models\DataSekolah;
use Illuminate\Support\Facades\Storage;

if (!function_exists('sekolah_logo')) {
    /**
     * Ambil logo sekolah (light / dark / icon)
     *
     * @param string $type  light|dark|icon
     * @param string $defaultAsset
     * @return string
     */
    function sekolah_logo(string $type = 'light', string $defaultAsset = '')
    {
        $sekolah = DataSekolah::first();

        if (!$sekolah) {
            return asset($defaultAsset);
        }

        // Tentukan field DB berdasarkan type
        $field = match ($type) {
            'dark' => 'logo_dark',
            'icon' => 'logo_icon',
            default => 'logo',
        };

        $logo = $sekolah->$field ?? null;

        // Jika tidak ada atau masih default
        if (
            empty($logo) ||
            $logo === 'default.png' ||
            !Storage::disk('public')->exists($logo)
        ) {
            return asset($defaultAsset);
        }

        return asset('storage/' . $logo);
    }
}
