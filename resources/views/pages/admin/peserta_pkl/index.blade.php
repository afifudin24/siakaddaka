@extends('layouts.app')

@section('content')
    <div class="dashboard-main-body">

        <div class="d-flex flex-wrap align-items-center justify-content-between gap-3 mb-24">
            <h6 class="fw-semibold mb-0">Peserta PKL</h6>

        </div>

        <div class="card basic-data-table">
            <div class="card-header d-flex justify-content-between align-items-center">
                <h5 class="card-title mb-0">Peserta PKL</h5>
                <div>
                    <div class="d-flex gap-2">
                        <a href="{{ route('admin.peserta-pkl.add') }}"
                            class="btn btn-primary text-sm btn-sm p-1 radius-4 d-flex align-items-center gap-2">
                            <iconify-icon icon="mdi:add" class="text-xl"></iconify-icon>
                            <span class="d-none d-md-inline">Tambah Peserta PKL</span>
                        </a>


                    </div>

                </div>

            </div>
            <div class="card-body">

                     <div class="">
                    <div class="d-flex gap-1">

                        <form method="GET" class="mb-3 col-md-2">
    @foreach(request()->except('dudi_id') as $key => $value)
        <input type="hidden" name="{{ $key }}" value="{{ $value }}">
    @endforeach

    <select name="dudi_id" class="form-select" id="select_dudi" onchange="this.form.submit()">
        <option value="">Pilih DUDI</option>
        <option value="all" {{ request('dudi_id') == 'all' ? 'selected' : '' }}>Semua</option>
        <option value="null" {{ request('dudi_id') == 'null' ? 'selected' : '' }}>Tanpa DUDI</option>

        @foreach ($dudi as $k)
            <option value="{{ $k->id }}" {{ request('dudi_id') == $k->id ? 'selected' : '' }}>
                {{ $k->nama_dudi }}
            </option>
        @endforeach
    </select>
</form>

                        <form method="GET" class="mb-3 col-md-2">
    @foreach(request()->except('status') as $key => $value)
        <input type="hidden" name="{{ $key }}" value="{{ $value }}">
    @endforeach

    <select name="status" class="form-select" id="select_status" onchange="this.form.submit()">
        <option value="">Pilih Status</option>
        <option value="all" {{ request('status') == 'all' ? 'selected' : '' }}>Semua</option>
        <option value="aktif" {{ request('status') == 'aktif' ? 'selected' : '' }}>Aktif</option>
        <option value="selesai" {{ request('status') == 'selesai' ? 'selected' : '' }}>Selesai</option>
        <option value="nonaktif" {{ request('status') == 'nonaktif' ? 'selected' : '' }}>Nonaktif</option>

       
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
           placeholder="Cari siswa"
           value="{{ request('search') }}">

    <button class="btn btn-primary btn-sm h-40-px px-12 radius-12">
        <iconify-icon icon="ion:search-outline"></iconify-icon>
    </button>
     @foreach(request()->except('search') as $key => $value)
        <input type="hidden" name="{{ $key }}" value="{{ $value }}">
    @endforeach
</form>

</div>
                        </div>

                <div class="mt-24 table-responsive">


                    <table id="" class="table basic-border-table" style="width:100%">
                        <thead>
                            <tr>
                              

                                <th scope="col" class="" style="width : 10px !important; padding: 0.9rem 10px; text-align: center">

                                    NO

                                </th>
                                <th class="sticky-col sticky-nama" scope="col" style="padding: 0.9rem 7px; " class="">NAMA
                                </th>
                                <th scope="col" style="padding: 0.9rem 7px; " class="">KELAS
                                </th>
                                <th scope="col" style="padding: 0.9rem 7px; " class="">DUDI
                                </th>


                         
                                <th scope="col" style="padding: 0.9rem 7px; " class="">AKSI</th>

                            </tr>
                        </thead>
<tbody>
@if ($pesertaPKL->count() > 0)
    @foreach ($pesertaPKL as $s)
        <tr>
            <td class="">{{ $loop->iteration }}</td>
            <td style="padding: 0.9rem 7px !important; " scope="row" class="sticky-col sticky-nama">{{ $s->siswa->nama ?? '-' }}</td>
            <td>{{ $s->siswa->kelas->nama_kelas ?? '-' }}</td>
            <td>{{ $s->dudi->nama_dudi ?? '-' }}</td>
            <td class="h-100 gap-1 align-items-center justify-content-start d-none d-md-flex">
                <button class="btn btn-sm btn-success text-white btn-edit"
                        data-id="{{ $s->id }}">
                    <iconify-icon icon="mdi:eye-outline" class="text-lg"></iconify-icon>
                </button>
             <button class="btn btn-sm btn-warning text-white btn-edit"
    data-id="{{ $s->id }}"
    data-dudi_id="{{ $s->dudi_id }}"
    data-status="{{ $s->status }}">
    <iconify-icon icon="ic:baseline-edit" class="text-lg"></iconify-icon>
</button>

                <button class="btn btn-sm btn-danger text-white btn-edit"
                        data-id="{{ $s->id }}">
                    <iconify-icon icon="bx:trash" class="text-lg"></iconify-icon>
                </button>
            </td>
              <td class="h-100 gap-1 align-items-center justify-content-start d-md-none d-flex">
                <button class="btn btn-sm p-1 btn-success text-white btn-edit"
                        data-id="{{ $s->id }}">
                    <iconify-icon icon="mdi:eye-outline" class="text-lg"></iconify-icon>
                </button>
                 <button class="btn p-1 btn-sm btn-warning text-white btn-edit"
    data-id="{{ $s->id }}"
    data-dudi_id="{{ $s->dudi_id }}"
    data-status="{{ $s->status }}">
    <iconify-icon icon="ic:baseline-edit" class="text-lg"></iconify-icon>
</button>
                <button class="btn btn-sm p-1 btn-danger text-white btn-edit"
                        data-id="{{ $s->id }}">
                    <iconify-icon icon="bx:trash" class="text-lg"></iconify-icon>
                </button>
            </td>
        </tr>
    @endforeach

    @else
    <tr>
        <td colspan="5" class="text-center">Tidak ada data peserta PKL.</td>
    </tr>

@endif
</tbody>

                    </table>
                    <div class="d-flex align-items-center justify-content-between flex-wrap gap-2 mt-24 mb-8">
                 <span>
    Menampilkan
    {{ $pesertaPKL->firstItem() ?? 0 }} 
    sampai
    {{ $pesertaPKL->lastItem() ?? 0 }} 
    dari
    {{ $pesertaPKL->total() }} 
    data
</span>

               {{-- Mobile --}}
    <div class="d-block d-md-none">
        {{ $pesertaPKL->onEachSide(0)->links() }}
    </div>

    {{-- Desktop --}}
    <div class="d-none d-md-block">
        {{ $pesertaPKL->onEachSide(2)->links() }}
    </div>
                </div>

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
                placeholder: "Pilih DUDI",
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
