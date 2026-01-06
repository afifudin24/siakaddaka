@extends('layouts.app')

@section('content')

    <div class="dashboard-main-body">

        <div class="d-flex flex-wrap align-items-center justify-content-between gap-3 mb-24">
            <h6 class="fw-semibold mb-0">Users Siswa</h6>
            <ul class="d-flex align-items-center gap-2">
                <li class="fw-medium">
                    <a href="index.html" class="d-flex align-items-center gap-1 hover-text-primary">
                        <iconify-icon icon="solar:home-smile-angle-outline" class="icon text-lg"></iconify-icon>
                        Dashboard
                    </a>
                </li>
                <li>-</li>
                <li class="fw-medium">Users</li>
            </ul>
        </div>

        <div class="card basic-data-table">
            <div class="card-header d-flex justify-content-between align-items-center">
                <h5 class="card-title mb-0">Data Users Siswa</h5>
                <div>
                    {{-- <div class="d-flex gap-2">
                    <a href="javascript:void(0)"
   id="btnTambahStaff"
   class="btn btn-primary text-sm btn-sm p-1 radius-4 d-flex align-items-center gap-2">
    <iconify-icon icon="lucide:plus" class="text-xl"></iconify-icon>
    <span class="d-none d-md-inline">Tambah</span>
</a>


                        <a href="{{ route('admin.siswa.importview') }}"
                            class="btn btn-success text-sm btn-sm p-1 radius-4 d-flex align-items-center gap-2">
                            <iconify-icon icon="ic:baseline-download" class="text-xl"></iconify-icon>
                            <span class="d-none d-md-inline">Import Siswa</span>
                        </a>
                    </div> --}}

                </div>

            </div>
            <div class="card-body">
          

                <div class="">

                    <form method="GET" class="mb-3">
                        <div class="d-flex align-items-center justify-content-between">
                            <div class="col-md-4 col-6">
                                <select name="status" class="form-select" id="select_status" onchange="this.form.submit()">
                                    <option value="all">Pilih Status</option>
                                    <option value="all" {{ request('status') == 'all' ? 'selected' : '' }}>Semua
                                    </option>
                                    <option value="true" {{ request('status') == 'true' ? 'selected' : '' }}>Aktif
                                    </option>
                                    <option value="false" {{ request('status') == 'false' ? 'selected' : '' }}>Tidak Aktif
                                    </option>
                                 
                                </select>
                            </div>
                        </form>
              

                        </div>
                        <div class="d-flex gap-2 justify-content-between">
                            <div class="d-flex gap-2">
                                   <form id="perPageForm" method="GET">

    {{-- Pertahankan parameter search --}}
    <input type="hidden" name="search" value="{{ request('search') }}">

    <select name="per_page" class="form-select form-select-sm w-auto ps-12 py-6 radius-12 h-40-px"
        onchange="document.getElementById('perPageForm').submit();">

        @for ($i = 10; $i <= 100; $i += 10)
            <option value="{{ $i }}" {{ request('per_page', 10) == $i ? 'selected' : '' }}>
                {{ $i }}
            </option>
        @endfor
    </select>

</form>
                  <form method="GET" class="navbar-search d-flex gap-2 align-items-center">

    {{-- Pertahankan paginate saat melakukan search --}}
    <input type="hidden" name="per_page" value="{{ request('per_page', 10) }}">

    <input type="text" class="bg-base h-40-px w-auto" 
           name="search" 
           placeholder="Cari User Siswa"
           value="{{ request('search') }}">
 <iconify-icon icon="ion:search-outline" class="icon"></iconify-icon>
    <button class="btn btn-primary  btn-sm h-40-px px-12 radius-12">
        <iconify-icon icon="ion:search-outline"></iconify-icon>
    </button>

</form>
                            </div>

                       <div class="d-flex gap-2">
    {{-- Aktifkan Semua --}}
    <button type="button"
        class="btn btn-success text-sm btn-sm p-1 radius-4 d-flex align-items-center gap-2 btn-toggle-all"
        data-url="{{ route('admin.users.siswa.aktifkansemua') }}"
        data-action="activate">
        <iconify-icon icon="mdi:toggle-switch" class="text-xl"></iconify-icon>
        <span class="d-none d-md-inline">Aktifkan Semua</span>
    </button>

    {{-- Nonaktifkan Semua --}}
    <button type="button"
        class="btn btn-danger text-sm btn-sm p-1 radius-4 d-flex align-items-center gap-2 btn-toggle-all"
        data-url="{{ route('admin.users.siswa.nonaktifkansemua') }}"
        data-action="deactivate">
        <iconify-icon icon="mdi:toggle-switch-off" class="text-xl"></iconify-icon>
        <span class="d-none d-md-inline">Nonaktifkan Semua</span>
    </button>
</div>

</div>

                    

             
   

    <input type="hide" id="actiontype" name="actiontype">
