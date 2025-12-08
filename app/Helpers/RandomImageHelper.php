<?php

if (!function_exists('random_featured_image')) {

    function random_featured_image()
    {
        // total gambar
        $max = 5;

        // random angka 1–5
        $num = rand(1, $max);

        // return filename
        return "featured-image-$num.png";
    }
}
