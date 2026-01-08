@extends('layouts.app')

@section('content')

    <div class="dashboard-main-body">

        <div class="d-flex flex-wrap align-items-center justify-content-between gap-3 mb-24">
            <h6 class="fw-semibold mb-0">Pengumuman</h6>
            <ul class="d-flex align-items-center gap-2">
                <li class="fw-medium">
                    <a href="index.html" class="d-flex align-items-center gap-1 hover-text-primary">
                        <iconify-icon icon="solar:home-smile-angle-outline" class="icon text-lg"></iconify-icon>
                        Dashboard
                    </a>
                </li>
                <li>-</li>
                <li class="fw-medium">Pengumuman</li>
            </ul>
        </div>

        <div class="card basic-data-table">
            <div class="card-header d-flex justify-content-between align-items-center">
                <h5 class="card-title mb-0">Data Pengumuman</h5>
                <div>
                    <div class="d-flex gap-2">
                        <a href="{{ route('admin.kelas.create') }}"
                            class="btn btn-primary text-sm btn-sm p-1 radius-4 d-flex align-items-center gap-2">
                            <iconify-icon icon="lucide:plus" class="text-xl"></iconify-icon>
                            <span class="d-none d-md-inline">Tambah</span>
                        </a>

                    
                    </div>

                </div>

            </div>
            <div class="card-body">
                @forelse ($pengumumans as $item)
<div class="card shadow-sm mb-3" id="pengumuman-{{ $item->id }}">
    <div class="card-body">

        {{-- HEADER --}}
        <div class="d-flex justify-content-between align-items-start mb-2">
            <div>
                <h6 class="mb-1">{{ $item->title }}</h6>
                <p>{{ $item->content }}</p>
                <small class="text-muted">
                    {{ $item->created_at->format('d M Y, H:i') }}
                </small>
            </div>

            <div class="dropdown">
                <button class="btn btn-sm btn-light" data-bs-toggle="dropdown">
                  <iconify-icon icon="ic:round-more-vert" class="text-lg"></iconify-icon>
                </button>
                <ul class="dropdown-menu">
                    <li>
                        <a href="#" class="dropdown-item btn-edit"
                           data-id="{{ $item->id }}">
                           ✏️ Edit
                        </a>
                    </li>
                    <li>
                        <a href="#" class="dropdown-item text-danger btn-delete"
                           data-id="{{ $item->id }}">
                           🗑️ Hapus
                        </a>
                    </li>
                </ul>
            </div>
        </div>

        {{-- ISI --}}
        <p class="mb-3 text-secondary">
            {{ Str::limit(strip_tags($item->isi), 180) }}
        </p>

        {{-- TARGET --}}
        <div class="d-flex flex-wrap gap-1">
            @foreach ($item->targets as $target)
                @if ($target->target_type === 'all')
                    <span class="badge bg-primary">
                        Semua User
                    </span>
                @elseif ($target->target_type === 'role')
                    <span class="badge text-capitalize bg-info">
                        {{ $target->target_role }}
                    </span>
                @else
                <div class="d-flex gap-1"> 
                    <span class="badge bg-secondary">
                         {{ $target->user->nama }}
                      
                    </span>
                  
                    <span class="badge bg-info">
                          {{ $target->user->role }}
                    </span>
                </div>
                @endif
            @endforeach
        </div>

    </div>
</div>
@empty
<div class="alert alert-warning">
    Belum ada pengumuman
</div>
@endforelse

            </div>

        </div>
    </div>

    @endsection