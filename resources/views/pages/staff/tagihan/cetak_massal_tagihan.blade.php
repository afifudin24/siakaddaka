<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Cetak Tagihan Massal</title>

    <style>
    

        .page-break {
            page-break-after: always;
        }

         body {
           font-family: DejaVu Sans, sans-serif;
            font-size: 12px;
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

        .judul {
            text-align: center;
            margin: 20px 0;
            font-weight: bold;
            text-decoration: underline;
        }

        .identitas {
            margin-bottom: 15px;
        }

        .identitas table {
            width: 100%;
        }

        .identitas td {
            padding: 4px;
        }

        .tagihan {
            margin-top: 10px;
        }

        .tagihan table {
            width: 100%;
            border-collapse: collapse;
        }

        .tagihan th, .tagihan td {
            border: 1px solid #000;
            padding: 6px;
        }

        .penutup {
            margin-top: 25px;
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

@foreach ($data as $siswa)

    {{-- KOP SURAT --}}
    @include('pdf.partials.kop')

    {{-- JUDUL --}}
    <div class="judul">
        SURAT TAGIHAN PEMBAYARAN
    </div>

    {{-- PEMBUKA --}}
    <p>
        Dengan hormat,<br>
        Berdasarkan administrasi keuangan sekolah, bersama ini kami sampaikan
        rincian tagihan pembayaran siswa sebagai berikut:
    </p>

    {{-- IDENTITAS SISWA --}}
    <div class="identitas">
        <table style="line-height: 1.2">
            <tr>
                <td width="25%">Nama Siswa</td>
                <td width="3%">:</td>
                <td width="72%"><strong>{{ $siswa->nama }}</strong></td>
            </tr>
            <tr>
                <td>Kelas</td>
                <td>:</td>
                <td>{{ $siswa->kelas->nama_kelas }}</td>
            </tr>
            <tr>
                <td>Tahun Pelajaran</td>
                <td>:</td>
                <td>{{ $tahunPelajaran->nama }}</td>
            </tr>
            <tr>
                <td>Semester</td>
                <td>:</td>
                <td>{{ $semester->nama }}</td>
            </tr>
        </table>
    </div>

    {{-- TAGIHAN --}}
<div class="tagihan">
    @php
        // total sisa tagihan siswa
        $totalSisa = $siswa->tagihan->sum(fn($t) => $t->sisaTagihan());
    @endphp

    @foreach ($siswa->tagihan as $t)
        @php
            $sisa = $t->sisaTagihan();
        @endphp
        <div style="
            border-left: 4px solid {{ $sisa == 0 ? '#4caf50' : '#ff9800' }};
            background-color: #f9f9f9;
            border-radius: 6px;
            padding: 12px 16px;
            margin-bottom: 10px;
        ">
            <div style="font-weight: bold; font-size: 14px; margin-bottom: 4px;">
                {{ $t->nama_tagihan }}
            </div>
            <div style="display: flex; justify-content: space-between; font-size: 12px; color: #555;">
              
                <div style="text-align: left;">
                    <div>
                        <span style="font-weight: bold; color: #d32f2f;">
                            Rp {{ number_format($sisa, 0, ',', '.') }}
                        </span>
                        <span style="
                            margin-left: 8px;
                            font-size: 11px;
                            padding: 2px 6px;
                            border-radius: 4px;
                            background-color: {{ $sisa == 0 ? '#4caf50' : '#ff9800' }};
                            color: white;
                        ">
                            {{ $sisa == 0 ? 'Lunas' : 'Belum Lunas' }}
                        </span>
                    </div>
                    @if($sisa < $t->jumlah)
                        <div style="font-size: 11px; color: #555;">
                            (Sudah dibayar: Rp {{ number_format($t->jumlah - $sisa,0,',','.') }})
                        </div>
                    @endif
                </div>
            </div>
        </div>
    @endforeach

    {{-- Total sisa --}}
    <div style="
        margin-top: 15px;
        padding: 12px 16px;
        background-color: #e0f7fa;
        border-radius: 6px;
        font-weight: bold;
        font-size: 14px;
        text-align: right;
    ">
        Total Sisa Tagihan: Rp {{ number_format($totalSisa, 0, ',', '.') }}
    </div>
</div>



    {{-- PENUTUP --}}
    <div class="penutup">
        <p>
            Demikian surat tagihan ini kami sampaikan.
            Diharapkan pembayaran dapat dilakukan sesuai ketentuan yang berlaku.
            Atas perhatian dan kerja sama Bapak/Ibu, kami ucapkan terima kasih.
        </p>
    </div>

    {{-- TTD --}}
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

    {{-- PAGE BREAK --}}
    @if (!$loop->last)
        <div class="page-break"></div>
    @endif

@endforeach

</body>
</html>
