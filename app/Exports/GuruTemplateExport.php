<?php

namespace App\Exports;

use Maatwebsite\Excel\Concerns\{
    FromCollection,
    WithHeadings,
    WithStyles,
    WithColumnWidths
};
use PhpOffice\PhpSpreadsheet\Worksheet\Worksheet;
use Illuminate\Support\Collection;

class GuruTemplateExport implements FromCollection, WithHeadings, WithStyles, WithColumnWidths
{
    public function collection(): Collection
    {
        return collect([
            [
                'Budi Santoso',
                'budi@gmail.com',
                'budi.santoso',
                'password123',
                '081234567890',
                '1990-05-12',
            ]
        ]);
    }

    public function headings(): array
    {
        return [
            'Nama',
            'Email',
            'Username',
            'Password',
            'No HP',
            'Tanggal Lahir',
        ];
    }

    // Lebar kolom
    public function columnWidths(): array
    {
        return [
            'A' => 22,
            'B' => 30,
            'C' => 22,
            'D' => 18,
            'E' => 18,
            'F' => 18,
        ];
    }

    public function styles(Worksheet $sheet)
    {
        return [
            // Header
            1 => [
                'font' => [
                    'bold' => true,
                    'color' => ['rgb' => 'FFFFFF'],
                    'size' => 12,
                ],
                'alignment' => [
                    'horizontal' => 'center',
                    'vertical' => 'center',
                ],
                'fill' => [
                    'fillType' => 'solid',
                    'startColor' => ['rgb' => '27AE60'], // hijau
                ],
            ],
        ];
    }
}