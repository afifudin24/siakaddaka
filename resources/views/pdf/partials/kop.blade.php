{{-- KOP SURAT --}}
<table width="100%" style="border-bottom:3px double #000; margin-bottom:15px;">
    <tr>
        {{-- LOGO --}}
        <td width="15%" align="center">
         

            <img src="{{ storage_path('app/public/' . $datasekolah->logo_surat) ?? 'assets/images/logo-icon.png' }}">
        </td>

        {{-- IDENTITAS SEKOLAH --}}
        <td width="85%" align="center">
            <div style="font-size:14px;">{{ $datasekolah->yayasan_sekolah ?? 'YAYASAN SEKOLAH' }}</div>

            <div style="font-size:18px; text-transform:uppercase; font-weight:bold;">
                {{ $datasekolah->nama_sekolah ?? 'SMK CONTOH' }}
            </div>

            <div style="font-size:12px;">
                {{ $datasekolah->alamat ?? '-' }} <br>
                Telp. {{ $datasekolah->telepon ?? '-' }} •
                Email: {{ $datasekolah->email_sekolah ?? '-' }}
            </div>
        </td>
    </tr>
</table>