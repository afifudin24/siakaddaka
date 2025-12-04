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

            <button data-bs-toggle="modal" data-bs-target="#tambahTahunPelajaran" type="button" class="btn btn-sm btn-primary d-flex align-items-center gap-2"> 
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
         
     <div class="d-flex justify-content-between mb-3">

    <!-- Checkbox Select All -->
    <div class="form-check style-check d-flex align-items-center">
        <input class="form-check-input" type="checkbox" id="checkAll">
        <label class="form-check-label ms-2">Pilih Semua</label>
    </div>

    <!-- Dropdown Aksi Massal -->
    <div>
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
    </div>

</div>

<form id="massActionForm" method="POST" action="{{route('admin.kelas.massdelete')}}">
    @csrf
    @method('DELETE')

<table class="table bordered-table mb-0" id="dataTable" data-page-length='10'>
    <thead>
        <tr>
            <th scope="col">
                <div class="d-flex align-items-center">
                    <input class="form-check-input " type="checkbox" id="checkAll2">
                    <label class="ms-2">NO</label>
                </div>
            </th>
            <th scope="col">Nama Kelas</th>
            <th scope="col">Jurusan</th>
            <th scope="col">Walikelas</th>
            <th scope="col">Jumlah Siswa</th>
            <th scope="col">Aksi</th>
        </tr>
    </thead>

    <tbody>
        @foreach($kelas as $kls)
        <tr>
            <td>
             
                  <input class="form-check-input check-data" type="checkbox" name="selected[]" value="{{ $s->id }}">
                <span class="ms-2">{{ $loop->iteration }}</span>
            </td>
            <td>{{ $kls->nama }}</td>
            <td>{{ $kls->jurusan->nama }}</td>
            <td>{{ $kls->walikelas->guru->nama }}</td>
            <td>{{ $kls->siswa_count }}</td>
            <td>
                <a href="javascript:void(0)" class="w-32-px h-32-px bg-primary-light text-primary-600 rounded-circle d-inline-flex align-items-center justify-content-center">
                    <iconify-icon icon="iconamoon:eye-light"></iconify-icon>
                </a>
                 <a href="javascript:void(0)" 
           data-bs-toggle="modal" 
           data-bs-target="#modalEditS{{ $s->id }}"
           class="w-32-px h-32-px bg-success-focus text-success-main rounded-circle d-inline-flex align-items-center justify-content-center">
            <iconify-icon icon="lucide:edit"></iconify-icon>
        </a>
                <a href="javascript:void(0)" class="w-32-px h-32-px bg-danger-focus text-danger-main rounded-circle d-inline-flex align-items-center justify-content-center">
                    <iconify-icon icon="mingcute:delete-2-line"></iconify-icon>
                </a>
            </td>
        </tr>


        @endforeach
    </tbody>
</table>

</form>

@foreach($data as $s)
        {{-- INCLUDE MODAL EDIT UNTUK DATA INI --}}
@include('pages.admin.semester.partials.modal_edit', ['s' => $s])
@endforeach

       <!-- start modal Tambah -->
         @include('pages.admin.semester.partials.modal_tambah', compact('tahun_pelajaran'))

          <!-- end modal tambah -->
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

  @endpush
@endsection