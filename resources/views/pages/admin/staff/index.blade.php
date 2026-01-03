@extends('layouts.app')

@section('content')

    <div class="dashboard-main-body">

        <div class="d-flex flex-wrap align-items-center justify-content-between gap-3 mb-24">
            <h6 class="fw-semibold mb-0">Staff</h6>
            <ul class="d-flex align-items-center gap-2">
                <li class="fw-medium">
                    <a href="index.html" class="d-flex align-items-center gap-1 hover-text-primary">
                        <iconify-icon icon="solar:home-smile-angle-outline" class="icon text-lg"></iconify-icon>
                        Dashboard
                    </a>
                </li>
                <li>-</li>
                <li class="fw-medium">Staff</li>
            </ul>
        </div>

        <div class="card basic-data-table">
            <div class="card-header d-flex justify-content-between align-items-center">
                <h5 class="card-title mb-0">Data Staff</h5>
                <div>
                    <div class="d-flex gap-2">
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
                    </div>

                </div>

            </div>
            <div class="card-body">
                @if (session('success'))
                    <div class="alert alert-success alert-dismissible fade show" role="alert">
                        <strong>Sukses!</strong> {{ session('success') }}
                        <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                    </div>
                @endif

                @if ($errors->any())
                    <div class="alert alert-danger alert-dismissible fade show" role="alert">
                        <strong>Terjadi kesalahan!</strong>
                        <ul class="mt-2 mb-0 ps-3">
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                        <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                    </div>
                @endif

                <!-- error single -->
                @if (session('error'))
                    <div class="alert alert-danger alert-dismissible fade show" role="alert">
                        {{ session('error') }}
                        <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                    </div>
                @endif

                <div class="">

                    <form method="GET" class="mb-3">
                        <div class="d-flex align-items-center justify-content-between">
                            <div class="col-md-4 col-6">
                                <select name="jabatan" class="form-select" id="select_jenis" onchange="this.form.submit()">
                                    <option value="all">Pilih Jabatan</option>
                                    <option value="all" {{ request('jabatan') == 'all' ? 'selected' : '' }}>Semua
                                    </option>
                                    <option value="keuangan" {{ request('jabatan') == 'keuangan' ? 'selected' : '' }}>Keuangan
                                    </option>
                                    <option value="administrasi" {{ request('jabatan') == 'administrasi' ? 'selected' : '' }}>Administrasi
                                    </option>
                                 
                                </select>
                            </div>
                        </form>
              

                        </div>
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
           placeholder="Cari staff"
           value="{{ request('search') }}">
 <iconify-icon icon="ion:search-outline" class="icon"></iconify-icon>
    <button class="btn btn-primary  btn-sm h-40-px px-12 radius-12">
        <iconify-icon icon="ion:search-outline"></iconify-icon>
    </button>

</form>
</div>

                    

             
   

    <input type="hide" id="actiontype" name="actiontype">

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
                                    <th scope="col" style="width : 150px" class="d-none d-md-table-cell">EMAIL</th>
                                    <th scope="col" style="width : 150px" class="d-none d-md-table-cell">JABATAN</th>

                                    <!-- Walikelas (hilang di mobile) -->
                                    <th scope="col" style="width : 80px !important;" class="">AKSI</th>

                                </tr>
                            </thead>

                            <tbody>
                                @foreach ($staff as $s)
                                    <tr>
                                       
                                        <td class="text-center" style="width : 5px !important; padding: 7px; text-align: center">

                                            <span class="">{{ $loop->iteration }}</span>
                                        </td>
                                        <td class="d-none d-md-table-cell" style="width:220px !important; text-align: left;">{{ $s->nama }} <br>
                                          
                                            <span class="badge bg-warning-600 p-1 radius-4 text-white"
                                                style="font-size: 10px;">
                                                {{ $s->jenis_kelamin ?? '-' }}
                                            </span>

                                            @if ($s->user->is_active)
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

                                         <td class="d-table-cell d-md-none" style="width:180px !important; text-align: left;">{{ $s->nama }} <br>
                                          
                                            <span class="badge bg-warning-600 p-1 radius-4 text-white"
                                                style="font-size: 10px;">
                                                {{ $s->jenis_kelamin ?? '-' }}
                                            </span>

                                            @if ($s->user->is_active)
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
                                        <td class="d-none d-md-table-cell" style="width : 150px !important;">
                                            {{ $s->email }}
                                        </td>
                                        <td class="d-none d-md-table-cell" style="width : 150px !important;">
                                            @if($s->jabatan == 'keuangan')

                                            <span class="badge text-xs text-capitalize fw-semibold bg-light-100 p-1 radius-4 text-dark"
                                                style="font-size : 10px;">{{ $s->jabatan }} </span> 
                                            @else
                                            <span class="badge text-xs text-capitalize fw-semibold bg-secondary text-light p-1 radius-4"
                                                style="font-size : 10px;">{{ $s->jabatan }} </span> 
                                            @endif
                                           
                                        </td>

                                        <td  style="width : 120px !important;">

                                            <a href="{{ route('admin.staff.edit', $s->id) }}"
                                                class="w-32-px h-32-px bg-warning-focus text-success-main rounded-circle d-inline-flex align-items-center justify-content-center">
                                                <iconify-icon icon="mdi:account-edit"></iconify-icon>
                                            </a>

                                            <form class="delete-form d-inline">
    @csrf
    @method('DELETE')

    <a href="javascript:void(0)"
       class="btn-delete w-32-px h-32-px bg-danger-focus text-danger-main rounded-circle 
              d-inline-flex align-items-center justify-content-center"
       data-id="{{ $s->id }}"
       data-url="{{ route('admin.staff.destroy', $s->id) }}">
        <iconify-icon icon="mingcute:delete-2-line"></iconify-icon>
    </a>
