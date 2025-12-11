@extends('layouts.app')

@section('content')
<div class="dashboard-main-body">

    <div class="d-flex justify-content-between align-items-center mb-3">
        <h5>Tambah Guru</h5>
        <a href="{{ route('admin.guru.index') }}" class="btn btn-danger btn-sm d-flex align-items-center gap-2">
             <iconify-icon icon="lucide:arrow-left" class="text-xl"></iconify-icon> Kembali
        </a>
    </div>
    <form action="{{ route('admin.guru.store') }}" method="POST">
        @csrf
        
      <div class="card basic-data-table">
      <div class="card-header d-flex justify-content-between align-items-center">
            <h5 class="card-title mb-0">Tambah Guru</h5>
        <div>

            <button type="submit" class="btn btn-sm btn-success d-flex align-items-center gap-2"> 
                <iconify-icon icon="lucide:save" class="text-xl"></iconify-icon> Simpan
</button>
        </div>

      </div>

      <div class="card-body">
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
@if (session('error'))
    <div class="alert alert-danger alert-dismissible fade show" role="alert">
        {{ session('error') }}
        <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
    </div>
@endif
<div class="row">
    <div class="col-md-6">
       <div class="col-12">
                <label class="form-label">Nama</label>
                <div class="icon-field">
                  <span class="icon">
                    <iconify-icon icon="f7:person"></iconify-icon>
                  </span>
                  <input type="text" name="nama" class="form-control" placeholder="Masukkan Nama">
                </div>
              </div>
           <div class="col-12">
                <label class="form-label">Email</label>
                <div class="icon-field">
                  <span class="icon">
                    <iconify-icon icon="f7:person"></iconify-icon>
                  </span>
                  <input type="email" name="email" class="form-control" placeholder="Masukkan Email">
                </div>
              </div>
    </div>
    <div class="col-md-6">
        <div class="col-12">
                <label class="form-label">Username</label>
                <div class="icon-field">
                  <span class="icon">
                    <iconify-icon icon="f7:person"></iconify-icon>
                  </span>
                  <input type="text" name="username" class="form-control" placeholder="Masukkan Username">
                </div>
              </div>
           <div class="col-12">
                <label class="form-label">Password</label>
                <div class="icon-field">
                  <span class="icon">
                    <iconify-icon icon="f7:lock"></iconify-icon>
                  </span>
                  <input type="password" name="password" class="form-control" placeholder="Masukkan Password">
                </div>
              </div>
    </div>
</div>
      </div>
    </div>

    </form>


</div>

@endsection