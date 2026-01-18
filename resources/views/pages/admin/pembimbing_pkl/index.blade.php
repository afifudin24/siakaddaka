@extends('layouts.app')

@section('content')

    <div class="dashboard-main-body">
        <div class="d-flex flex-wrap align-items-center justify-content-between gap-3 mb-24">
  <h6 class="fw-semibold mb-0">Pembimbing PKL</h6>
  <ul class="d-flex align-items-center gap-2">
    <li class="fw-medium">
      <a href="index.html" class="d-flex align-items-center gap-1 hover-text-primary">
        <iconify-icon icon="solar:home-smile-angle-outline" class="icon text-lg"></iconify-icon>
        Dashboard
      </a>
    </li>
    <li>-</li>
    <li class="fw-medium">Pembimbing PKL</li>
  </ul>
</div>

        <div class="card h-100 p-0 radius-12">
            <div class="card-header border-bottom bg-base py-16 px-24 d-flex align-items-center flex-wrap gap-3 justify-content-between">
                <div class="d-flex align-items-center flex-wrap gap-3">
                    <!-- <span class="text-md fw-medium text-secondary-light mb-0">Show</span> -->
                  <form id="perPageForm" method="GET">
    <select name="paginate" class="form-select form-select-sm w-auto ps-12 py-6 radius-12 h-40-px"
        onchange="document.getElementById('perPageForm').submit();">
        
        @for ($i = 10; $i <= 100; $i += 10)
            <option value="{{ $i }}" {{ request('paginate', 20) == $i ? 'selected' : '' }}>
                {{ $i }}
            </option>
        @endfor
    </select>
</form>
                   <form method="GET" class="navbar-search">
    {{-- Pertahankan paginate saat melakukan search --}}
    <input type="hidden" name="paginate" value="{{ request('paginate', 20) }}">

    <input type="text" class="bg-base h-40-px w-auto" 
           name="search" 
           placeholder="Search"
           value="{{ request('search') }}">
           
    <iconify-icon icon="ion:search-outline" class="icon"></iconify-icon>
</form>
                </div>
                <div class="d-flex align-items-center  gap-2">
                  <a href="{{ route('admin.pembimbing-pkl.add') }}" class="btn btn-primary text-sm btn-sm px-12 py-12 radius-8 d-flex align-items-center gap-2"> 
                    <iconify-icon icon="ic:baseline-plus" class="icon text-xl line-height-1"></iconify-icon>
                    Tambah Pembimbing PKL
                </a>
              
                </div>
              
            </div>
            <div class="card-body p-24">
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
         
                <div class="row gy-4">
                    @if($pembimbingPKL->isEmpty())
                        <div class="col-12">
                            <div class="alert alert-info text-center">
                                Tidak ada pembimbing PKL yang ditemukan.
                            </div>
                        </div>
                    @else
                    @foreach($pembimbingPKL as $key => $pp)
                        
                   
                    <div class="col-xxl-4 col-md-4 user-grid-card ">
                        <div class="position-relative border radius-16 overflow-hidden">
                          @php
    $foto = $pp->guru->user->foto_unggulan;

    $validFoto = $foto &&
                 $foto !== "profile.png" &&
                 Storage::disk('public')->exists($foto);
@endphp

@if ($validFoto)
    <img src="{{ asset('storage/'.$foto) }}" class="w-100 object-fit-cover" alt="">
@else
@php
    $img = random_featured_image();
@endphp

<img src="{{ asset('assets/images/feature/' . $img) }}" class="w-100 object-fit-cover" alt="">
  