</form>

                                           

                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                  
                </div>
   <div class="d-flex align-items-center justify-content-between flex-wrap gap-2 mt-24">
                 <span>
    Menampilkan
    {{ $staff->firstItem() ?? 0 }} 
    sampai 
    {{ $staff->lastItem() ?? 0 }} 
    dari
    {{ $staff->total() }} 
    data
</span>

                    {{ $staff->links() }}
                </div>
            </div>
        </div>
    </div>

    @push('scripts')
        <script>
            $('#select_jenis').select2({
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
            $('#dataTableKelas').DataTable({
                responsive: true,
                autoWidth: false,
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
        </script>

        <script>
         $(document).on('click', '.btn-delete', function (e) {
    e.preventDefault();

    let btn = $(this);
    let url = btn.data('url');
    let row = btn.closest('tr');

    Swal.fire({
        title: "Yakin ingin menghapus?",
        text: "Data yang dihapus tidak bisa dikembalikan!",
        icon: "warning",
        showCancelButton: true,
        confirmButtonColor: "#EF4444",
        cancelButtonColor: "#6B7280",
        confirmButtonText: "Ya, hapus!",
        cancelButtonText: "Batal",
    }).then((result) => {
        if (result.isConfirmed) {

            $.ajax({
                url: url,
                type: "POST",
                data: {
                    _token: "{{ csrf_token() }}",
                    _method: "DELETE"
                },
                beforeSend: function () {
                    Swal.fire({
                        title: 'Menghapus...',
                        allowOutsideClick: false,
                        didOpen: () => Swal.showLoading()
                    });
                },
                success: function (res) {
                    Swal.fire({
                        icon: 'success',
                        title: 'Berhasil',
                        text: res.message ?? 'Data berhasil dihapus',
                        timer: 1500,
                        showConfirmButton: false
                    });

                    // 🔥 hapus row tabel tanpa reload
                    row.fadeOut(300, function () {
                        $(this).remove();
                    });
                },
                error: function (xhr) {
                    Swal.fire({
                        icon: 'error',
                        title: 'Gagal',
                        text: xhr.responseJSON?.message ?? 'Terjadi kesalahan'
                    });
                }
            });

        }
    });
});
        </script>

        
            <script>
$('#btnTambahStaff').on('click', function () {
    Swal.fire({
        title: 'Tambah Staff',
        html: `
            <form id="formTambahStaff">
                <div class="row g-2 text-start">
                    <!-- KIRI -->
                    <div class="col-md-6">
                        <label class="form-label">Nama</label>
                        <input type="text" name="nama" class="form-control">

                        <label class="form-label mt-2">Email</label>
                        <input type="email" name="email" class="form-control">

                        <label class="form-label mt-2">Jabatan</label>
                        <select name="jabatan" class="form-select">
                            <option value="">-- Pilih Jabatan --</option>
                            <option value="administrasi">Administrasi</option>
                            <option value="keuangan">Keuangan</option>
                        </select>
                    </div>

                    <!-- KANAN -->
                    <div class="col-md-6">
                        <label class="form-label">Username</label>
                        <input type="text" name="username" class="form-control">

                        <label class="form-label mt-2">Password</label>
                        <input type="password" name="password" class="form-control">

                          <label class="form-label mt-2">Jenis Kelamin</label>
                        <select name="jenis_kelamin" class="form-select">
                            <option value="">-- Pilih Jenis Kelamin --</option>
                            <option value="L">Laki - laki</option>
                            <option value="P">Perempuan</option>
                        </select>
                    </div>
                </div>
            </form>
        `,
        showCancelButton: true,
        confirmButtonText: `
        <div class="d-flex align-items-center gap-2">
            <iconify-icon icon="lucide:save"></iconify-icon> Simpan
        </div>
        `,
        cancelButtonText: `
            <div class="d-flex align-items-center gap-2">
            <iconify-icon icon="lucide:x"></iconify-icon> Batal
            </div>
        `,
        focusConfirm: false,
        preConfirm: () => {
            const form = document.getElementById('formTambahStaff');
            const formData = new FormData(form);
            formData.append('_token', '{{ csrf_token() }}');

            return $.ajax({
                url: "{{ route('admin.staff.store') }}",
                type: "POST",
                data: formData,
                processData: false,
                contentType: false
            }).catch(xhr => {
                console.log(xhr);
                let msg = 'Terjadi kesalahan';
                if (xhr.status === 422) {
                    msg = '<ul class="text-start">';
                    $.each(xhr.responseJSON.errors, function (k, v) {
                        msg += `<li>${v[0]}</li>`;
                    });
                    msg += '</ul>';
                }
                Swal.showValidationMessage(msg);
            });
        }
    }).then((result) => {
        if (result.isConfirmed) {
            Swal.fire({
                icon: 'success',
                title: 'Berhasil',
                text: 'Staff berhasil ditambahkan',
                timer: 1500,
                showConfirmButton: false
            }).then(() => location.reload());
        }
    });
});
</script>

    @endpush
@endsection
