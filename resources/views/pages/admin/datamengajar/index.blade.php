@extends('layouts.app')

@section('content')
  <div class="dashboard-main-body">
     <div class="d-flex flex-wrap align-items-center justify-content-between gap-3 mb-24">
            <h6 class="fw-semibold mb-0">Data Mengajar</h6>
            <ul class="d-flex align-items-center gap-2">
                <li class="fw-medium">
                    <a href="index.html" class="d-flex align-items-center gap-1 hover-text-primary">
                        <iconify-icon icon="solar:home-smile-angle-outline" class="icon text-lg"></iconify-icon>
                        Dashboard
                    </a>
                </li>
                <li>-</li>
                <li class="fw-medium">Data Mengajar</li>
            </ul>
        </div>
<div class="card basic-data-table">
            <div class="card-header d-flex justify-content-between align-items-center">
                <h5 class="card-title mb-0">Data Mengajar</h5>
                <div>
                    @if(request()->filled('guru_id'))
                    <div class="d-flex gap-2">
                        <a href="{{ route('admin.guru.datamengajar', request('guru_id')) }}"
                            class="btn btn-primary text-sm btn-sm p-1 radius-4 d-flex align-items-center gap-2">
                            <iconify-icon icon="lucide:plus" class="text-xl"></iconify-icon>
                            <span class="d-none d-md-inline">Tambah</span>
                        </a>

                    
                    </div>
                    @endif

                </div>

            </div>
            <div class="card-body">
                <form method="GET" id="filterForm" class="mb-3">
                       {{-- PER PAGE (OPSIONAL) --}}
        <div class="col-md-3">
            <select name="per_page"
                class="form-control select2"
                onchange="document.getElementById('filterForm').submit()">

                @foreach([20,50,100] as $pp)
                    <option value="{{ $pp }}"
                        {{ request('per_page', 20) == $pp ? 'selected' : '' }}>
                        {{ $pp }} Data Per Halaman
                    </option>
                @endforeach
            </select>
        </div>
        
    <div class="row g-2 align-items-center">
       
        {{-- PILIH GURU --}}
        <div class="col-md-5">
            <select name="guru_id"
            id="select_guru"
                class="form-control select2"
                onchange="document.getElementById('filterForm').submit()">

                <option value="">-- Pilih Guru --</option>
                @foreach($gurus as $guru)
                    <option value="{{ $guru->id }}"
                        {{ request('guru_id') == $guru->id ? 'selected' : '' }}>
                        {{ $guru->nama }}
                    </option>
                @endforeach
            </select>
        </div>

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

              @if(!request()->filled('guru_id'))
    <div class="alert alert-info text-center">
        <i class="ti ti-info-circle"></i>
        Silakan pilih <strong>Guru</strong> terlebih dahulu untuk melihat data mengajar.
    </div>

@elseif($datamengajar->count() === 0)
    <div class="alert alert-warning text-center">
        Data mengajar tidak ditemukan.
    </div>

    @else
  <div class="row">
    @foreach($datamengajar as $mengajar)
        <div class="col-md-6 col-lg-4 mb-3" id="mengajar-{{ $mengajar->id }}">
            <div class="card h-100 shadow-sm border-0">
                <div class="card-body">
                    <h6 class="fw-bold mb-1">
                        {{ $mengajar->mapel->nama_mapel }}
                    </h6>

                    <small class="text-muted">
                        {{ $mengajar->kelas->nama_kelas }}
                    </small>

                    <hr class="my-2">

                    <div class="d-flex align-items-center mb-2">
                        <i class="ti ti-user me-2"></i>
                        <span>{{ $mengajar->guru->nama }}</span>
                    </div>

                    <div class="d-flex justify-content-between small">
                        <span class="d-flex gap-1 align-items-center">
                            <iconify-icon icon="bi:clock"></iconify-icon> {{ $mengajar->jam_mengajar }} Jam
                        </span>
                        <span class="d-flex gap-1 align-items-center">
                            <iconify-icon icon="bi:calendar"></iconify-icon> {{ $mengajar->pertemuan_per_minggu }}x / minggu
                        </span>
                    </div>
                </div>

                <div class="card-footer bg-transparent border-0 d-flex gap-2">
                   <button
    class="btn btn-sm btn-outline-primary w-100 btn-edit"
    data-id="{{ $mengajar->id }}"
    data-jam="{{ $mengajar->jam_mengajar }}"
    data-pertemuan="{{ $mengajar->pertemuan_per_minggu }}"
