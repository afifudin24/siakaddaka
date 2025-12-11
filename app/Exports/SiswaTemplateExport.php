<?php

namespace App\Exports;

use Illuminate\Support\Collection;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\WithStyles;
use PhpOffice\PhpSpreadsheet\Worksheet\Worksheet;
use PhpOffice\PhpSpreadsheet\Style\Fill;
use PhpOffice\PhpSpreadsheet\Style\Border;

class SiswaTemplateExport implements FromCollection, WithHeadings, WithStyles
{
    public function headings(): array
    {
        return [
            'Nama Lengkap',
            'NIS',
            'NISN',
            'Jenis Kelamin (L/P)',
            'Tanggal Lahir (YYYY-MM-DD)',
            'No HP',
            'No HP Ortu',
            'Alamat',
            'Username',
            'Password'
        ];
    }

    public function collection()
    {
        return new Collection([
            [
                'Contoh: Budi Setiawan',
                '2200456',
                '0067891234',
                'L',
                '2006-09-12',
                '081234567890',
                '081234567891',
                'Contoh alamat siswa...',
                'budi2200456',
                'password123'
            ]
        ]);
    }

    public function styles(Worksheet $sheet)
    {
        // Style Header
        $sheet->getStyle('A1:J1')->applyFromArray([
            'font' => [
                'bold' => true,
                'color' => ['rgb' => 'FFFFFF'],
                'size' => 12
            ],
            'fill' => [
                'fillType' => Fill::FILL_SOLID,
                'color' => ['rgb' => '059669'] // Biru lebih tegas
            ],
        ]);

        // Border seluruh tabel (header + row contoh)
        $sheet->getStyle('A1:J2')->applyFromArray([
            'borders' => [
                'allBorders' => [
                    'borderStyle' => Border::BORDER_THIN,
                    'color' => ['rgb' => '444444']
                ]
            ]
        ]);

        // Auto size kolom
        foreach (range('A', 'J') as $col) {
            $sheet->getColumnDimension($col)->setAutoSize(true);
        }

        return [];
    }
}
