<!DOCTYPE html>
<html>
<head>
    <style>
        body { font-family: DejaVu Sans; font-size: 11px; }
        .header { text-align: center; margin-bottom: 10px; }
        .box { border:1px solid #000; padding:8px; margin-bottom:8px; }
        .row { display:flex; justify-content:space-between; }
    </style>
</head>
<body>

<div class="header">
    <h3>LAPORAN KAS KELUAR</h3>

    <p>
        Tahun Pelajaran :
        <strong>{{ $tahunPelajaran->nama ?? '-' }}</strong>
        <br>
        Semester :
        <strong>{{ $semester->nama ?? '-' }}</strong>
    </p>

    <p>
        Periode :
        {{ $request->tanggal_mulai ? tanggalIndo($request->tanggal_mulai) : '-' }}
        s/d
        {{ $request->tanggal_selesai ? tanggalIndo($request->tanggal_selesai) : '-' }}
    </p>
</div>

@foreach ($kasKeluar as $kk)
    <div class="box">
        <div class="row">
            <strong>{{ tanggalIndo($kk->tanggal) }}</strong>
            <br>
            <strong>{{ rupiah($kk->jumlah) }}</strong>
        </div>
        <div>Kategori: {{ $kk->kategori }}</div>
        <div>Keterangan: {{ $kk->keterangan ?? '-' }}</div>
        <div>Petugas: {{ $kk->petugas->nama }}</div>
    </div>
@endforeach

<hr>

<h4>Total Pengeluaran: {{ rupiah($total) }}</h4>

<p style="margin-top:30px">
    Dicetak pada {{ tanggalIndo(now()) }} <br>
    Petugas: {{ auth()->user()->staff->nama }}
</p>

</body>
</html>
