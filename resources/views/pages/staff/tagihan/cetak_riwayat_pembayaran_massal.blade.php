<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Riwayat Pembayaran Massal</title>

    <style>
     

    

         body {
           font-family: DejaVu Sans, sans-serif;
            font-size: 12px;
            line-height: 1.5;
            margin: 20px 30px;
        }
            .page-break {
            page-break-after: always;
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
            margin-bottom: 6px;
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

        .riwayat {
            margin-top: 8px;
            padding-left: 12px;
            font-size: 11px;
        }

        .riwayat ul {
            margin: 2px 0 0 16px;
            padding: 0;
            list-style-type: disc;
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
    </style>
</head>
<body>

@foreach($data as $siswa)

    {{-- KOP SURAT --}}
   @include('pdf.partials.kop')

    {{-- INFORMASI SISWA --}}
    <div class="siswa-info">
        <strong>Nama Siswa:</strong> {{ $siswa->nama }}<br>
        <strong>Kelas:</strong> {{ $siswa->kelas->nama_kelas }}<br>
        <strong>Tahun Pelajaran:</strong> {{ $tahunPelajaran->nama }}<br>
        <strong>Semester:</strong> {{ $semester->nama }}
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
                <div class="jumlah">Rp {{ number_format($sisa,0,',','.') }}</div>
                <div class="status" style="background-color: {{ $sisa == 0 ? '#4caf50' : '#ff9800' }}">
                    {{ $sisa == 0 ? 'Lunas' : 'Belum Lunas' }}
                </div>

                @if($sisa < $t->jumlah)
                    <div class="riwayat">(Sudah dibayar: Rp {{ number_format($t->jumlah - $sisa,0,',','.') }})</div>
                @endif

                {{-- RIWAYAT PEMBAYARAN --}}
                @if($t->pembayaran->count() > 0)
                    <div class="riwayat">
                        <em>Riwayat Pembayaran:</em>
                        <ul>
                            @foreach($t->pembayaran as $p)
                                <li>{{ \Carbon\Carbon::parse($p->tgl_pembayaran)->translatedFormat('d F Y') }} —
                                    Rp {{ number_format($p->jumlah_bayar,0,',','.') }}
                                </li>
                            @endforeach
                        </ul>
                    </div>
                @else
                    <div class="riwayat" style="color: #777;">Belum ada pembayaran</div>
                @endif
            </div>
        @endforeach
    </div>

    {{-- TOTAL SISA TAGIHAN SISWA --}}
    <div class="total-sisa">
        Total Sisa Tagihan: Rp {{ number_format($totalSisa,0,',','.') }}
    </div>

    {{-- PAGE BREAK --}}
    @if(!$loop->last)
        <div class="page-break"></div>
    @endif

@endforeach

</body>
</html>
