@extends('layouts.app')

@section('content')

    <div class="dashboard-main-body">

        <div class="d-flex flex-wrap align-items-center justify-content-between gap-3 mb-24">
            <h6 class="fw-semibold mb-0">Mata Pelajaran</h6>
            <ul class="d-flex align-items-center gap-2">
                <li class="fw-medium">
                    <a href="index.html" class="d-flex align-items-center gap-1 hover-text-primary">
                        <iconify-icon icon="solar:home-smile-angle-outline" class="icon text-lg"></iconify-icon>
                        Dashboard
                    </a>
                </li>
                <li>-</li>
                <li class="fw-medium">Mata Pelajaran</li>
            </ul>
        </div>
        <div class="row">
            <div class="col-md-6">

                <div class="card basic-data-table">
                    <div class="card-header d-flex justify-content-between align-items-center">
                        <h5 class="card-title mb-0">Data Mata Pelajaran</h5>
                        <div>

                            <button data-bs-toggle="modal" data-bs-target="#tambahMapel" type="button"
                                class="btn btn-sm btn-primary d-flex align-items-center gap-2">
                                <iconify-icon icon="lucide:plus" class="text-xl"></iconify-icon> Tambah
                            </button>
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

                        {{-- buatkan error single nya --}}


                        <div class="d-flex justify-content-between mb-3">

                            <!-- Checkbox Select All -->
                            <!-- <div class="form-check style-check d-flex align-items-center">
            <input class="form-check-input" type="checkbox" id="checkAll">
            <label class="form-check-label ms-2">Pilih Semua</label>
        </div> -->

                            <!-- Dropdown Aksi Massal -->
                            <!-- <div>
            <div class="dropdown">
                <button class="btn btn-sm btn-success dropdown-toggle" type="button" data-bs-toggle="dropdown">
                    Aksi
                </button>
                <ul class="dropdown-menu">
                    <li>
                        <a class="dropdown-item text-danger" href="javascript:void(0)" id="deleteSelectedBtn">
                            Hapus Terpilih
                        </a>
                    </li>
                </ul>
            </div>
        </div> -->

                        </div>

                        <div class="table-responsive">
                            <table class="table basic-border-table mb-0" data-page-length='10'>

                                <thead>
                                    <tr>
                                        <th scope="col">
                                            <div class="d-flex align-items-center">
                                                <!-- <input class="form-check-input " type="checkbox" id="checkAll2"> -->
                                                <label class="ms-2">NO</label>
                                            </div>
                                        </th>
                                        <th scope="col">Kategori Mapel</th>
                                        <th scope="col">Mapel</th>
                                        <th scope="col">Aksi</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    @if($mapel->count() > 0)
                                    @foreach ($mapel as $mpl)
                                        <tr>
                                            <td>
                                          
                                                <span class="ms-2">{{ $loop->iteration }}</span>
                                            </td>

                                            <td>{{ $mpl->kategori->nama_kategori_mapel }}</td>
                                            <td>{{ $mpl->nama_mapel }}</td>
                                            <td>
                                                {{-- tombol edit --}}
                                                <a href="#" data-bs-toggle="modal"
                                                    data-bs-target="#editMapel{{ $mpl->id }}"
                                                    class="w-32-px h-32-px bg-success-focus text-success-main rounded-circle d-inline-flex align-items-center justify-content-center">
                                                    <iconify-icon icon="lucide:edit"></iconify-icon>
                                                </a>

                                                {{-- tombol delete --}}
                                                <form action="{{ route('admin.mapel.destroy', $mpl->id) }}" method="POST" class="delete-form d-inline">
    @csrf
    @method('DELETE')

    <a href="javascript:void(0)" class="btn-delete-mapel w-32-px h-32-px bg-danger-focus text-danger-main rounded-circle 
        d-inline-flex align-items-center justify-content-center" data-nama="{{ $mpl->nama_mapel }}">

        <iconify-icon icon="mingcute:delete-2-line"></iconify-icon>
    </a>
</form>
                                            </td>
                                        </tr>
                                    @endforeach
                                    @else
                                    <tr>
                                        <td colspan="4" class="text-center">Tidak ada data</td>
                                    </tr>
                                    @endif

                                </tbody>
                            </table>
                        </div>

                        {{-- MODAL EDIT & DELETE (BEADA DI LUAR FORM) --}}
                        @foreach ($mapel as $mpl)
                            @include('pages.admin.mapel.partials.modal_edit_mapel', ['mpl' => $mpl, 'kategorimapel' => $kategorimapel])
                          
                        @endforeach

                        <!-- start modal Tambah -->
                        @include('pages.admin.mapel.partials.modal_tambah_mapel', compact('kategorimapel'))
                        <!-- end modal tambah -->

                    </div>
                </div>
            </div>
            <div class="col-md-6 mt-5 mt-md-0">

                <div class="card basic-data-table">
                    <div class="card-header d-flex justify-content-between align-items-center">
                        <h5 class="card-title mb-0">Data Kategori Mapel</h5>
                        <div>

                            <button data-bs-toggle="modal" data-bs-target="#tambahKategoriMapel" type="button"
                                class="btn btn-sm btn-primary d-flex align-items-center gap-2">
                                <iconify-icon icon="lucide:plus" class="text-xl"></iconify-icon> Tambah
                            </button>
                        </div>

                    </div>
                    <div class="card-body">
                        @if (session('successkategori'))
                            <div class="alert alert-success alert-dismissible fade show" role="alert">
                                <strong>Sukses!</strong> {{ session('successkategori') }}
                                <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                            </div>
                        @endif

                      @if ($errors->errorkategori->any())
    @foreach ($errors->errorkategori->all() as $err)
        <div class="text-danger small">{{ $err }}</div>
    @endforeach
