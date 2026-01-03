{{-- KOP SURAT --}}
<table width="100%" style="border-bottom:3px double #000 !important; margin-bottom:10px !important; padding-bottom:15px !important">
    <tr>
        {{-- LOGO --}}
        <td width="15%" align="center">
         

            <img src="{{ storage_path('app/public/' . $datasekolah->logo_surat) ?? 'assets/images/logo-icon.png' }}">
        </td>

        {{-- IDENTITAS SEKOLAH --}}
       <td width="85%" align="center" style="line-height:1.15;">
    <div style="font-size:18px; margin:0; padding:0;">
        {{ $datasekolah->yayasan_sekolah ?? 'YAYASAN SEKOLAH' }}
    </div>

    <div style="font-size:22px; font-weight:bold; text-transform:uppercase; margin:0 0 !important;">
        {{ $datasekolah->nama_sekolah ?? 'SMK CONTOH' }}
    </div>

    <div style="font-size:11px; margin:0;">
        {{ $datasekolah->alamat ?? '-' }}<br>
        Telp. {{ $datasekolah->telepon ?? '-' }} •
        Email: {{ $datasekolah->email_sekolah ?? '-' }}<br>
        Website: {{ $datasekolah->website ?? '-' }}
    </div>
    
</td>

    </tr>
</table>