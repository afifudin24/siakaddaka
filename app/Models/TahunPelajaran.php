<?php
namespace App\Models;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
class TahunPelajaran extends Model
{
    use HasFactory;
    protected $table = 'tahun_pelajaran';
    protected $fillable = [
        'nama',
        'is_active',
    ];
    public function semesters()
    {
        return $this->hasOne(Semester::class);
    }
    public function tagihan()
    {
        return $this->hasMany(Tagihan::class);
    }
     
    public function panitiaPKL()
{
    return $this->hasMany(PanitiaPKL::class);
}
public function pesertaPKL()
{
    return $this->hasMany(PesertaPKL::class);
}
public function agendaMonitoringPKL()
{
    return $this->hasMany(AgendaMonitoringPKL::class);
}
}