<div class="table-responsive">
                        <table class="table basic-border-table" style="width:100%">
                            <thead>
                                <tr>
                                  
                                    <th scope="col" style="width : 5px !important; padding: 0.9rem 7px; text-align: center">

                                        NO

                                    </th>

                                    <!-- Kode kelas (hilang di mobile) -->
                                    <th scope="col" style="width : 220px !important;" class="d-md-table-cell d-none">NAMA</th>
                                    <th scope="col" style="width : 150px !important;" class="d-md-none d-table-cell">NAMA</th>

                                    <!-- Jurusan (hilang di mobile) -->
                                    <th scope="col" style="width : 150px" class="">USERNAME</th>
                                    <th scope="col" style="width : 150px" class="">EMAIL</th>
                                    <th scope="col" style="width : 150px" class="">PASSWORD</th>

                                    <!-- Walikelas (hilang di mobile) -->
                                    <th scope="col" style="width : 40px !important" class="">AKSI</th>

                                </tr>
                            </thead>

                            <tbody>
                                @foreach ($siswa as $s)
                                    <tr id="user-{{ $s->id }}">
                                       
                                        <td class="text-center" style="width : 5px !important; padding: 7px; text-align: center">

                                            <span class="">{{ $loop->iteration }}</span>
                                        </td>
                                    <td class="d-none d-md-table-cell status-cell"
    data-id="{{ $s->id }}"
    style="width:220px !important; text-align: left;">
    
    {{ $s->nama }} <br>

    <span class="badge-status">
        @if ($s->is_active)
            <span class="badge bg-success-600 p-1 radius-4 text-white"
                  style="font-size: 10px;">
                Aktif
            </span>
        @else
            <span class="badge bg-danger-600 p-1 radius-4 text-white"
                  style="font-size: 10px;">
                Tidak Aktif
            </span>
        @endif
    </span>
</td>
                                         <td class="d-table-cell d-md-none" style="width:180px !important; text-align: left;">{{ $s->nama }} <br>
                                    

                                            @if ($s->is_active)
                                                <span class="badge bg-success-600 p-1 radius-4 text-white"
                                                    style="font-size: 10px;">
                                                    Aktif
                                                </span>
                                            @else
                                                <span class="badge bg-danger-600 p-1 radius-4 text-white"
                                                    style="font-size: 10px;">
                                                    Tidak Aktif
                                                </span>
                                            @endif
                                        </td>
                                        <!-- Kolom disembunyikan di mobile -->
                                        <td class="" style="width : 150px !important;">
                                            {{ $s->username }}
                                        </td>
                                          <td class="" style="width : 150px !important;">
                                            {{ $s->email }}
                                        </td>
                                        <td class="" style="width : 150px !important;">
                                          {{$s->password_text}}
                                           
                                        </td>

                                        <td style="width: 40px !important">
                                            {{-- jika is_active 1 maka tombolnya nonaktifkan dengan ikon --}}
                                            <div class="d-inline-flex gap-1">

                                        
                                         <a href="javascript:void(0)"
   class="btn-toggle-status w-32-px h-32-px rounded-circle d-inline-flex align-items-center justify-content-center
          {{ $s->is_active ? 'bg-success-focus text-success-main' : 'bg-danger-focus text-danger-main' }}"
   data-url="{{ route('admin.users.toggleStatus', $s->id) }}"
   data-id="{{ $s->id }}">
   
    @if ($s->is_active)
        <iconify-icon icon="mdi:toggle-switch"></iconify-icon>
    @else
        <iconify-icon icon="mdi:toggle-switch-off"></iconify-icon>
    @endif
</a>
{{-- tombol hapus --}}

    </div>


                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
