@extends('layouts.app')

@section('content')
    <div class="dashboard-main-body">

        <div class="d-flex flex-wrap align-items-center justify-content-between gap-3 mb-24">
            <h6 class="fw-semibold mb-0">Tambah Peserta PKL</h6>

        </div>

        <div class="card basic-data-table">
            <div class="card-header d-flex justify-content-between align-items-center">
                <h5 class="card-title mb-0">Tambah Peserta PKL</h5>
                <div>
                    <div class="d-flex gap-2">
                        <button id="btnMassal"
                            class="btn btn-success text-sm btn-sm p-1 radius-4 d-flex align-items-center gap-2">
                            <iconify-icon icon="mdi:user-multiple-add" class="text-xl"></iconify-icon>
                            <span class="d-none d-md-inline">Tambah Massal</span>
                        </button>


                    </div>

                </div>

            </div>
            <div class="card-body">



                <div class="">
                    <div>

                        <form method="GET" class="mb-3 col-md-3">
    @foreach(request()->except('kelas_id') as $key => $value)
        <input type="hidden" name="{{ $key }}" value="{{ $value }}">
    @endforeach

    <select name="kelas_id" class="form-select" id="select_kelas" onchange="this.form.submit()">
        <option value="">Pilih Kelas</option>
        <option value="all" {{ request('kelas_id') == 'all' ? 'selected' : '' }}>Semua</option>
        <option value="null" {{ request('kelas_id') == 'null' ? 'selected' : '' }}>Tanpa Kelas</option>

        @foreach ($kelas as $k)
            <option value="{{ $k->id }}" {{ request('kelas_id') == $k->id ? 'selected' : '' }}>
                {{ $k->nama_kelas }}
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

                 <form method="GET" class="navbar-search d-flex gap-2 align-items-center">

    @foreach(request()->except('search') as $key => $value)
        <input type="hidden" name="{{ $key }}" value="{{ $value }}">
    @endforeach

    <input type="text"
           class="bg-base h-40-px w-auto"
           name="search"
           placeholder="Cari siswa"
           value="{{ request('search') }}">

    <button class="btn btn-primary btn-sm h-40-px px-12 radius-12">
        <iconify-icon icon="ion:search-outline"></iconify-icon>
    </button>
</form>

</div>
                        </div>

                        <div class="table-responsive mt-24">
                    <table id="" class="table basic-border-table" style="width:100%">
                        <thead>
                            <tr>
                                <th style="width : 10px !important; padding: 0.9rem 10px; text-align: center">
                                    <!-- Checkbox untuk select all -->
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" id="selectAll">
                                    </div>
                                </th>

                                <th scope="col" style="width : 10px !important; padding: 0.9rem 10px; text-align: center">

                                    NO

                                </th>
                                <th scope="col" style="padding: 0.9rem 7px; " class="">NAMA
                                </th>
                                <th scope="col" style="padding: 0.9rem 7px; " class="">KELAS
                                </th>


                             
                                <!-- Walikelas (hilang di mobile) -->
                                <th scope="col"  class="">AKSI</th>

                            </tr>
                        </thead>

                        <tbody>
                            @if ($siswa->count() > 0)
                                @foreach ($siswa as $s)
                                    <tr>

                                            <td style="width : 10px !important; padding: 0.9rem 10px; text-align: center">
                                        <div class="form-check">
                                            <input class="form-check-input select-item" type="checkbox"
                                                value="{{ $s->id }}">
                                        </div>
                                            </td>
                                            <td>{{ $loop->iteration }}</td>
                                      
                                        <td class="">
                                            {{ $s->nama ?? '-' }}
                                        </td>
                                        <td class="">
                                            {{ $s->kelas->nama_kelas ?? '-' }}
                                        </td>

                                


                                        {{-- Aksi --}}
                                        <td class="d-flex h-100 gap-1 align-items-center justify-content-center">
                                            <button
                                                class="btn btn-sm btn-success text-white btn-single-add"
                                                data-id="{{ $s->id }}"
                                              >
                                                <iconify-icon icon="flowbite:user-add-solid" class="text-lg"></iconify-icon>
                                            </button>

                                      
                                          
                                        </td>
                                    </tr>
                                @endforeach
                            @else
                                <tr>
                                    <td colspan="7" class="text-center">Tidak ada data</td>
                                </tr>
                            @endif
                        </tbody>

                    </table>
                        </div>

                    <div class="d-flex align-items-center justify-content-between flex-wrap gap-2 mt-24">
                 <span>
    Menampilkan
    {{ $siswa->firstItem() ?? 0 }} 
    sampai
    {{ $siswa->lastItem() ?? 0 }} 
    dari
    {{ $siswa->total() }} 
    data
