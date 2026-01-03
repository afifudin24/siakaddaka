<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Tagihan Siswa</title>

    <style>
        body {
           font-family: DejaVu Sans, sans-serif;
            font-size: 12pt;
            line-height: 1.5;
            margin: 20px 30px;
        }
       
    table {
        border-collapse: collapse;
    }

        .kop {
            text-align: center;
            border-bottom: 3px solid #000;
            padding-bottom: 8px;
            margin-bottom: 18px;
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

        .pembuka, .penutup {
            margin-bottom: 12px;
        }

        .siswa-info {
            margin-bottom: 15px;
        }

        .tagihan-grid {
            display: flex;
            flex-wrap: wrap;
            gap: 10px;
        }

        .tagihan-card {
            flex: 0 0 calc(50% - 5px); /* 2 kolom */
            border-left: 4px solid #ff9800;
            background-color: #f9f9f9;
            border-radius: 6px;
            padding: 12px 16px;
            box-sizing: border-box;
            margin-bottom: 10px;
        }

        .tagihan-card.lunas {
            border-left-color: #4caf50;
        }

        .tagihan-card .judul {
            font-weight: bold;
            font-size: 14px;
            margin-bottom: 4px;
        }

        .tagihan-card .info-tagihan {
            font-size: 11px;
            margin-bottom: 4px;
        }

        .tagihan-card .jumlah {
            font-weight: bold;
            color: #d32f2f;
            font-size: 13px;
        }

        .tagihan-card .status {
            margin-top: 4px;
            font-size: 11px;
            padding: 2px 6px;
            border-radius: 4px;
            color: white;
            display: inline-block;
        }

        .total-sisa {
            margin-top: 10px;
            padding: 12px 16px;
            background-color: #e0f7fa;
            border-radius: 6px;
            font-weight: bold;
            font-size: 14px;
            text-align: right;
        }

        .ttd {
            width: 100%;
            margin-top: 40px;
        }

        .ttd td {
            width: 50%;
            text-align: center;
        }
    </style>
</head>
<body>

{{-- KOP SURAT --}}
@include('pdf.partials.kop')

{{-- PEMBUKA SURAT --}}
<div class="pembuka">
    Dengan hormat,<br>
    Berdasarkan administrasi keuangan sekolah, berikut kami sampaikan tagihan siswa yang statusnya belum lunas. 
    Mohon untuk segera melakukan pembayaran sesuai ketentuan yang berlaku.
</div>

{{-- INFORMASI SISWA --}}
<div class="siswa-info">
    <strong>Nama Siswa:</strong> {{ $siswa->nama }}<br>
    <strong>Kelas:</strong> {{ $siswa->kelas->nama_kelas ?? '-' }}
</div>

{{-- TAGIHAN GRID --}}
<div class="tagihan-grid">
    @php
        $totalSisa = $siswa->tagihan->sum(fn($t) => $t->sisaTagihan());
    @endphp

    @foreach($siswa->tagihan as $t)
        @php
            $sisa = $t->sisaTagihan();
        @endphp

        <div class="tagihan-card {{ $sisa == 0 ? 'lunas' : '' }}">
            <div class="judul">{{ $t->nama_tagihan }}</div>
            <div class="info-tagihan">
                Tahun Pelajaran: {{ $t->tahunPelajaran->nama ?? '-' }}<br>
                Semester: {{ $t->semester->nama ?? '-' }}
            </div>
            <div class="jumlah">Rp {{ number_format($sisa,0,',','.') }}</div>
            <div class="status" style="background-color: {{ $sisa == 0 ? '#4caf50' : '#ff9800' }}">
                {{ $sisa == 0 ? 'Lunas' : 'Belum Lunas' }}
            </div>
        </div>
    @endforeach
</div>

{{-- TOTAL SISA TAGIHAN --}}
<div class="total-sisa">
    Total Sisa Tagihan: Rp {{ number_format($totalSisa,0,',','.') }}
</div>

{{-- PENUTUP SURAT --}}
<div class="penutup">
    Demikian surat tagihan ini kami sampaikan. Diharapkan pembayaran dapat dilakukan sesuai ketentuan yang berlaku. 
    Atas perhatian dan kerja sama Bapak/Ibu, kami ucapkan terima kasih.
</div>

{{-- TANDA TANGAN --}}
<table class="ttd">
    <tr>
        <td></td>
        <td>
            {{ now()->translatedFormat('d F Y') }}<br>
            Petugas Administrasi<br><br><br>
            <strong>{{ auth()->user()->staff->nama ?? 'Petugas' }}</strong>
        </td>
    </tr>
</table>

</body>
</html>
