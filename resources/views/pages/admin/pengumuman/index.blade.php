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
                        <a href="{{ route('admin.pengumuman.create') }}"
                            class="btn btn-primary text-sm btn-sm p-1 radius-4 d-flex align-items-center gap-2">
                            <iconify-icon icon="lucide:plus" class="text-xl"></iconify-icon>
                            <span class="d-none d-md-inline">Tambah</span>
                        </a>

                    
                    </div>

                </div>

            </div>
            <div class="card-body">
                 <div class="d-flex gap-2 mb-24">
                                   <form id="perPageForm" method="GET">

    {{-- Pertahankan parameter search --}}
    <input type="hidden" name="search" value="{{ request('search') }}">

    <select name="paginate" class="form-select form-select-sm w-auto ps-12 py-6 radius-12 h-40-px"
        onchange="document.getElementById('perPageForm').submit();">

        @for ($i = 10; $i <= 100; $i += 10)
            <option value="{{ $i }}" {{ request('paginate', 20) == $i ? 'selected' : '' }}>
                {{ $i }}
            </option>
        @endfor
    </select>

</form>
                  <form method="GET" class="navbar-search d-flex gap-2 align-items-center">

    {{-- Pertahankan paginate saat melakukan search --}}
    <input type="hidden" name="paginate" value="{{ request('paginate', 10) }}">

    <input type="text" class="bg-base h-40-px w-auto" 
           name="search" 
           placeholder="Cari pengumuman"
           value="{{ request('search') }}">
 <iconify-icon icon="ion:search-outline" class="icon"></iconify-icon>
    <button class="btn btn-primary  btn-sm h-40-px px-12 radius-12">
        <iconify-icon icon="ion:search-outline"></iconify-icon>
    </button>

</form>
</div>
                @forelse ($pengumumans as $item)
<div class="card shadow-sm mb-3" id="pengumuman-{{ $item->id }}">
    <div class="card-body">

        {{-- HEADER --}}
        <div class="d-flex justify-content-between align-items-start mb-2">
            <div>
                <h6 class="mb-1">{{ $item->title }}</h6>
                <p>{{ $item->content }}</p>
              <small class="text-muted">
    Berlaku :
    {{ optional($item->start_at)->format('d M Y, H:i') ?? '-' }}
    s/d
    {{ optional($item->end_at)->format('d M Y, H:i') ?? '-' }}
</small>

            </div>

            <div class="dropdown">
                <button class="btn btn-sm btn-light" data-bs-toggle="dropdown">
                  <iconify-icon icon="ic:round-more-vert" class="text-lg"></iconify-icon>
                </button>
                <ul class="dropdown-menu">
                    <li>
                        <a href="{{ route('admin.pengumuman.edit', $item->id) }}" class="dropdown-item d-flex align-items-center btn-edit gap-1"
                           data-id="{{ $item->id }}">
                           <iconify-icon icon="ic:round-edit" class="icon"></iconify-icon> Edit
                        </a>
                    </li>
                 <li class="hover-danger">
    <a href="javascript:void(0);"
       class="dropdown-item text-danger btn-delete d-flex align-items-center gap-1"
       data-id="{{ $item->id }}">
        <iconify-icon icon="tabler:trash" class="icon"></iconify-icon>
        Hapus
    </a>
</li>

                     <li class="hover-{{ $item->is_active ? 'warning' : 'success' }}">
    <a href="javascript:void(0);"
       class="dropdown-item btn-toggle-status d-flex align-items-center gap-1
              {{ $item->is_active ? 'text-warning' : 'text-success' }}"
       data-id="{{ $item->id }}"
       data-status="{{ $item->is_active }}">
       
        <iconify-icon
            icon="{{ $item->is_active ? 'tabler:eye-off' : 'tabler:eye' }}"
            class="icon">
        </iconify-icon>

        {{ $item->is_active ? 'Nonaktifkan' : 'Aktifkan' }}
    </a>
</li>

                </ul>
            </div>
        </div>

        {{-- ISI --}}
        <p class="mb-3 text-secondary">
            {{ Str::limit(strip_tags($item->isi), 180) }}
        </p>

        {{-- FOOTER --}}
        <div class="d-flex justify-content-between align-items-center">
           {{-- TARGET --}}
        <div class="d-flex flex-wrap gap-1">
        @php
            $target = $item->target;
        @endphp
        
                @if ($target->target_type === 'all')
                    <span class="badge bg-primary">
                        Semua User
                    </span>
                @elseif ($target->target_type === 'role')
                    <span class="badge text-capitalize bg-info">
                        {{ $target->target_role }}
                    </span>
                @else
               
              <div class="d-flex gap-1 flex-wrap">
    @foreach ($target->users as $user)
    @if($user->role == 'admin')
  <span class="badge bg-secondary text-capitalize">{{ $user->nama }} | {{ $user->role }}</span>
    @elseif($user->role == 'guru')
 <span class="badge bg-info text-capitalize">{{ $user->nama }} | {{ $user->role }}</span>
    @elseif($user->role == 'siswa')
    <span class="badge bg-warning text-dark text-capitalize">{{ $user->nama }} | {{ $user->role }}</span>
    @else
   <span class="badge bg-success text-capitalize">{{ $user->nama }} | {{ $user->role }}</span>
    @endif

      
    
    @endforeach
</div>

                @endif
         
        </div>

        {{-- status --}}

        <div>
            @if ($item->is_active)
                <span class="badge bg-success">Aktif</span>
            @else
                <span class="badge bg-danger">Nonaktif</span>
            @endif


        </div>

     

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

    @push('scripts')
    <script>
    $(document).on('click', '.btn-toggle-status', function (e) {
    e.preventDefault();
    console.log('clicked');

    let id = $(this).data('id');
    let status = $(this).data('status');

    let actionText = status ? 'menonaktifkan' : 'mengaktifkan';

    Swal.fire({
        title: 'Konfirmasi',
        text: `Yakin ingin ${actionText} pengumuman ini?`,
        icon: 'warning',
        showCancelButton: true,
        confirmButtonText: 'Ya',
        cancelButtonText: 'Batal'
    }).then((result) => {
        if (result.isConfirmed) {
            $.ajax({
                url: `/admin/pengumuman/${id}/toggle-status`,
                type: 'POST',
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                success: function (res) {
                    Swal.fire('Berhasil!', res.message, 'success')
                        .then(() => location.reload());
                },
                error: function () {
                    Swal.fire('Gagal!', 'Terjadi kesalahan', 'error');
                }
            });
        }
    });
});
</script>

{{-- hapus --}}
<script>
$(document).on('click', '.btn-delete', function (e) {
    e.preventDefault();

    let id = $(this).data('id');

    Swal.fire({
        title: 'Hapus Pengumuman?',
        text: 'Data yang dihapus tidak bisa dikembalikan!',
        icon: 'warning',
        showCancelButton: true,
        confirmButtonText: 'Ya, hapus',
        cancelButtonText: 'Batal',
        confirmButtonColor: '#d33'
    }).then((result) => {
        if (result.isConfirmed) {
            $.ajax({
                url: `/admin/pengumuman/${id}`,
                type: 'DELETE',
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                success: function (res) {
                    Swal.fire('Berhasil!', res.message, 'success');

                    // 🔥 HAPUS ROW TANPA RELOAD (optional)
                    $('#pengumuman-' + id).fadeOut(300, function () {
                        $(this).remove();
                    });
                },
                error: function () {
                    Swal.fire('Gagal!', 'Tidak dapat menghapus data', 'error');
                }
            });
        }
    });
});

</script>
    @endpush

    @endsection