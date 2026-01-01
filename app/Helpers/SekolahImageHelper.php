<?php
if (!function_exists('sekolah_image')) {
    function sekolah_image(string $field, string $default)
    {
        $sekolah = \App\Models\DataSekolah::first();

        if (!$sekolah || empty($sekolah->$field) || $sekolah->$field === 'default.png') {
            return asset($default);
        }

        return asset('storage/' . $sekolah->$field);
    }
}