>
    Edit
</button>

                   <button
    class="btn btn-sm btn-outline-danger w-100 btn-delete"
    data-id="{{ $mengajar->id }}"
>
    Hapus
</button>

                </div>
            </div>
        </div>
 
    
    @endforeach
</div>
{{ $datamengajar->withQueryString()->links() }}

@endif

       

            </div>
</div>

  </div>


  @push('scripts')

    <script>
        $(document).ready(function() {
            // Inisialisasi Select2
            $('#select_guru').select2({
                theme: 'bootstrap-5',
                placeholder: 'Pilih Guru',
                allowClear: true,
                // width: '100%'
            });
    
            $('#select_kelas').select2({
                theme: 'bootstrap-5',
                   placeholder: "Pilih Kelas",
                placeholder: 'Pilih Kelas',
                allowClear: true,
                // width: '100%'
            });
        });
    </script>

    <script>
$(document).on('click', '.btn-edit', function () {
    const id = $(this).data('id');
    const jam = $(this).data('jam');
    const pertemuan = $(this).data('pertemuan');

    Swal.fire({
        title: 'Atur Jam Mengajar',
        html: `
            <div class="text-start">
                <label class="form-label">Jam Mengajar</label>
                <input type="number" id="jam_mengajar" class="form-control mb-2" value="${jam}">

                <label class="form-label">Pertemuan / Minggu</label>
                <input type="number" id="pertemuan" class="form-control" value="${pertemuan}">
            </div>
        `,
        showCancelButton: true,
        confirmButtonText: 'Simpan',
        cancelButtonText: 'Batal',
        preConfirm: () => {
            return {
                jam_mengajar: $('#jam_mengajar').val(),
                pertemuan_per_minggu: $('#pertemuan').val()
            }
        }
    }).then((result) => {
        if (result.isConfirmed) {
            updateMengajar(id, result.value);
        }
    });
});

function updateMengajar(id, data) {
    $.ajax({
        url: `/admin/datamengajar/jammengajar/${id}`,
        type: 'PUT',
        data: {
            _token: '{{ csrf_token() }}',
            jam_mengajar: data.jam_mengajar,
            pertemuan_per_minggu: data.pertemuan_per_minggu
        },
        success: function (res) {
            Swal.fire({
                icon: 'success',
                title: 'Berhasil',
                text: res.message
            }).then(() => {
                location.reload(); // atau update DOM manual
            });
        },
        error: function () {
            Swal.fire(
                'Gagal',
                'Terjadi kesalahan saat menyimpan data',
                'error'
            );
        }
    });
}
</script>

@push('scripts')
<script>
$(document).on('click', '.btn-delete', function () {
    const id = $(this).data('id');

    Swal.fire({
        title: 'Yakin ingin menghapus?',
        text: 'Data mengajar ini akan dihapus permanen!',
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#d33',
        cancelButtonColor: '#6c757d',
        confirmButtonText: 'Ya, hapus',
        cancelButtonText: 'Batal'
    }).then((result) => {
        if (result.isConfirmed) {
            deleteMengajar(id);
        }
    });
});

function deleteMengajar(id) {
    $.ajax({
        url: `/admin/datamengajar/${id}`,
        type: 'DELETE',
        data: {
            _token: '{{ csrf_token() }}'
        },
        success: function (res) {
            Swal.fire(
                'Terhapus!',
                res.message,
                'success'
            );

            // 🔥 hapus card / list tanpa reload
            $('#mengajar-' + id).fadeOut(300, function () {
                $(this).remove();
            });
        },
        error: function () {
            Swal.fire(
                'Gagal',
                'Data gagal dihapus',
                'error'
            );
        }
    });
}
</script>
@endpush

    @endpush
@endsection