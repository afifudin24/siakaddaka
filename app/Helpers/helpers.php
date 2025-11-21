<?php

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
