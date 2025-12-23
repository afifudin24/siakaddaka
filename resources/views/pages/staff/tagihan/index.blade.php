@extends('layouts.app')

@section('content')

    <div class="dashboard-main-body">

        <div class="d-flex flex-wrap align-items-center justify-content-between gap-3 mb-24">
            <h6 class="fw-semibold mb-0">Tagihan</h6>
            <ul class="d-flex align-items-center gap-2">
                <li class="fw-medium">
                    <a href="index.html" class="d-flex align-items-center gap-1 hover-text-primary">
                        <iconify-icon icon="solar:home-smile-angle-outline" class="icon text-lg"></iconify-icon>
                        Dashboard
                    </a>
                </li>
                <li>-</li>
                <li class="fw-medium">Tagihan</li>
            </ul>
        </div>

        <div class="card basic-data-table">
            <div class="card-header d-flex justify-content-between align-items-center">
                <h5 class="card-title mb-0">Data Tagihan Siswa</h5>
                <div>
                    <div class="d-flex gap-2">
                        <a href="{{ route('admin.kelas.create') }}"
                            class="btn btn-primary text-sm btn-sm p-1 radius-4 d-flex align-items-center gap-2">
                            <iconify-icon icon="lucide:plus" class="text-xl"></iconify-icon>
                            <span class="d-none d-md-inline">Tambah Tagihan Massal</span>
                        </a>
                        <!--
                            <a href="{{ route('admin.siswa.importview') }}"
                                class="btn btn-success text-sm btn-sm p-1 radius-4 d-flex align-items-center gap-2">
                                <iconify-icon icon="ic:baseline-download" class="text-xl"></iconify-icon>
                                <span class="d-none d-md-inline">Import Siswa</span>
                            </a> -->
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
        <div class="d-flex align-items-center justify-content-start gap-2">
            
            <!-- Filter Kelas -->
            <div class="col-md-3 col-4">
                <select name="kelas_id" class="form-select" onchange="this.form.submit()">
                    <option value="">Kelas</option>
                    <option value="all" {{ request('kelas_id') == 'all' ? 'selected' : '' }}>Semua</option>
                    <option value="null" {{ request('kelas_id') == 'null' ? 'selected' : '' }}>Tanpa Kelas</option>
                    @foreach ($kelas as $k)
                        <option value="{{ $k->id }}" {{ request('kelas_id') == $k->id ? 'selected' : '' }}>
                            {{ $k->nama_kelas }}
                        </option>
                    @endforeach
                </select>
            </div>

            <!-- Filter Tingkat Kelas -->
            <div class="col-md-3 col-4">
                <select name="tingkat" class="form-select" onchange="this.form.submit()">
                    <option value="">Tingkat</option>
                    @foreach ([10,11,12] as $t)
                        <option value="{{ $t }}" {{ request('tingkat') == $t ? 'selected' : '' }}>
                            {{ $t }}
                        </option>
                    @endforeach
                </select>
            </div>

            <!-- Filter Status Tagihan -->
            <div class="col-md-3 col-4">
                <select name="status" class="form-select" onchange="this.form.submit()">
                    <option value="">Status Tagihan</option>
                    <option value="lunas" {{ request('status') == 'lunas' ? 'selected' : '' }}>Lunas</option>
                    <option value="belum lunas" {{ request('status') == 'belum lunas' ? 'selected' : '' }}>Belum Lunas</option>
                </select>
            </div>

        </div>
    </form>
