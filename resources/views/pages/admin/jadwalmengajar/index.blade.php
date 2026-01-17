@extends('layouts.app')

@section('content')
  <div class="dashboard-main-body">
     <div class="d-flex flex-wrap align-items-center justify-content-between gap-3 mb-24">
            <h6 class="fw-semibold mb-0">Jadwal Mengajar</h6>
            <ul class="d-flex align-items-center gap-2">
                <li class="fw-medium">
                    <a href="index.html" class="d-flex align-items-center gap-1 hover-text-primary">
                        <iconify-icon icon="solar:home-smile-angle-outline" class="icon text-lg"></iconify-icon>
                        Dashboard
                    </a>
                </li>
                <li>-</li>
                <li class="fw-medium">Jadwal Mengajar</li>
            </ul>
        </div>
<div class="card basic-data-table">
            <div class="card-header d-flex justify-content-between align-items-center">
                <h5 class="card-title mb-0">Jadwal Mengajar</h5>
                   <div>
                    @if(request()->filled('kelas_id'))
                    <div class="d-flex gap-2">
                        <button id="btnSimpanJadwal"
                            class="btn btn-success text-sm btn-sm p-1 radius-4 d-flex align-items-center gap-2">
                            <iconify-icon icon="lucide:save" class="text-xl"></iconify-icon>
                            <span class="d-none d-md-inline">Simpan</span>
                    </button>

                    
                    </div>
                    @endif

                </div>
                

            </div>
            <div class="card-body">
                <form method="GET" id="filterForm" class="mb-3">
                       {{-- PER PAGE (OPSIONAL) --}}
      
        
    <div class="row g-2 align-items-center">
       

        {{-- PILIH KELAS --}}
        <div class="col-md-4">
            <select name="kelas_id"
              id="select_kelas"
                class="form-control select2"
                onchange="document.getElementById('filterForm').submit()">

                <option value="">-- Pilih Kelas --</option>
                @foreach($kelas as $k)
                    <option value="{{ $k->id }}"
                        {{ request('kelas_id') == $k->id ? 'selected' : '' }}>
                        {{ $k->nama_kelas }}
                    </option>
                @endforeach
            </select>
        </div>

      

    </div>
</form>

              @if(!request()->filled('kelas_id'))
    <div class="alert alert-info text-center">
        <i class="ti ti-info-circle"></i>
        Silakan pilih <strong>Kelas</strong> terlebih dahulu untuk memodifikasi jadwal mengajar.
    </div>


    @else
  <div class="row">
    {{-- tampilan jadwal disini --}}
    @if(request()->filled('kelas_id'))
<form id="formJadwal">
    @csrf
<input type="hidden" name="kelas_id" value="{{ request('kelas_id') }}">

   <div class="row">
@foreach($hariAktif as $hari)
    <div class="col-md-6 col-sm-6 mb-3">
        <div class="card h-100">
            <div class="card-header fw-bold text-center">
                {{ $hari->nama_hari }}
            </div>

            <div class="card-body p-4">
                <table class="table table-sm mb-0">
                    <thead>
                        <tr>
                            <th width="100" style="text-align: center">Jam Ke</th>
                            <th>Mata Pelajaran / Guru</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($hari->jamPelajaran as $jam)
                            @php
                                $key = $hari->id.'-'.$jam->id;
                                $selected = $jadwal[$key]->data_mengajar_id ?? '';
                            @endphp
                          <tr class="align-middle">
    <td class="text-center py-3">
        {{ $jam->jam_ke }}
    </td>
    <td class="py-3">
        <select
            class="form-control jadwal-select"
            name="jadwal[{{ $hari->id }}][{{ $jam->id }}]">
            <option value="">-- Kosong --</option>
            @foreach($dataMengajar as $dm)
                <option value="{{ $dm->id }}"
                    {{ $selected == $dm->id ? 'selected' : '' }}>
                    {{ $dm->mapel->kode_mapel }} - {{ $dm->guru->nama }}
                </option>
            @endforeach
        </select>
    </td>
</tr>


                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
@endforeach
</div>


 
</form>
@endif

</div>
   
@endif

       

            </div>
</div>
  </div>


  @push('scripts')

    <script>
        $(document).ready(function() {
            // Inisialisasi Select2
       
    
            $('#select_kelas').select2({
                theme: 'bootstrap-5',
                   placeholder: "Pilih Kelas",
                placeholder: 'Pilih Kelas',
                allowClear: true,
                // width: '100%'
            });
               $('.jadwal-select').select2({
                theme: 'bootstrap-5',
                   placeholder: "Pilih Jadwal",
            
                allowClear: true,
                // width: '100%'
            });
        });
    </script>


<script>
$('#btnSimpanJadwal').on('click', function () {
    $.ajax({
        url: "{{ route('admin.jadwal.store') }}",
        type: "POST",
        data: $('#formJadwal').serialize(),
        beforeSend: () => {
            Swal.fire({
                title: 'Menyimpan...',
                allowOutsideClick: false,
                didOpen: () => Swal.showLoading()
            });
        },
        success: () => {
           Swal.fire({
    icon: 'success',
    title: 'Berhasil',
    text: 'Jadwal berhasil disimpan',
    confirmButtonText: 'OK'
}).then((result) => {
    if (result.isConfirmed) {
        location.reload();
    }
});

        },
        error: (err) => {
            console.log(err);
            Swal.fire('Error', 'Gagal menyimpan jadwal', 'error');
        }
    });
});
</script>


    @endpush
@endsection