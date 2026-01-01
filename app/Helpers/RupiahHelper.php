<?php

if (!function_exists('rupiah')) {
    function rupiah($angka, $prefix = 'Rp ')
    {
        if ($angka === null || $angka === '') {
            return $prefix . '0';
        }

        return $prefix . number_format((float) $angka, 0, ',', '.');
    }
}