@endif
                            <div class="dropdown position-absolute top-0 end-0 me-16 mt-16">
                                <button type="button" data-bs-toggle="dropdown" aria-expanded="false" class="bg-neutral-700 w-32-px h-32-px radius-8 border border-light-white d-flex justify-content-center align-items-center text-white"> 
                                  <iconify-icon icon="entypo:dots-three-vertical" class="icon "></iconify-icon> 
                                </button>
                                <ul class="dropdown-menu p-12 border bg-base shadow">
                                   
                                    <li>

                                     <button
    class="btn btn-sm btn-toggle-status
        {{ $pp->status == 'aktif' ? 'dropdown-item px-16 py-8 rounded 
           text-secondary-light bg-hover-danger-100 
           text-hover-danger-600 d-flex align-items-center gap-10' : 'dropdown-item px-16 py-8 rounded 
           text-secondary-light bg-hover-success-100 
           text-hover-success-600 d-flex align-items-center gap-10' }}"
    data-id="{{ $pp->id }}">

    {{ $pp->status == 'aktif' ? 'Nonaktifkan' : 'Aktifkan' }}
    <iconify-icon 
        icon="{{ $pp->status == 'aktif' ? 'solar:close-circle-linear' : 'simple-line-icons:check' }}"
        class="icon text-xl line-height-1"></iconify-icon>
</button>

                                       <button 
    type="button"
    class="delete-btn dropdown-item px-16 py-8 rounded 
           text-secondary-light bg-hover-danger-100 
           text-hover-danger-600 d-flex align-items-center gap-10"
    data-id="{{ $pp->id }}"
>
    Hapus
    <iconify-icon icon="solar:trash-bin-trash-linear"
        class="icon text-xl line-height-1"></iconify-icon>
</button>

                                    </li>
                                </ul>
                            </div>
                            
                            <div class="ps-16 pb-16 pe-16 text-center mt--50">
                                <!-- <img src="{{ asset('assets/images/user-grid/user-grid-img1.png')}}" alt="" class="border br-white border-width-2-px w-100-px h-100-px rounded-circle object-fit-cover"> -->
                                <img src="{{ foto_profil($pp->guru) }}" class="border br-white border-width-2-px w-100-px h-100-px rounded-circle object-fit-cover">
                             
                                <h6 class="text-lg mb-0 mt-4">{{ $pp->guru->nama }}</h6>
                             {{-- status --}}
                                <span class="text-sm    
                                    {{ $pp->status == 'aktif' ? 'badge bg-success-100 text-success-600' : 'badge bg-danger-100 text-danger-600' }}">
                                    {{ ucfirst($pp->status) }}
                                </span>
                                  <div>
                                  {{-- tampilkan DUDI yang dibimbing --}}
                                  <div>

    <p class="fw-medium">DUDI Bimbingan</p>

    @forelse($pp->dudi as $dudi)
        <span class="badge bg-primary-100 text-primary-600 px-12 py-6 radius-8 text-sm mb-8 d-inline-block">
            {{ $dudi->nama_dudi }}
        </span>
    @empty
        <span class="text-muted text-sm">Belum ada DUDI</span>
    @endforelse
</div>



                                </div>
                             
                                <div class="row">
                                  
                                    <div class="col-md-12">
                                      <a href="{{route('admin.guru.datamengajar', $pp->id)}}" class="bg-primary-50 text-primary-600 bg-hover-primary-600 hover-text-white p-10 text-sm btn-sm px-12 py-12 radius-8 d-flex align-items-center justify-content-center mt-16 fw-medium gap-2 w-100"> 
                                    Data Bimbingan
                                    <iconify-icon icon="solar:alt-arrow-right-linear" class="icon text-xl line-height-1"></iconify-icon>
                                </a>
                               
                                    </div>
                                  
                                </div>
                               
                            </div>
                        </div>
                    </div>
                   @endforeach
                    
             @endif
            
                 
                </div>
                <div class="d-flex align-items-center justify-content-between flex-wrap gap-2 mt-24">
                 <span>
    Showing 
    {{ $pembimbingPKL->firstItem() ?? 0 }} 
    to 
    {{ $pembimbingPKL->lastItem() ?? 0 }} 
    of 
    {{ $pembimbingPKL->total() }} 
    entries
</span>

                    {{ $pembimbingPKL->links() }}
                </div>
            </div>
        </div>
    </div>

    @push('scripts')
   <script>
$(document).on('click', '.delete-btn', function () {
    const id = $(this).data('id');

    Swal.fire({
        title: 'Yakin ingin menghapus?',
        text: 'Data pembimbing PKL akan dihapus permanen',
        icon: 'warning',
        showCancelButton: true,
        confirmButtonText: 'Ya, hapus',
        cancelButtonText: 'Batal',
        reverseButtons: true
    }).then((result) => {
        if (result.isConfirmed) {
            $.ajax({
                url: `/admin/pembimbing-pkl/${id}`,
                type: 'DELETE',
                data: {
                    _token: $('meta[name="csrf-token"]').attr('content')
                },
                beforeSend: () => {
                    Swal.fire({
                        title: 'Menghapus...',
                        allowOutsideClick: false,
                        didOpen: () => Swal.showLoading()
                    });
                },
                success: function (res) {
                    Swal.fire(
                        'Berhasil',
                        res.message ?? 'Pembimbing PKL berhasil dihapus',
                        'success'
                    ).then(() => {
                        location.reload();
                    });
                },
                error: function (xhr) {
                    Swal.fire(
                        'Gagal',
                        xhr.responseJSON?.message ?? 'Terjadi kesalahan',
                        'error'
                    );
                }
            });
        }
    });
});



$('.btn-toggle-status').on('click', function () {
    let id = $(this).data('id');

    Swal.fire({
        title: 'Ubah Status?',
        text: 'Status pembimbing PKL akan diubah',
        icon: 'warning',
        showCancelButton: true,
        confirmButtonText: 'Ya, ubah',
        cancelButtonText: 'Batal'
    }).then((result) => {
        if (result.isConfirmed) {
            $.ajax({
                url: `/admin/pembimbing-pkl/${id}/toggle-status`,
                type: 'PUT',
                data: {
                    _token: $('meta[name="csrf-token"]').attr('content')
                },
                success: function (res) {
                    Swal.fire('Berhasil', res.message, 'success')
                        .then(() => location.reload());
                },
                error: function () {
                    Swal.fire('Error', 'Gagal mengubah status', 'error');
                }
            });
        }
    });
});

</script>


    @endpush
  
   
@endsection