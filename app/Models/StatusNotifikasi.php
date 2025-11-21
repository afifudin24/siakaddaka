<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class StatusNotifikasi extends Model
{
    use HasFactory;

    protected $table = 'status_notifikasi';

    protected $fillable = [
        'status',
        'icon',
        'color',
    ];
}
