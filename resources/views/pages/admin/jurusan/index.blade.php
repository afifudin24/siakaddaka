@extends('layouts.app')

@section('content')

  <div class="dashboard-main-body">

    <div class="d-flex flex-wrap align-items-center justify-content-between gap-3 mb-24">
  <h6 class="fw-semibold mb-0">Jurusan</h6>
  <ul class="d-flex align-items-center gap-2">
    <li class="fw-medium">
      <a href="/admin/dashboard" class="d-flex align-items-center gap-1 hover-text-primary">
        <iconify-icon icon="solar:home-smile-angle-outline" class="icon text-lg"></iconify-icon>
        Dashboard
      </a>
    </li>
    <li>-</li>
    <li class="fw-medium">Jurusan</li>
  </ul>
</div>

<div class="row">
    <div class="col-md-6">
 
<!-- Data Table -->
     <div class="card basic-data-table md-col-6">
      <div class="card-header d-flex justify-content-between align-items-center">
            <h5 class="card-title mb-0">Data Jurusan</h5>
        <div>

            <button data-bs-toggle="modal" data-bs-target="#tambahJurusan" type="button" class="btn btn-sm btn-primary d-flex align-items-center gap-2"> 
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

    <div class="table-responsive">

    <table class="table basic-border-table  mb-0" data-page-length='10'>
    <thead>
        <tr>
            <th scope="col">
                <div class="d-flex align-items-center">
                    <!-- <input class="form-check-input " type="checkbox" id="checkAll2"> -->
                    <label class="ms-2">NO</label>
                </div>
            </th>
            <th scope="col">Kode Jurusan</th>
            <th scope="col">Jurusan</th>
            
            <th scope="col">Aksi</th>
        </tr>
    </thead>

    <tbody>
        @if($jurusan->count() > 0)

        @foreach($jurusan as $j)
        <tr>
            <td>
             
                  <!-- <input class="form-check-input check-data" type="checkbox" name="selected[]" value="{{ $j->id }}"> -->
                <span class="ms-2">{{ $loop->iteration }}</span>
            </td>
            <td>{{ $j->kode_jurusan }}</td>
            <td>{{ $j->nama_jurusan }}</td>
          
            <td>
             
                 <a href="javascript:void(0)" 
           data-bs-toggle="modal" 
           data-bs-target="#modalEditJ{{ $j->id }}"
           class="w-32-px h-32-px bg-success-focus text-success-main rounded-circle d-inline-flex align-items-center justify-content-center">
            <iconify-icon icon="lucide:edit"></iconify-icon>
        </a>
                 <a href="#" data-bs-toggle="modal" data-bs-target="#modalDeleteJ{{ $j->id }}"
               class="w-32-px h-32-px bg-danger-focus text-danger-main rounded-circle d-inline-flex align-items-center justify-content-center">
                <iconify-icon icon="mingcute:delete-2-line"></iconify-icon>
            </a>
            </td>
        </tr>

        @include('pages.admin.jurusan.partials.modal_edit', ['j' => $j])
 @include('pages.admin.jurusan.partials.modal_delete', ['j' => $j])


        @endforeach
        @else
        <tr>
            <td colspan="7" class="text-center">Tidak ada data</td>
        </tr>
        @endif
    </tbody>
    </table>
    </div>

    <!-- Modal Tambah Jurusan -->
    @include('pages.admin.jurusan.partials.modal_tambah')
    <!-- End Modal Tambah Jurusan -->

<!-- End Data Table -->
</div>


</div>
</div>
</div>

</div>

@endsection