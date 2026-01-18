@extends('layouts.app')

@section('content')
    <div class="dashboard-main-body">

        <div class="d-flex flex-wrap align-items-center justify-content-between gap-3 mb-24">
            <h6 class="fw-semibold mb-0">Dunia Usaha / Dunia Industri</h6>

        </div>

        <div class="card basic-data-table">
            <div class="card-header d-flex justify-content-between align-items-center">
                <h5 class="card-title mb-0">Dunia Usaha / Dunia Industri</h5>
                <div>
                    <div class="d-flex gap-2">
                        <a href="{{ route('admin.dudi.add') }}"
                            class="btn btn-primary text-sm btn-sm p-1 radius-4 d-flex align-items-center gap-2">
                            <iconify-icon icon="mdi:add" class="text-xl"></iconify-icon>
                            <span class="d-none d-md-inline">Tambah DUDI</span>
                        </a>


                    </div>

                </div>

            </div>
            <div class="card-body">

                     <div class="">
                    <div class="d-flex gap-1">

                        <form method="GET" class="mb-3 col-md-2">
    @foreach(request()->except('jurusan_id') as $key => $value)
        <input type="hidden" name="{{ $key }}" value="{{ $value }}">
    @endforeach

    <select name="jurusan_id" class="form-select" id="select_dudi" onchange="this.form.submit()">
        <option value="">Pilih Jurusan</option>
        <option value="all" {{ request('jurusan_id') == 'all' ? 'selected' : '' }}>Semua</option>

        @foreach ($jurusan as $k)
            <option value="{{ $k->id }}" {{ request('jurusan_id') == $k->id ? 'selected' : '' }}>
                {{ $k->nama_jurusan }}
            </option>
        @endforeach
    </select>
</form>


                    </div>
                            <div class="d-flex gap-2">
                                   <form method="GET">
    @foreach(request()->except('paginate') as $key => $value)
        <input type="hidden" name="{{ $key }}" value="{{ $value }}">
    @endforeach

    <select name="paginate"
        class="form-select form-select-sm w-auto"
        onchange="this.form.submit()">
        @for ($i = 10; $i <= 100; $i += 10)
            <option value="{{ $i }}" {{ request('paginate', 20) == $i ? 'selected' : '' }}>
                {{ $i }}
            </option>
        @endfor
    </select>
</form>

                 <form method="GET" class="navbar-search d-flex justify-content-start gap-2 align-items-center">

   

    <input type="text"
           class="bg-base h-40 w-auto"
           name="search"
           style="padding-inline-start: 1rem !important;"
           placeholder="Cari Dudi"
           value="{{ request('search') }}">

    <button class="btn btn-brand btn-sm h-40-px px-12 radius-12">
        <iconify-icon icon="ion:search-outline"></iconify-icon>
    </button>
     @foreach(request()->except('search') as $key => $value)
        <input type="hidden" name="{{ $key }}" value="{{ $value }}">
    @endforeach
</form>

</div>
                        </div>

           <div class="row g-3 mt-24">
    @forelse($dudi as $d)
        <div class="col-12 col-md-6 col-lg-4">
            <div class="card p-16 shadow-sm border radius-12 h-100">
                <div class="d-flex flex-column h-100 justify-content-between">
                    <div>
                        <h5 class="fw-bold mb-2">{{ $d->nama_dudi }}</h5>
                        <p class="mb-1 text-muted">Bidang Usaha: {{ $d->bidang_usaha }}</p>
                        <p class="mb-1 text-muted">
                            Jurusan: {{ $d->jurusan->nama_jurusan ?? '-' }}
                        </p>
                        <p class="mb-2 text-muted">
                            Jumlah Siswa: {{ $d->pesertaPKL->count() }}
                        </p>
                    </div>
                    <div class="d-flex gap-2 mt-3">
                        <!-- Tombol lihat -->
                        <button class="btn btn-sm btn-success text-white btn-view"
                                data-id="{{ $d->id }}">
                            <iconify-icon icon="mdi:eye-outline" class="text-lg"></iconify-icon>
                        </button>

                        <!-- Tombol edit -->
                        <a href="{{ route('admin.dudi.edit', $d->id) }}" class="btn btn-sm btn-warning text-white"
                                data-id="{{ $d->id }}">
                            <iconify-icon icon="ic:baseline-edit" class="text-lg"></iconify-icon>
                        </a>

                        <!-- Tombol hapus -->
                        <button class="btn btn-sm btn-danger text-white btn-delete"
                                data-id="{{ $d->id }}">
                            <iconify-icon icon="bx:trash" class="text-lg"></iconify-icon>
                        </button>
                    </div>
                </div>
            </div>
        </div>
    @empty
        <div class="col-12">
            {{-- dalam info --}}

            <div class="alert alert-info text-center d-flex align-items-center justify-content-center gap-2">
     <iconify-icon icon="material-symbols:info"></iconify-icon>
       Belum ada data DUDI.
    </div>
        </div>
    @endforelse
</div>
  <div class="d-flex align-items-center justify-content-between flex-wrap gap-2 mt-24">
                 <span>
    Menampilkan
    {{ $dudi->firstItem() ?? 0 }} 
    sampai
    {{ $dudi->lastItem() ?? 0 }} 
    dari
    {{ $dudi->total() }} 
    data
