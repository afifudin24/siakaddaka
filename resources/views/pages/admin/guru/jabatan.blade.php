@extends('layouts.app')

@section('content')

    <div class="dashboard-main-body">
      <div class="d-flex justify-content-between align-items-center mb-3">
        <h5>Jabatan Guru </h5>
        <a href="{{ route('admin.guru.index') }}" class="btn btn-danger btn-sm d-flex align-items-center gap-2">
             <iconify-icon icon="lucide:arrow-left" class="text-xl"></iconify-icon> Kembali
        </a>
    </div>

     <div class="card basic-data-table">
      <div class="card-header d-flex justify-content-between align-items-center">
            <h5 class="card-title mb-0">Edit Jabatan {{ $guru->nama }}</h5>
        <div>

            <button type="submit" class="btn btn-sm btn-success d-flex align-items-center gap-2"> 
                <iconify-icon icon="lucide:save" class="text-xl"></iconify-icon> Simpan
</button>
        </div>



</div>

<div class="card-body">
    <div class="row">
        <div class="col-md-6">
            <div class="card">
                <div class="card-header">
                   <h4>Mengajar</h4>
                </div>
                <div class="card-body">
                    <p>Mata Pelajaran : </p>
                    <select name="" id="">
                        <option value=""></option>
                    </select>
                </div>
            </div>
        </div>
    </div>
</div>
</div>


</div>


@endsection