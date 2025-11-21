<?php

class Notifikasi extends Model
{
    use HasFactory;

    protected $fillable = [
        'user_id',
        'status_notifikasi_id',
        'title',
        'message',
        'url',
        'is_read',
        'read_at',
    ];

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function status()
    {
        return $this->belongsTo(StatusNotifikasi::class, 'status_notifikasi_id');
    }
}
