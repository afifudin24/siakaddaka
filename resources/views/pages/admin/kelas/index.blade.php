@extends('layouts.app')

@section('content')

  <div class="dashboard-main-body">

    <div class="d-flex flex-wrap align-items-center justify-content-between gap-3 mb-24">
  <h6 class="fw-semibold mb-0">Kelas</h6>
  <ul class="d-flex align-items-center gap-2">
    <li class="fw-medium">
      <a href="index.html" class="d-flex align-items-center gap-1 hover-text-primary">
        <iconify-icon icon="solar:home-smile-angle-outline" class="icon text-lg"></iconify-icon>
        Dashboard
      </a>
    </li>
    <li>-</li>
    <li class="fw-medium">Kelas</li>
  </ul>
</div>
    
    <div class="card basic-data-table">
      <div class="card-header d-flex justify-content-between align-items-center">
            <h5 class="card-title mb-0">Data Kelas</h5>
        <div>

            <a href="{{route('admin.kelas.create')}}" class="btn btn-sm btn-primary d-flex align-items-center gap-2"> 
                <iconify-icon icon="lucide:plus" class="text-xl"></iconify-icon> Tambah
</a>
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


<table class="table basic-border-table mb-0" id="dataTableKelas" style="width:100%">
    <thead>
        <tr>
            <th scope="col">
                <div class="d-flex align-items-center">
                 
                    <label class="ms-2">NO</label>
                </div>
            </th>
            <th scope="col">Nama Kelas</th>
            <!-- Kode kelas (hilang di mobile) -->
        <th scope="col" class="d-none d-md-table-cell">Kode Kelas</th>

        <!-- Jurusan (hilang di mobile) -->
        <th scope="col" class="d-none d-md-table-cell">Jurusan</th>

        <!-- Walikelas (hilang di mobile) -->
        <th scope="col" class="d-none d-md-table-cell">Walikelas</th>
            <th scope="col" class="d-none d-md-table-cell">Jumlah Siswa</th>
            <th scope="col" class="d-table-cell d-md-none"> Siswa</th>
            <th scope="col">Aksi</th>
        </tr>
    </thead>

    <tbody>
        @foreach($kelas as $kls)
        <tr>
            <td>

                <span class="ms-2">{{ $loop->iteration }}</span>
            </td>
            <td>{{ $kls->nama_kelas }}</td>
             <!-- Kolom disembunyikan di mobile -->
        <td class="d-none d-md-table-cell">{{ $kls->kode_kelas }}</td>
        <td class="d-none d-md-table-cell">{{ $kls->jurusan->nama_jurusan }}</td>
        <td class="d-none d-md-table-cell">{{ $kls->walikelas->guru->nama ?? '-' }}</td>

            <td class="d-none d-md-table-cell">{{ $kls->siswa_count }} Siswa</td>
            <td class="d-table-cell d-md-none">{{ $kls->siswa_count }}</td>
            <td>
                <a href="{{route('admin.kelas.show', $kls->id)}}" class="w-32-px h-32-px bg-primary-light text-primary-600 rounded-circle d-inline-flex align-items-center justify-content-center">
                    <iconify-icon icon="iconamoon:eye-light"></iconify-icon>
                </a>
                 <a href="{{route('admin.kelas.edit', $kls->id)}}" 
          
           class="w-32-px h-32-px bg-success-focus text-success-main rounded-circle d-inline-flex align-items-center justify-content-center">
            <iconify-icon icon="lucide:edit"></iconify-icon>
        </a>
               <form action="{{ route('admin.kelas.destroy', $kls->id) }}" method="POST" class="delete-form d-inline">
    @csrf
    @method('DELETE')

    <a href="javascript:void(0)" class="btn-delete w-32-px h-32-px bg-danger-focus text-danger-main rounded-circle 
        d-inline-flex align-items-center justify-content-center">

        <iconify-icon icon="mingcute:delete-2-line"></iconify-icon>
    </a>
</form>

            </td>
        </tr>


        @endforeach
    </tbody>
</table>
</div>

        </tbody>
        </table>
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
    $('#dataTableKelas').DataTable({
          responsive: true,
    autoWidth: false,
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