</div>

                <div class="d-flex gap-2">
                    <form id="perPageForm" method="GET">

                        {{-- Pertahankan parameter search --}}
                        <input type="hidden" name="search" value="{{ request('search') }}">

                        <select name="paginate" class="form-select form-select-sm w-auto ps-12 py-6 radius-12 h-40-px"
                            onchange="document.getElementById('perPageForm').submit();">

                            @for ($i = 10; $i <= 100; $i += 10)
                                <option value="{{ $i }}" {{ request('paginate', 10) == $i ? 'selected' : '' }}>
                                    {{ $i }}
                                </option>
                            @endfor
                        </select>

                    </form>
                    <form method="GET" class="navbar-search d-flex gap-2 align-items-center">

                        {{-- Pertahankan paginate saat melakukan search --}}
                        <input type="hidden" name="paginate" value="{{ request('paginate', 10) }}">

                        <input type="text" class="bg-base h-40-px w-auto" name="search" placeholder="Cari siswa"
                            value="{{ request('search') }}">
                        <iconify-icon icon="ion:search-outline" class="icon"></iconify-icon>
                        <button class="btn btn-primary  btn-sm h-40-px px-12 radius-12">
                            <iconify-icon icon="ion:search-outline"></iconify-icon>
                        </button>

                    </form>
                </div>



                <form id="massActionForm" method="POST">
                    @csrf


                    <input type="hide" id="actiontype" name="actiontype">

                    <table class="table basic-border-table" style="width:100%">
                        <thead>
                            <tr>

                                <th scope="col" style="width : 5px !important; padding: 0.9rem 7px; text-align: center">

                                    NO

                                </th>

                                <!-- Kode kelas (hilang di mobile) -->
                                <th scope="col" style="width : 220px !important;" class="d-md-table-cell d-none">NAMA &
                                    KELAS</th>
                                <th scope="col" style="width : 150px !important;" class="d-md-none d-table-cell">NAMA &
                                    KELAS</th>

                                <!-- Jurusan (hilang di mobile) -->
                                <th scope="col" style="width : 150px" class="d-none d-md-table-cell">NIS & NISN</th>

                                <!-- Walikelas (hilang di mobile) -->
                                <th scope="col" style="width : 80px !important;" class="">AKSI</th>

                            </tr>
                        </thead>

                        <tbody>
                            @foreach ($siswa as $s)
                                <tr>

                                    <td class="text-center"
                                        style="width : 5px !important; padding: 7px; text-align: center">

                                        <span class="">{{ $loop->iteration }}</span>
                                    </td>
                                    <td class="d-none d-md-table-cell" style="width:220px !important; text-align: left;">
                                        {{ $s->nama }} <br>
                                        <span class="badge bg-info-600 p-1 radius-4 text-white" style="font-size: 10px;">
                                            {{ $s->kelas->nama_kelas ?? '-' }}
                                        </span>
                                        <span class="badge bg-warning-600 p-1 radius-4 text-white"
                                            style="font-size: 10px;">
                                            {{ $s->jenis_kelamin ?? '-' }}
                                        </span>

                                     
                                    </td>

                                    <td class="d-table-cell d-md-none" style="width:180px !important; text-align: left;">
                                        {{ $s->nama }} <br>
                                        <span class="badge bg-info-600 p-1 radius-4 text-white" style="font-size: 10px;">
                                            {{ $s->kelas->nama_kelas ?? '-' }}
                                        </span>
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
                                        <span class="badge text-xs fw-semibold bg-light-100 p-1 radius-4 text-dark"
                                            style="font-size : 10px;">{{ $s->nis }} </span> <br>
                                        <span class="badge text-xs fw-semibold bg-light-100 p-1 radius-4 text-dark"
                                            style="font-size : 10px;">{{ $s->nisn }}</span>
                                    </td>

                                    <td style="width : 120px !important;">

                                        <a href="{{ route('staff.tagihan.tampilkantagihan', $s->id) }}"
                                            class="d-none d-md-inline-flex p-1 btn btn-small btn-sm btn-info d-inline-flex align-items-center gap-1 justify-content-center">
                                            <iconify-icon icon="mdi:eye"></iconify-icon>
                                            Lihat Tagihan
                                        </a>

                                         <a href="{{ route('staff.tagihan.edit', $s->id) }}"
                                            class="d-md-none d-md-inline-flex p-1 btn btn-small btn-sm btn-info d-inline-flex align-items-center gap-1 justify-content-center">
                                            <iconify-icon icon="mdi:eye"></iconify-icon>
                                            Tagihan
                                        </a>

                                 


                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </form>
            </div>
            <div class="d-flex align-items-center justify-content-between flex-wrap gap-2 mt-24">
                <span>
                    Showing
                    {{ $siswa->firstItem() ?? 0 }}
                    to
                    {{ $siswa->lastItem() ?? 0 }}
                    of
                    {{ $siswa->total() }}
                    entries
                </span>

                {{ $siswa->links() }}
            </div>
        </div>
    </div>
    </div>

    @push('scripts')
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

            // Select All Checkbox
            document.getElementById('checkAll2').addEventListener('change', function() {
                console.log(this.checked);
                console.log(document.querySelectorAll('.check-data'));
                document.querySelectorAll('.check-data').forEach(cb => cb.checked = this.checked);
            });


            // Hapus Massal
            document.getElementById('deleteSelectedBtn').addEventListener('click', function() {
                let checked = document.querySelectorAll('.check-data:checked');
                let actiontype = document.getElementById('actiontype').value;
                let form = document.getElementById('massActionForm');

                actiontype = 'delete';
                form.action = "{{ route('admin.siswa.massdelete') }}";
                form.insertAdjacentHTML('beforeend', '@method('DELETE')');
                if (checked.length === 0) {
                    Swal.fire({
                        icon: 'warning',
                        title: 'Oops!',
                        text: 'Tidak ada data yang dipilih.',
                        confirmButtonColor: '#d33'
                    });
                    return;
                }

                Swal.fire({
                    title: 'Yakin ingin menghapus?',
                    text: checked.length + " data akan dihapus!",
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#d33',
                    cancelButtonColor: '#3085d6',
                    confirmButtonText: 'Hapus',
                    cancelButtonText: 'Batal'

                }).then((result) => {
                    if (result.isConfirmed) {
                        document.getElementById('massActionForm').submit();
                    }
                });
            });

            document.getElementById('leaveSelectedBtn').addEventListener('click', function() {
                let checked = document.querySelectorAll('.check-data:checked');
                let actiontype = document.getElementById('actiontype').value;
                actiontype = 'leave';
                let form = document.getElementById('massActionForm');
                form.action = "{{ route('admin.siswa.massleave') }}";
                form.querySelector('[name="_method"]')?.remove(); // hapus _method lama
                if (checked.length === 0) {
                    Swal.fire({
                        icon: 'warning',
                        title: 'Oops!',
                        text: 'Tidak ada data yang dipilih.',
                        confirmButtonColor: '#d33'
                    });
                    return;
                }

                Swal.fire({
                    title: 'Yakin ingin menghapus?',
                    text: checked.length + " data akan dihapus!",
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#d33',
                    cancelButtonColor: '#3085d6',
                    confirmButtonText: 'Hapus',
                    cancelButtonText: 'Batal'

                }).then((result) => {
                    if (result.isConfirmed) {
                        document.getElementById('massActionForm').submit();
                    }
                });
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
            $(document).on('click', '.btn-delete', function(e) {
                e.preventDefault();

                const form = $(this).closest('form');

                Swal.fire({
                    title: "Yakin ingin menghapus?",
                    text: "Data yang dihapus tidak bisa dikembalikan!",
                    icon: "warning",
                    showCancelButton: true,
                    confirmButtonColor: "#d33",
                    cancelButtonColor: "#6c757d",
                    confirmButtonText: "Ya, hapus!",
                    cancelButtonText: "Batal",
                }).then((result) => {
                    if (result.isConfirmed) {
                        form.submit();
                    }
                });
            });
        </script>
    @endpush
@endsection
