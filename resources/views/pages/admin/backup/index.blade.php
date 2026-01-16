@extends('layouts.app')

@section('content')

    <div class="dashboard-main-body">

        <div class="d-flex flex-wrap align-items-center justify-content-between gap-3 mb-24">
            <h6 class="fw-semibold mb-0">Backup</h6>
           
        </div>

        <div class="card basic-data-table">
            <div class="card-header d-flex justify-content-between align-items-center">
                <h5 class="card-title mb-0">Data Backup</h5>
                <div>
                    <div class="d-flex gap-2">
                       <button id="btnBackup"
    class="btn btn-primary text-sm btn-sm p-1 radius-4 d-flex align-items-center gap-2">
    <iconify-icon icon="lucide:plus" class="text-xl"></iconify-icon>
    <span class="d-none d-md-inline">Backup</span>
</button>

                     
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

                
                          
           


                        <table class="table basic-border-table" style="width:100%">
                            <thead>
                                <tr>
                                 
                                    <th scope="col" style="width : 5px !important; padding: 0.9rem 7px; text-align: center">

                                        NO

                                    </th>
                                     <th scope="col" style="width : 220px !important;" class="d-md-table-cell d-none">FILE NAME</th>
               

                                    <!-- Kode kelas (hilang di mobile) -->
                                    <th scope="col" style="width : 180px !important;" class="d-md-table-cell d-none">SIZE BACKUP</th>
                                    <th scope="col" style="width : 100px !important;" class="d-md-none d-table-cell">SIZE BACKUP</th>

                                    <!-- Jurusan (hilang di mobile) -->
                                    <th scope="col" style="width : 150px" class="d-none d-md-table-cell">TANGGAL BACKUP</th>

                                    <!-- Walikelas (hilang di mobile) -->
                                    <th scope="col" style="width : 80px !important;" class="">AKSI</th>

                                </tr>
                            </thead>

                          <tbody>
                            @if($backup->count() > 0)
@foreach ($backup as $s)
<tr>
 

    {{-- No --}}
    <td class="text-center" style="width:5px; padding:7px;">
        {{ $loop->iteration }}
    </td>

    {{-- File Name (Desktop only) --}}
    <td class="d-none d-md-table-cell" style="width:220px;">
        {{ $s->file_name ?? '-' }}
    </td>

    {{-- Size Backup --}}
    <td class="d-none d-md-table-cell">
        <span class="badge bg-light text-dark text-xs">
            {{ number_format(($s->file_size ?? 0) / 1024, 2) }} KB
        </span>
    </td>

    {{-- Size Backup (Mobile) --}}
    <td class="d-md-none d-table-cell">
        {{ number_format(($s->file_size ?? 0) / 1024, 2) }} KB
    </td>

    {{-- Tanggal Backup --}}
    <td class="d-none d-md-table-cell" style="width:150px;">
        {{ $s->created_at->format('d-m-Y H:i') }}
    </td>

    {{-- Aksi --}}
    <td class="d-flex gap-1" style="width:100px;">
        <a href="{{ route('admin.backup.download', $s->id) }}"
           class="btn btn-sm btn-outline-success">
           <iconify-icon icon="lucide:download" class="icon"></iconify-icon>
        </a>

        <button class="btn btn-sm btn-outline-danger btn-delete"
                data-id="{{ $s->id }}">
           <iconify-icon icon="tabler:trash" class="icon"></iconify-icon>
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
    Showing 
    {{ $backup->firstItem() ?? 0 }} 
    to 
    {{ $backup->lastItem() ?? 0 }} 
    of 
    {{ $backup->total() }} 
    entries
</span>

                    {{ $backup->links() }}
                </div>
            </div>
        </div>
    </div>

    @push('scripts')
       <script>
$('#btnBackup').on('click', function () {
    Swal.fire({
        title: 'Backup Database',
        input: 'textarea',
        inputLabel: 'Catatan Backup',
        inputPlaceholder: 'Contoh: Backup sebelum update jadwal',
        showCancelButton: true,
        confirmButtonText: 'Simpan & Backup',
        cancelButtonText: 'Batal',
        preConfirm: (note) => {
            if (!note) {
                Swal.showValidationMessage('Catatan backup wajib diisi');
            }
            return note;
        }
    }).then((result) => {
        if (result.isConfirmed) {
            $.ajax({
                url: "{{ route('admin.backup.store') }}",
                type: "POST",
                data: {
                    _token: "{{ csrf_token() }}",
                    note: result.value
                },
                beforeSend: () => {
                    Swal.fire({
                        title: 'Proses Backup...',
                        text: 'Mohon tunggu, jangan tutup halaman',
                        allowOutsideClick: false,
                        didOpen: () => Swal.showLoading()
                    });
                },
                success: () => {
                    Swal.fire({
                        icon: 'success',
                        title: 'Berhasil',
                        text: 'Backup database berhasil'
                    }).then(() => location.reload());
                },
                error: (xhr) => {
                   let msg = 'Terjadi kesalahan saat backup';

    if (xhr.responseJSON && xhr.responseJSON.error) {
        msg = xhr.responseJSON.error;
    }

    Swal.fire({
        icon: 'error',
        title: 'Backup Gagal',
        text: msg
    });
                }
            });
        }
    });
});
</script>

        <script>
$(document).on('click', '.btn-delete', function (e) {
    e.preventDefault();

    const url = $(this).data('url');
    const row = $(this).closest('tr');
    console.log(url);

    Swal.fire({
        title: 'Yakin ingin menghapus?',
        text: 'Data siswa yang dihapus tidak dapat dikembalikan!',
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#d33',
        cancelButtonColor: '#3085d6',
        confirmButtonText: 'Ya, hapus!',
        cancelButtonText: 'Batal'
    }).then((result) => {
        if (result.isConfirmed) {
            $.ajax({
                url: url,
                type: 'DELETE',
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                success: function (res) {
                  Swal.fire({
    title: 'Berhasil!',
    text: res.message ?? 'Data siswa berhasil dihapus',
    icon: 'success',
    confirmButtonText: 'OK'
}).then(() => {
    location.reload();
});


                    // 🔥 hapus row tabel
                    row.fadeOut(300, function () {
                        $(this).remove();
                    });
                },
                error: function (xhr) {
                    Swal.fire(
                        'Gagal!',
                        xhr.responseJSON?.message ?? 'Terjadi kesalahan',
                        'error'
                    );
                }
            });
        }
    });
});
</script>

<script>
$(document).on('click', '.btn-delete', function () {
    let id = $(this).data('id');

    Swal.fire({
        title: 'Hapus Backup?',
        text: 'File backup akan dihapus permanen',
        icon: 'warning',
        showCancelButton: true,
        confirmButtonText: 'Ya, hapus',
        cancelButtonText: 'Batal'
    }).then((result) => {
        if (result.isConfirmed) {
            $.ajax({
                url: `/admin/backup/${id}`,
                type: 'DELETE',
                data: {
                    _token: '{{ csrf_token() }}'
                },
                beforeSend: () => {
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
                        text: res.message
                    }).then(() => location.reload());
                },
                error: function (xhr) {
                    console.log(xhr);
                    let msg = 'Gagal menghapus backup';

                    if (xhr.responseJSON && xhr.responseJSON.error) {
                        msg = xhr.responseJSON.error;
                    }

                    Swal.fire('Error', msg, 'error');
                }
            });
        }
    });
});
</script>


    @endpush
@endsection
