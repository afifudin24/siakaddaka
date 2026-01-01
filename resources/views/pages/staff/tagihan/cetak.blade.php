<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <title>Surat Tagihan Pembayaran</title>
    <style>
        body {
            font-family: "Times New Roman", serif;
            font-size: 12pt;
            line-height: 1.5;
            margin: 20px 30px;
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
            font-weight: bold;
            text-decoration: underline;
            margin: 18px 0 14px;
        }

        .content p {
            margin: 6px 0;
            text-align: justify;
        }

        .identitas {
            border: 1px solid #000;
            padding: 10px 14px;
            margin: 12px 0 14px;
        }

        .identitas p {
            margin: 4px 0;
        }

        .label {
            display: inline-block;
            width: 140px;
        }

        .nilai-utama {
            font-size: 13pt;
            font-weight: bold;
            margin: 8px 0;
        }

        .penutup {
            margin-top: 18px;
        }

        .ttd {
            margin-top: 40px;
            text-align: right;
        }
    </style>
</head>
<body>

{{-- KOP SURAT --}}
<div class="kop">
    <h1>{{ config('app.name') }}</h1>
    <p>Jl. Pendidikan No. 1, Purwokerto</p>
    <p>Telp. (0281) 123456 • Email: sekolah@email.sch.id</p>
</div>

{{-- JUDUL --}}
<div class="judul">
    SURAT TAGIHAN PEMBAYARAN
</div>

{{-- ISI --}}
<div class="content">
    <p>
        Dengan hormat,
    </p>

    <p>
        Sehubungan dengan kewajiban administrasi pendidikan peserta didik,
        bersama ini kami sampaikan informasi tagihan pembayaran sekolah
        dengan identitas sebagai berikut:
    </p>

    {{-- IDENTITAS --}}
    <div class="identitas">
        <p>
            <span class="label">Nama Siswa</span> :
            <b>{{ $tagihan->siswa->nama }}</b>
        </p>
        <p>
            <span class="label">Kelas</span> :
            {{ $tagihan->siswa->kelas->nama_kelas ?? '-' }}
        </p>
        <p>
            <span class="label">Nama Tagihan</span> :
            {{ $tagihan->nama_tagihan }}
        </p>
        <p>
            <span class="label">Jenis Tagihan</span> :
            {{ $tagihan->jenisTagihan->nama_jenis }}
        </p>
        <p>
            <span class="label">Tanggal Tagihan</span> :
            {{ \Carbon\Carbon::parse($tagihan->tgl_tagihan)->translatedFormat('d F Y') }}
        </p>
    </div>

    <p>
        Adapun jumlah tagihan yang harus dipenuhi adalah sebesar:
    </p>

    <p class="nilai-utama">
        {{ rupiah($tagihan->jumlah) }}
    </p>

    <p>
        Dengan sisa kewajiban pembayaran yang masih harus dilunasi sebesar:
    </p>

    <p class="nilai-utama">
        {{ rupiah($tagihan->sisaTagihan()) }}
    </p>

    <p class="penutup">
        Demikian surat tagihan ini kami sampaikan untuk dapat menjadi perhatian.
        Atas perhatian dan kerja sama Bapak/Ibu, kami ucapkan terima kasih.
    </p>
</div>

{{-- TANDA TANGAN --}}
<div class="ttd">
    Purwokerto,
    {{ \Carbon\Carbon::now()->translatedFormat('F Y') }}<br><br><br>

    <b>{{ auth()->user()->staff->nama }}</b><br>
    Petugas Administrasi
</div>

</body>
</html>
