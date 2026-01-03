<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <title>Cetak Laporan Keuangan</title>
    <style>
         body {
           font-family: DejaVu Sans, sans-serif;
            font-size: 12px;
            line-height: 1.5;
            margin: 20px 30px;
        }
       

        .kop {
            text-align: center;
          
            padding-bottom: 0px;
           
        }

        .kop h1 {
            margin: 0;
            font-size: 16pt;
            font-weight: bold;
            text-transform: uppercase;
        }

        .kop p {
            margin: 2px 0;
            font-size: 10.5pt;
        }
        .text-center { text-align: center; }
        .text-right { text-align: right; }
        .fw-bold { font-weight: bold; }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 15px;
            
        }
        table, th, td {
            border: 1px solid #000;
        }
        th, td {
            padding: 6px;
        }
        .no-border {
            border: none !important;
        }
        .kop table{
            border: 0  !important;
            line-height: 1.2 !important;
            padding: 0 !important;
            margin-top: 0 !important;
            margin-bottom: 0 !important;
            padding-bottom: 10px !important;
        }
        .kop table td{
            border: none !important;
            padding: 0 !important;
        }
        .kop table th{
            border: none !important;
            padding: 0 !important;
        }
        .mt-4 { margin-top: 40px; }
    </style>
</head>
<body onload="window.print()">

    <div class="kop ">
        @include('pdf.partials.kop')
    </div>

    {{-- HEADER --}}
    <div class="text-center">
        
            Tahun Pelajaran: <strong>{{ $laporan->tahunPelajaran->nama }}</strong><br>
            Semester: <strong>{{ $laporan->semester->nama }}</strong><br>
            Periode:
            @if($laporan->tanggal_mulai && $laporan->tanggal_selesai)
                {{ \Carbon\Carbon::parse($laporan->tanggal_mulai)->format('d M Y') }}
                s/d
                {{ \Carbon\Carbon::parse($laporan->tanggal_selesai)->format('d M Y') }}
            @else
                Semua Periode
            @endif
        </p>
    </div>

    {{-- KALIMAT PEMBUKA --}}
    <p>
        Berikut adalah laporan keuangan yang memuat seluruh transaksi pemasukan
        dan pengeluaran yang tercatat pada periode tersebut.
    </p>

    {{-- TABEL --}}
    <table>
        <thead>
            <tr class="text-center">
                <th width="5%">No</th>
                <th width="15%">Tanggal</th>
                <th>Keterangan</th>
                <th width="15%">Pemasukan</th>
                <th width="15%">Pengeluaran</th>
            </tr>
        </thead>
        <tbody>
            @forelse ($laporan->detail as $d)
                <tr>
                    <td class="text-center">{{ $loop->iteration }}</td>
                    <td class="text-center">
                      {{ \Carbon\Carbon::parse($d->tanggal)->translatedFormat('d F Y') }}

                    </td>
                    <td>{{ $d->keterangan }}</td>
                    <td class="text-right">
                        {{ $d->jenis === 'pemasukan'
                            ? number_format($d->nominal, 0, ',', '.')
                            : '-' }}
                    </td>
                    <td class="text-right">
                        {{ $d->jenis === 'pengeluaran'
                            ? number_format($d->nominal, 0, ',', '.')
                            : '-' }}
                    </td>
                </tr>
            @empty
                <tr>
                    <td colspan="5" class="text-center">Tidak ada data</td>
                </tr>
            @endforelse
        </tbody>
        <tfoot>
            <tr class="fw-bold">
                <td colspan="3" class="text-right">Total Pemasukan</td>
                <td class="text-right">
                    {{ number_format($totalPemasukan, 0, ',', '.') }}
                </td>
                <td></td>
            </tr>
            <tr class="fw-bold">
                <td colspan="4" class="text-right">Total Pengeluaran</td>
                <td class="text-right">
                    {{ number_format($totalPengeluaran, 0, ',', '.') }}
                </td>
            </tr>
            <tr class="fw-bold">
                <td colspan="4" class="text-right">Saldo Akhir</td>
                <td class="text-right">
                    {{ number_format($saldoAkhir, 0, ',', '.') }}
                </td>
            </tr>
        </tfoot>
    </table>

    {{-- KALIMAT PENUTUP --}}
    <p class="mt-4">
        Demikian laporan keuangan ini dibuat untuk dapat dipergunakan sebagaimana mestinya.
    </p>

    {{-- TANDA TANGAN --}}
    <table class="no-border mt-4">
        <tr class="no-border">
            <td class="no-border" width="60%"></td>
            <td class="no-border text-center">
                {{ now()->format('d M Y') }}<br>
                Bendahara<br><br><br>
                <strong>( ____________________ )</strong>
            </td>
        </tr>
    </table>

</body>
</html>
