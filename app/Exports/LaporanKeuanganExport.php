<?php

namespace App\Exports;

use Maatwebsite\Excel\Concerns\FromArray;
use Maatwebsite\Excel\Concerns\WithHeadings;

class LaporanKeuanganExport implements FromArray, WithHeadings
{
    protected $laporan;

    public function __construct($laporan)
    {
        $this->laporan = $laporan;
    }

    public function headings(): array
    {
        return [
            'Tanggal',
            'Keterangan',
            'Jenis',
            'Nominal'
        ];
    }

    public function array(): array
    {
        return $this->laporan->detail->map(function ($d) {
            return [
                $d->tanggal,
                $d->keterangan,
                ucfirst($d->jenis),
                $d->nominal
            ];
        })->toArray();
    }
}