</span>

               {{-- Mobile --}}
    <div class="d-block d-md-none">
        {{ $siswa->onEachSide(0)->links() }}
    </div>

    {{-- Desktop --}}
    <div class="d-none d-md-block">
        {{ $siswa->onEachSide(2)->links() }}
    </div>
                </div>

                </div>
             
            </div>
        </div>
    </div>

    @push('scripts')
<script>
let tableoke = $('#dataTableGuru').DataTable({
    responsive: true,
    autoWidth: false,
    pageLength: 25,
    ordering: false,
    language: {
        emptyTable: "Tidak ada data",
        info: "Menampilkan _START_ sampai _END_ dari _TOTAL_ data",
        infoEmpty: "Menampilkan 0 sampai 0 dari 0 data",
        lengthMenu: "Tampilkan _MENU_ data",
        loadingRecords: "Memuat...",
        processing: "Memproses...",
        search: "Cari:",
        zeroRecords: "Tidak ditemukan data yang cocok",
    },
    createdRow: function (row) {
        if (window.Iconify) {
            Iconify.scan(row);
        }
    },

    // 🔥 INI KUNCI NYA
    drawCallback: function () {
        if (window.Iconify) {
            Iconify.scan();
        }
    }
});
</script>

<script>
      $('#select_kelas').select2({
                theme: "bootstrap-5",
                //   closeOnSelect : false,
                placeholder: "Pilih Kelas",
                width: '100%',
                language: {
                    noResults: function() {
                        return "Tidak ada data";
                    }
                }

            });
$('#selectAll').on('change', function () {
    $('.select-item').prop('checked', $(this).is(':checked'));
});
</script>

<script>
$(document).on('click', '.btn-single-add', function () {
    let siswaId = $(this).data('id');

    Swal.fire({
        title: 'Tambah Peserta PKL?',
        icon: 'question',
        showCancelButton: true,
        confirmButtonText: 'Ya, Tambahkan'
    }).then((result) => {
        if (result.isConfirmed) {
            $.post("{{ route('admin.peserta-pkl.store.single') }}", {
                _token: "{{ csrf_token() }}",
                siswa_id: siswaId
            })
            .done(res => {
                Swal.fire('Berhasil', res.message, 'success')
                    .then(() => location.reload());
            })
            .fail(err => {
                Swal.fire('Gagal', err.responseJSON.message ?? 'Terjadi kesalahan', 'error');
            });
        }
    });
});
</script>

<script>
$('#btnMassal').on('click', function () {
    let siswaIds = $('.select-item:checked').map(function () {
        return $(this).val();
    }).get();

    if (siswaIds.length === 0) {
        Swal.fire('Oops', 'Pilih minimal 1 siswa', 'warning');
        return;
    }

    Swal.fire({
        title: 'Tambah Peserta PKL Massal?',
        text: `Jumlah siswa: ${siswaIds.length}`,
        icon: 'question',
        showCancelButton: true,
        confirmButtonText: 'Ya, Tambahkan'
    }).then((result) => {
        if (result.isConfirmed) {
            $.post("{{ route('admin.peserta-pkl.store.massal') }}", {
                _token: "{{ csrf_token() }}",
                siswa_ids: siswaIds
            })
            .done(res => {
                Swal.fire('Berhasil', res.message, 'success')
                    .then(() => location.reload());
            })
            .fail(() => {
                Swal.fire('Gagal', 'Terjadi kesalahan', 'error');
            });
        }
    });
});
</script>

      
    @endpush
@endsection