@endif

                        @error('nama_kategori_mapel', 'errorkategori')
    <div class="text-danger small">{{ $message }}</div>
@enderror


                        <div class="d-flex justify-content-between mb-3">

                        </div>

                        <div class="table-responsive">

                            <table class="table basic-border-table mb-0">
                                <thead class="rounded-0">
                                    <tr class="rounded-0">
                                        <th scope="col">
                                            <div class="d-flex align-items-center">
                                                <!-- <input class="form-check-input " type="checkbox" id="checkAll2"> -->
                                                <label class="ms-2">NO</label>
                                            </div>
                                        </th>
                                        <th scope="col">Nama Kategori</th>

                                        <th scope="col">Aksi</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    @if(count($kategorimapel) > 0)
                                    @foreach ($kategorimapel as $s)
                                        <tr>
                                            <td>

                                                <!-- <input class="form-check-input check-data" type="checkbox" name="selected[]" value="{{ $s->id }}"> -->
                                                <span class="ms-2">{{ $loop->iteration }}</span>
                                            </td>
                                            <td>{{ $s->nama_kategori_mapel }}</td>

                                            <td>

                                                <a href="javascript:void(0)" data-bs-toggle="modal"
                                                    data-bs-target="#editKategoriMapel{{ $s->id }}"
                                                    class="w-32-px h-32-px bg-success-focus text-success-main rounded-circle d-inline-flex align-items-center justify-content-center">
                                                    <iconify-icon icon="lucide:edit"></iconify-icon>
                                                </a>
                                                 <form action="{{ route('admin.kategori-mapel.destroy', $s->id) }}" method="POST" class="delete-form d-inline">
    @csrf
    @method('DELETE')

    <a href="javascript:void(0)" class="btn-delete w-32-px h-32-px bg-danger-focus text-danger-main rounded-circle 
        d-inline-flex align-items-center justify-content-center" data-nama="{{ $s->nama_kategori_mapel }}">

        <iconify-icon icon="mingcute:delete-2-line"></iconify-icon>
    </a>
</form>
                                            </td>
                                        </tr>
                                    @endforeach
                                    @else
                                    <tr>
                                        <td colspan="4" class="text-center">Tidak ada data</td>
                                    </tr>
                                    @endif
                                </tbody>
                            </table>

                        </div>

                        @foreach($kategorimapel as $s)
                            {{-- INCLUDE MODAL EDIT UNTUK DATA INI --}}
                            @include('pages.admin.mapel.partials.modal_edit_kategori_mapel', ['s' => $s])
                          
                        @endforeach

                        <!-- start modal Tambah -->

                        <!-- start modal Tambah -->
                        @include('pages.admin.mapel.partials.modal_tambah_kategori_mapel')
                        <!-- end modal tambah -->
                        </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

    @push('scripts')
        <script>
            // Select All Checkbox
            document.getElementById('checkAll').addEventListener('change', function() {
                document.querySelectorAll('.check-data').forEach(cb => cb.checked = this.checked);
            });

            document.getElementById('checkAll2').addEventListener('change', function() {
                document.querySelectorAll('.check-data').forEach(cb => cb.checked = this.checked);
            });

            // Hapus Massal
            document.getElementById('deleteSelectedBtn').addEventListener('click', function() {
                let checked = document.querySelectorAll('.check-data:checked');

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
                    confirmButtonText: 'Hapus'
                }).then((result) => {
                    if (result.isConfirmed) {
                        document.getElementById('massActionForm').submit();
                    }
                });
            });
        </script>

        
<script>
$(document).on('click', '.btn-delete', function(e) {
    e.preventDefault();

    const form = $(this).closest('form');

    console.log($(this).data('nama'));

    Swal.fire({
        title: "Yakin ingin menghapus kategori " + $(this).data('nama') + "?",
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

<script>
$(document).on('click', '.btn-delete-mapel', function(e) {
    e.preventDefault();

    const form = $(this).closest('form');

    console.log($(this).data('nama'));

    Swal.fire({
        title: "Yakin ingin menghapus mapel " + $(this).data('nama') + "?",
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

        <!-- modal edit  -->
    @endpush
@endsection