</div>
                  
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

                    {{ $siswa->links() }}
                </div>
            </div>
        </div>
    </div>

    @push('scripts')
        <script>
            $('#select_status').select2({
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

         
        </script>
       
<script>
$(document).on('click', '.btn-toggle-status', function (e) {
    e.preventDefault();

    let button = $(this);
    let url = button.data('url');
    let userId = button.data('id');

    Swal.fire({
        title: 'Ubah Status?',
        text: 'Status pengguna akan diperbarui',
        icon: 'warning',
        showCancelButton: true,
        confirmButtonText: 'Ya, ubah',
        cancelButtonText: 'Batal'
    }).then((result) => {

        if (!result.isConfirmed) return;

        $.ajax({
            url: url,
            type: "POST",
            data: {
                _token: "{{ csrf_token() }}"
            },
            success: function (res) {
                if (res.status) {

                    // ===== TOGGLE BUTTON =====
                    if (res.is_active) {
                        button
                            .removeClass('bg-danger-focus text-danger-main')
                            .addClass('bg-success-focus text-success-main')
                            .html('<iconify-icon icon="mdi:toggle-switch"></iconify-icon>');
                    } else {
                        button
                            .removeClass('bg-success-focus text-success-main')
                            .addClass('bg-danger-focus text-danger-main')
                            .html('<iconify-icon icon="mdi:toggle-switch-off"></iconify-icon>');
                    }

                    // ===== UPDATE BADGE STATUS =====
                    let badgeContainer = $('.status-cell[data-id="'+userId+'"] .badge-status');

                    if (res.is_active) {
                        badgeContainer.html(`
                            <span class="badge bg-success-600 p-1 radius-4 text-white" style="font-size: 10px;">
                                Aktif
                            </span>
                        `);
                    } else {
                        badgeContainer.html(`
                            <span class="badge bg-danger-600 p-1 radius-4 text-white" style="font-size: 10px;">
                                Tidak Aktif
                            </span>
                        `);
                    }

                    // ===== SWEETALERT SUCCESS =====
                    Swal.fire({
                        icon: 'success',
                        title: res.is_active ? 'Aktif' : 'Nonaktif',
                        text: 'Status pengguna berhasil diperbarui',
                        timer: 1500,
                        showConfirmButton: false
                    });
                }
            },
            error: function () {
                Swal.fire({
                    icon: 'error',
                    title: 'Gagal',
                    text: 'Terjadi kesalahan saat mengubah status'
                });
            }
        });
    });
});
</script>

<script>
$(document).on('click', '.btn-toggle-all', function () {

    let button = $(this);
    let url = button.data('url');
    let action = button.data('action');

    let title = action === 'activate'
        ? 'Aktifkan Semua?'
        : 'Nonaktifkan Semua?';

    let text = action === 'activate'
        ? 'Semua siswa akan diaktifkan'
        : 'Semua siswa akan dinonaktifkan';

    Swal.fire({
        title: title,
        text: text,
        icon: 'warning',
        showCancelButton: true,
        confirmButtonText: 'Ya',
        cancelButtonText: 'Batal'
    }).then((result) => {

        if (!result.isConfirmed) return;

        button.prop('disabled', true);

        $.ajax({
            url: url,
            type: "POST",
            data: {
                _token: "{{ csrf_token() }}"
            },
            success: function (res) {

                if (res.status) {

                    // ===== UPDATE SEMUA TOGGLE BUTTON =====
                    $('.btn-toggle-status').each(function () {
                        let btn = $(this);

                        if (action === 'activate') {
                            btn
                                .removeClass('bg-danger-focus text-danger-main')
                                .addClass('bg-success-focus text-success-main')
                                .html('<iconify-icon icon="mdi:toggle-switch"></iconify-icon>');
                        } else {
                            btn
                                .removeClass('bg-success-focus text-success-main')
                                .addClass('bg-danger-focus text-danger-main')
                                .html('<iconify-icon icon="mdi:toggle-switch-off"></iconify-icon>');
                        }
                    });

                    // ===== UPDATE SEMUA BADGE STATUS =====
                    $('.badge-status').each(function () {
                        if (action === 'activate') {
                            $(this).html(`
                                <span class="badge bg-success-600 p-1 radius-4 text-white" style="font-size:10px;">
                                    Aktif
                                </span>
                            `);
                        } else {
                            $(this).html(`
                                <span class="badge bg-danger-600 p-1 radius-4 text-white" style="font-size:10px;">
                                    Tidak Aktif
                                </span>
                            `);
                        }
                    });

                    Swal.fire({
                        icon: 'success',
                        title: res.message,
                        timer: 1500,
                        showConfirmButton: false
                    });
                }
            },
            complete: function () {
                button.prop('disabled', false);
            },
            error: function (error) {
                console.log(error);
                button.prop('disabled', false);
                Swal.fire({
                    icon: 'error',
                    title: 'Gagal',
                    text: 'Terjadi kesalahan'
                });
            }
        });
    });
});
</script>


       <script>
$(document).on('click', '.btn-delete', function () {
    let id = $(this).data('id');

    Swal.fire({
        title: 'Yakin ingin menghapus?',
        text: "Data user akan dihapus permanen!",
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#d33',
        cancelButtonColor: '#3085d6',
        confirmButtonText: 'Ya, hapus!',
        cancelButtonText: 'Batal'
    }).then((result) => {
        if (result.isConfirmed) {
            $.ajax({
                url: `/admin/users/${id}`, // route admin.users.destroy
                type: 'POST',
                data: {
                    _token: '{{ csrf_token() }}',
                    _method: 'DELETE'
                },
                success: function (res) {
                    Swal.fire(
                        'Terhapus!',
                        res.message ?? 'User berhasil dihapus.',
                        'success'
                    );

                    // contoh: hapus baris tabel
                    $('#user-' + id).remove();
                },
                error: function () {
                    Swal.fire(
                        'Gagal!',
                        'Terjadi kesalahan saat menghapus data.',
                        'error'
                    );
                }
            });
        }
    });
});
</script>


    @endpush
@endsection