</span>

                    {{ $dudi->links() }}
                </div>


             
            </div>
        </div>
    </div>

    @push('scripts')
    <script>
   let tableoke =  $('#dataTablePesertaPKL').DataTable({
          responsive: true,
    autoWidth: false,
      "pageLength": 25,
    sorting: false,
    ordering: false,
    // scrollX: true,
    language: {
        "emptyTable": "Tidak ada data",
        "info": "Menampilkan _START_ sampai _END_ dari _TOTAL_ data",
        "infoEmpty": "Menampilkan 0 sampai 0 dari 0 data",
        "lengthMenu": "Tampilkan _MENU_ data",
        "loadingRecords": "Memuat...",
        "processing": "Memproses...",
        "search": "Cari:",
        "zeroRecords": "Tidak ditemukan data yang cocok",
       
    }
    
});
/* PENTING */
tableoke.on('draw', function () {
    if (window.Iconify) {
        Iconify.scan();
    }
});
   $('#select_dudi').select2({
                theme: "bootstrap-5",
                //   closeOnSelect : false,
                placeholder: "Pilih Jurusan",
                width: '100%',
                language: {
                    noResults: function() {
                        return "Tidak ada data";
                    }
                }

            });


               $('#select_status').select2({
                theme: "bootstrap-5",
                //   closeOnSelect : false,
                placeholder: "Pilih Status",
                width: '100%',
                language: {
                    noResults: function() {
                        return "Tidak ada data";
                    }
                }

            });
</script>
<script>
$(document).ready(function() {

    $('.btn-edit').click(function() {
        let id = $(this).data('id');
        let currentDudi = $(this).data('dudi_id');
        let currentStatus = $(this).data('status');

        // Generate options DUDI
        let dudiOptions = '';
        @foreach($dudi as $d)
            dudiOptions += `<option value="{{ $d->id }}" ${currentDudi == {{ $d->id }} ? 'selected' : ''}>{{ $d->nama_dudi }}</option>`;
        @endforeach

        Swal.fire({
            title: 'Edit Peserta PKL',
           html: `
    <div class="mb-2">
        <label class="swal-label">DUDI</label>
        <select id="swal-dudi" class="form-control select2">
            ${dudiOptions}
        </select>
    </div>
    </br>
    <div class="mt-3">
        <label class="swal-label">Status</label>
        <select id="swal-status" class="form-control">
            <option value="aktif" ${currentStatus == 'aktif' ? 'selected' : ''}>Aktif</option>
            <option value="selesai" ${currentStatus == 'selesai' ? 'selected' : ''}>Selesai</option>
            <option value="nonaktif" ${currentStatus == 'nonaktif' ? 'selected' : ''}>Nonaktif</option>
        </select>
    </div>
`
,
            showCancelButton: true,
            cancelButtonText: 'Batal',
            confirmButtonColor: '#3085d6',
            confirmButtonText: 'Simpan',
            didOpen: () => {
                $('#swal-dudi').select2({
                    dropdownParent: $('.swal2-container'),
                    width: '100%'
                });
            }
        }).then((result) => {
            if (result.isConfirmed) {
                let dudi_id = $('#swal-dudi').val();
                let status = $('#swal-status').val();

                $.ajax({
                    url: `/admin/peserta-pkl/${id}`, // route update
                    type: 'PUT',
                    data: {
                        _token: '{{ csrf_token() }}',
                        dudi_id: dudi_id,
                        status: status
                    },
                    success: function(res) {
                        Swal.fire('Berhasil', res.message, 'success').then(() => {
                            location.reload();
                        });
                    },
                    error: function(err) {
                        Swal.fire('Gagal', 'Terjadi kesalahan', 'error');
                    }
                });
            }
        });
    });

});

// Event klik tombol hapus
$(document).on('click', '.btn-edit', function() {
    let id = $(this).data('id');

    Swal.fire({
        title: 'Apakah Anda yakin?',
        text: "Data peserta PKL akan dihapus permanen!",
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#d33',
        cancelButtonColor: '#3085d6',
        confirmButtonText: 'Ya, hapus!',
        cancelButtonText: 'Batal'
    }).then((result) => {
        if (result.isConfirmed) {
            $.ajax({
                url: '/admin/peserta-pkl/' + id,
                type: 'DELETE',
                data: {
                    _token: '{{ csrf_token() }}'
                },
                success: function(response) {
                    if(response.status) {
                        Swal.fire(
                            'Terhapus!',
                            response.message,
                            'success'
                        );
                        // Refresh table atau hapus row
                        location.reload();
                    } else {
                        Swal.fire(
                            'Gagal!',
                            response.message,
                            'error'
                        );
                    }
                },
                error: function(xhr) {
                    Swal.fire(
                        'Error!',
                        xhr.responseJSON?.message || 'Terjadi kesalahan!',
                        'error'
                    );
                }
            });
        }
    });
});

</script>



<script>
$('#selectAll').on('change', function () {
    $('.select-item').prop('checked', $(this).is(':checked'));
});
</script>

      
    @endpush
@endsection
