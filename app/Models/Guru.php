<?php
namespace App\Models;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
class Guru extends Model
{
    use HasFactory;
    // Nama tabel (opsional)
    protected $table = 'guru';
    // Kolom yang dapat diisi
    protected $fillable = [
        'user_id',
        'nama',
        'bio',
        'nip',
        'nuptk',
        'jenis_kelamin',
        'email',
        'no_hp',
        'tgl_lahir',
        'alamat',
    ];
    /**
     * Relasi ke User
     * Satu guru dimiliki oleh satu user
     */
    public function user()
    {
        return $this->belongsTo(User::class);
    }
    public function dataMengajar()
    {
        return $this->hasMany(DataMengajar::class, 'guru_id');
    }
    public function walikelas(){
        return $this->hasOne(WaliKelas::class, 'guru_id');
    }
    public function wakaKesiswaan(){
        return $this->hasOne(WakaKesiswaan::class, 'guru_id');
    }
    public function wakaKurikulum(){
        return $this->hasOne(WakaKurikulum::class, 'guru_id');
    }
    public function panitiaPKL()
{
        return $this->hasMany(PanitiaPKL::class, 'guru_id');
    }
    public function pembimbingPKL()
    {
        return $this->hasMany(PembimbingPKL::class, 'guru_id');
    }
}