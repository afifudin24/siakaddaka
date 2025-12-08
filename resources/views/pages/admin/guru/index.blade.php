@extends('layouts.app')

@section('content')

    <div class="dashboard-main-body">
        <div class="d-flex flex-wrap align-items-center justify-content-between gap-3 mb-24">
  <h6 class="fw-semibold mb-0">Guru</h6>
  <ul class="d-flex align-items-center gap-2">
    <li class="fw-medium">
      <a href="index.html" class="d-flex align-items-center gap-1 hover-text-primary">
        <iconify-icon icon="solar:home-smile-angle-outline" class="icon text-lg"></iconify-icon>
        Dashboard
      </a>
    </li>
    <li>-</li>
    <li class="fw-medium">Data Guru</li>
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
            <option value="{{ $i }}" {{ request('paginate', 10) == $i ? 'selected' : '' }}>
                {{ $i }}
            </option>
        @endfor
    </select>
</form>
                   <form method="GET" class="navbar-search">
    {{-- Pertahankan paginate saat melakukan search --}}
    <input type="hidden" name="paginate" value="{{ request('paginate', 10) }}">

    <input type="text" class="bg-base h-40-px w-auto" 
           name="search" 
           placeholder="Search"
           value="{{ request('search') }}">
           
    <iconify-icon icon="ion:search-outline" class="icon"></iconify-icon>
</form>
                </div>
                <div class="d-flex align-items-center  gap-2">
                  <a href="view-profile.html" class="btn btn-primary text-sm btn-sm px-12 py-12 radius-8 d-flex align-items-center gap-2"> 
                    <iconify-icon icon="ic:baseline-plus" class="icon text-xl line-height-1"></iconify-icon>
                    Tambah Guru
                </a>
                <a href="view-profile.html" class="btn btn-success text-sm btn-sm px-12 py-12 radius-8 d-flex align-items-center gap-2"> 
                    <iconify-icon icon="ic:baseline-download" class="icon text-xl line-height-1"></iconify-icon>
                   Import Guru
                </a>
                </div>
              
            </div>
            <div class="card-body p-24">
                <div class="row gy-4">
                    @foreach($guru as $key => $gr)
                        
                   
                    <div class="col-xxl-3 col-md-4 user-grid-card ">
                        <div class="position-relative border radius-16 overflow-hidden">
                          @php
    $foto = $gr->user->foto_unggulan;

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
                                        <a class="dropdown-item px-16 py-8 rounded text-secondary-light bg-hover-neutral-200 text-hover-neutral-900 d-flex align-items-center gap-10" href="#">
                                            Profil  <iconify-icon icon="solar:user-linear" class="icon text-xl line-height-1"></iconify-icon>
                                        </a>
                                    </li>
                                    <li>
                                        <button type="button" class="delete-btn dropdown-item px-16 py-8 rounded text-secondary-light bg-hover-danger-100 text-hover-danger-600 d-flex align-items-center gap-10">
                                            Hapus  <iconify-icon icon="solar:trash-bin-trash-linear" class="icon text-xl line-height-1"></iconify-icon>
                                        </button>
                                    </li>
                                </ul>
                            </div>
                            
                            <div class="ps-16 pb-16 pe-16 text-center mt--50">
                                <!-- <img src="{{ asset('assets/images/user-grid/user-grid-img1.png')}}" alt="" class="border br-white border-width-2-px w-100-px h-100-px rounded-circle object-fit-cover"> -->
                                <img src="{{ foto_profil($gr) }}" class="border br-white border-width-2-px w-100-px h-100-px rounded-circle object-fit-cover">
                             
                                <h6 class="text-lg mb-0 mt-4">{{ $gr->nama }}</h6>
                                <span class="text-secondary-light mb-16">{{ $gr->email }}</span>
                                <div>
                                    <table class="table basic-border-table mb-0" style="width: 100%">
                                        <thead>
                                            <th style="width : 20px;">NO</th>
                                            <th style="width : 70px;">Mapel</th>
                                            <th>Kelas</th>
                                        </thead>
                                        <tbody>
                                  @php
    $groups = $gr->datamengajar->groupBy('mapel_id');
@endphp

@if ($groups->isEmpty())
    <tr>
        
        <td colspan="3" class="text-center">
            Tidak ada data mengajar
        </td>
    </tr>
@else
    @foreach ($groups as $mapelId => $items)
        <tr>
            {{-- Tampilkan nama guru hanya di baris pertama --}}
            @if ($loop->first)
                <td style="width : 20px">{{ $loop->iteration }}</td>
            @endif

            {{-- Nama Mapel --}}
            <td style="width:70px; text-align: left; padding: 8px; white-space: normal !important; 
    word-wrap: break-word; 
    vertical-align: top;">{{ $items->first()->mapel->nama_mapel }}</td>

            {{-- Daftar kelas --}}
            <td style="width:70px; text-align: left; padding: 8px; white-space: normal !important; 
    word-wrap: break-word; 
    vertical-align: top;">
                @foreach ($items as $dm)
                    <span class="badge bg-secondary">{{ $dm->kelas->nama_kelas }}</span>
                @endforeach
            </td>
        </tr>
    @endforeach
@endif

                                        </tbody>
                                    </table>

                                </div>
                             
                                <div class="row">
                                  
                                    <div class="col-md-12">
                                      <a href="view-profile.html" class="bg-primary-50 text-primary-600 bg-hover-primary-600 hover-text-white p-10 text-sm btn-sm px-12 py-12 radius-8 d-flex align-items-center justify-content-center mt-16 fw-medium gap-2 w-100"> 
                                    Jabatan
                                    <iconify-icon icon="solar:alt-arrow-right-linear" class="icon text-xl line-height-1"></iconify-icon>
                                </a>
                               
                                    </div>
                                  
                                </div>
                               
                            </div>
                        </div>
                    </div>
                   @endforeach
                    
             
            
                 
                </div>
                <div class="d-flex align-items-center justify-content-between flex-wrap gap-2 mt-24">
                 <span>
    Showing 
    {{ $guru->firstItem() ?? 0 }} 
    to 
    {{ $guru->lastItem() ?? 0 }} 
    of 
    {{ $guru->total() }} 
    entries
</span>

                    {{ $guru->links() }}
                </div>
            </div>
        </div>
    </div>
  
   
@endsection