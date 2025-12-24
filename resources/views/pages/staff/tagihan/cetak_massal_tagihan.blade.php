<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Cetak Tagihan Massal</title>

    <style>
        body {
            font-family: "Times New Roman", serif;
            font-size: 12px;
            line-height: 1.6;
        }

        .page-break {
            page-break-after: always;
        }

        .kop {
            text-align: center;
            border-bottom: 3px solid #000;
            padding-bottom: 8px;
            margin-bottom: 20px;
        }

        .kop h2, .kop h3 {
            margin: 0;
        }

        .kop p {
            margin: 2px 0;
            font-size: 11px;
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
    <div class="kop">
        <h2>SEKOLAH MENENGAH KEJURUAN</h2>
        <h3>SMK CONTOH SEJAHTERA</h3>
        <p>Alamat Sekolah - Telp (0000) 123456</p>
    </div>

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
        <table>
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
        <table>
            <thead>
                <tr>
                    <th width="5%">No</th>
                    <th>Nama Tagihan</th>
                    <th width="25%">Nominal</th>
                    <th width="20%">Tanggal</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($siswa->tagihan as $i => $t)
                    <tr>
                        <td align="center">{{ $i + 1 }}</td>
                        <td>{{ $t->nama_tagihan }}</td>
                        <td align="right">Rp {{ number_format($t->jumlah, 0, ',', '.') }}</td>
                        <td align="center">{{ \Carbon\Carbon::parse($t->tgl_tagihan)->translatedFormat('d F Y') }}</td>
                    </tr>
                @endforeach
            </tbody>
        </table>
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
