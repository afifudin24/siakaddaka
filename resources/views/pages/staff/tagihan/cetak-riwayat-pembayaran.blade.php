<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <title>Riwayat Pembayaran Tagihan</title>
    <style>
        body {
            font-family: "Times New Roman", serif;
            font-size: 12px;
            color: #000;
        }
        .kop {
            text-align: center;
            border-bottom: 3px solid #000;
            padding-bottom: 10px;
            margin-bottom: 20px;
        }
        .kop h3 {
            margin: 0;
            font-size: 16px;
            text-transform: uppercase;
        }
        .kop p {
            margin: 2px 0;
            font-size: 11px;
        }
        .judul {
            text-align: center;
            font-weight: bold;
            text-transform: uppercase;
            margin: 15px 0;
        }
        .info {
            margin-bottom: 15px;
        }
        .info p {
            margin: 4px 0;
        }
        .card {
            border: 1px solid #000;
            padding: 8px;
            margin-bottom: 8px;
        }
        .ringkasan {
            border: 1px dashed #000;
            padding: 8px;
            margin-top: 10px;
        }
        .footer {
            margin-top: 30px;
            width: 100%;
        }
        .ttd {
            text-align: right;
        }
        .grid-table {
    width: 100%;
    border-collapse: collapse;
}

.grid-table td {
    vertical-align: top;
    width: 50%;
    padding: 4px 8px;
}

.payment-box {
    border: 1px solid #000;
    padding: 8px;
    margin-bottom: 8px;
}

.payment-title {
    font-weight: bold;
    text-transform: uppercase;
    margin-bottom: 4px;
}

.highlight {
    font-weight: bold;
    font-size: 13px;
}
    </style>
</head>
<body>

{{-- KOP SURAT --}}
<div class="kop">
    <h3>SEKOLAH MENENGAH KEJURUAN</h3>
    <p>Alamat Sekolah • Telp • Email</p>
</div>

{{-- JUDUL --}}
<div class="judul">
    RIWAYAT PEMBAYARAN TAGIHAN SISWA
</div>

{{-- IDENTITAS TAGIHAN --}}
<table class="grid-table">
    <tr>
        <td>
            <p><strong>Nama Siswa</strong> : {{ $tagihan->siswa->nama }}</p>
            <p><strong>Kelas</strong> : {{ $tagihan->siswa->kelas->nama_kelas ?? '-' }}</p>
            <p><strong>Jenis Tagihan</strong> : {{ $tagihan->jenisTagihan->nama_jenis }}</p>
        </td>
        <td>
            <p><strong>Nama Tagihan</strong> : {{ $tagihan->nama_tagihan }}</p>
            <p><strong>Semester</strong> : {{ $semester->nama ?? '-' }}</p>
            <p><strong>Tahun Pelajaran</strong> : {{ $tahunPelajaran->nama ?? '-' }}</p>
        </td>
    </tr>
</table>

@if($pembayaran->count())
    <table class="grid-table">
        <tr>
        @foreach($pembayaran as $index => $item)
            <td>
                <div class="payment-box">
                    <div class="payment-title">
                        Pembayaran ke-{{ $index + 1 }}
                    </div>

                    <p>
                        <strong>Tanggal</strong> :
                        {{ \Carbon\Carbon::parse($item->tgl_bayar)->translatedFormat('d F Y') }}
                    </p>

                    <p class="highlight">
                        {{ rupiah($item->jumlah_bayar) }}
                    </p>

                    @if($item->keterangan)
                        <p>
                            <strong>Keterangan</strong> :
                            {{ $item->keterangan }}
                        </p>
                    @endif
                </div>
            </td>

            {{-- pindah baris tiap 2 kolom --}}
            @if(($index + 1) % 2 == 0)
                </tr><tr>
            @endif
        @endforeach
        </tr>
    </table>
@else
    <p><em>Belum terdapat riwayat pembayaran.</em></p>
@endif


{{-- RINGKASAN --}}
<div class="ringkasan">
    <p><strong>Total Tagihan</strong> : {{ rupiah($tagihan->jumlah) }}</p>
    <p><strong>Total Dibayar</strong> : {{ rupiah($pembayaran->sum('jumlah_bayar')) }}</p>
    <p><strong>Sisa Tagihan</strong> : {{ rupiah($tagihan->jumlah - $pembayaran->sum('jumlah_bayar')) }}</p>
    <p><strong>Status</strong> : {{ strtoupper($tagihan->status) }}</p>
</div>

{{-- PENUTUP --}}
<p style="margin-top: 15px;">
    Demikian riwayat pembayaran tagihan ini dibuat sebagai bukti administrasi
    yang sah dan dapat dipergunakan sebagaimana mestinya.
</p>

{{-- TTD --}}
<div class="footer">
    <div class="ttd">
        <p>{{ $tanggalCetak }}</p>
        <p>Petugas Administrasi,</p>
        <br><br>
        <p><strong>{{ $petugas }}</strong></p>
    </div>
</div>

</body>
</html>
