<?php

use Carbon\Carbon;

if (!function_exists('randomAvatar')) {
    /**
     * Mengambil path avatar random
     *
     * @return string
     */
    function randomAvatar()
    {
        $number = rand(1, 10); // 1 sampai 10
        return asset("images/sm/avatar{$number}.jpg");
    }
}



if (!function_exists('tanggalIndo')) {
    function tanggalIndo($tanggal)
    {
        if (!$tanggal) return '-';

        return Carbon::parse($tanggal)->locale('id')->translatedFormat('d F Y');
    }
}
