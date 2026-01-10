@extends('layouts.app')

@section('content')

    <div class="dashboard-main-body">

        <div class="d-flex flex-wrap align-items-center justify-content-between gap-3 mb-24">
            <h6 class="fw-semibold mb-0">Pengumuman</h6>
            <a href="{{ route('admin.pengumuman.index') }}" class="btn btn-danger btn-sm d-flex align-items-center gap-2">
             <iconify-icon icon="lucide:arrow-left" class="text-xl"></iconify-icon> Kembali
        </a>
        </div>

          <div class="card basic-data-table">
            <div class="card-header d-flex justify-content-between align-items-center">
                <h5 class="card-title mb-0">Edit Pengumuman</h5>
                <div>
                    <form id="formPengumumanEdit">
                    <div class="d-flex gap-2">
                        <button type="submit"
                            class="btn btn-success text-sm btn-sm p-1 radius-4 d-flex align-items-center gap-2">
                            <iconify-icon icon="lucide:save" class="text-xl"></iconify-icon>
                            <span class="d-none d-md-inline">Simpan</span>
                    </button>

                    
                    </div>

                </div>

            </div>
            <div class="card-body">
    @csrf

    <div class="row g-3">
        {{-- JUDUL --}}
        <div class="col-md-6">
            <label class="form-label">Judul Pengumuman</label>
            <input type="text" name="title" value="{{ $pengumuman->title }}" id="title"
                   class="form-control" required>
        </div>

        {{-- STATUS (OPSIONAL) --}}
        <div class="col-md-6">
            <label class="form-label">Status</label>
            <select class="form-control">
                <option value="1" {{ $pengumuman->is_active ? 'selected' : '' }}>Aktif</option>
                <option value="0" {{ !$pengumuman->is_active ? 'selected' : '' }}>Tidak Aktif</option>
            </select>
        </div>

        {{-- ISI --}}
        <div class="col-md-12">
            <label class="form-label">Isi Pengumuman</label>
            <textarea name="content" id="content"
                      class="form-control" rows="4" required>{{ $pengumuman->content }}</textarea>
        </div>

        {{-- berlaku --}}
        <div class="row">
         <div class="col-md-6">
    <label class="form-label">Tanggal Mulai Berlaku</label>
    <input type="datetime-local" value="{{ $pengumuman->start_at }}" name="start_at" class="form-control" required>
</div>

<div class="col-md-6">
    <label class="form-label">Tanggal Berakhir</label>
    <input type="datetime-local" value="{{ $pengumuman->end_at }}" name="end_at" class="form-control" required>
</div>

        </div>
        {{-- TIPE TARGET --}}
        <div class="col-md-6">
            <label class="form-label">Target Pengumuman</label>
            <select id="target_type" class="form-control select2">
                <option value="">-- Pilih Target --</option>
                <option value="all" {{ $pengumuman->target->target_type == 'all' ? 'selected' : '' }}>Semua User</option>
                <option value="role" {{ $pengumuman->target->target_type == 'role' ? 'selected' : '' }}>Berdasarkan Role</option>
                <option value="user" {{ $pengumuman->target->target_type == 'user' ? 'selected' : '' }}>User Tertentu</option>
            </select>
        </div>

    


        {{-- ROLE TARGET --}}
        <div class="col-md-6 d-none" id="roleWrapper">
            <label class="form-label">Pilih Role</label>
            <select id="roles" class="form-control select2">
                <option {{ $pengumuman->target->target_role == 'admin' ? 'selected' : '' }} value="admin">Admin</option>
                <option value="guru" {{ $pengumuman->target->target_role == 'guru' ? 'selected' : '' }}>Guru</option>
                <option value="siswa" {{ $pengumuman->target->target_role == 'siswa' ? 'selected' : '' }}>Siswa</option>
                <option value="staff" {{ $pengumuman->target->target_role == 'staff' ? 'selected' : '' }}>Staff</option>
            </select>
        </div>
    


     {{-- USER TARGET --}}
<div class="col-md-6 {{ $target->target_type === 'user' ? '' : 'd-none' }}" id="userWrapper">
    <label class="form-label">Pilih User</label>
    <select id="users" class="form-control select2" multiple>
        @foreach ($users as $user)
            <option value="{{ $user->id }}"
                {{ in_array($user->id, $selectedUsers ?? []) ? 'selected' : '' }}>
                {{ $user->nama }} ({{ $user->role }})
            </option>
        @endforeach
    </select>
</div>


      
    </div>
</form>

            </div>
        </div>  

    </div>

@push('scripts')
<script>
if ({{ $pengumuman->target->target_type === 'role' ? 'true' : 'false' }}) {
        $('#roleWrapper').removeClass('d-none');
    }

    if ({{ $pengumuman->target->target_type === 'user' ? 'true' : 'false' }}) {
        $('#userWrapper').removeClass('d-none');
    }
      $('#target_type').select2({
          theme: "bootstrap-5",
        //   closeOnSelect : false,
           placeholder: "Pilih Tipe Target",
            width: '100%',
             language: {
        noResults: function () {
            return "Tidak ada data";
        }
    }
            
    });
    $('#roles').select2({
          theme: "bootstrap-5",
        //   closeOnSelect : false,
           placeholder: "Pilih Role",
            width: '100%',
             language: {
        noResults: function () {
            return "Tidak ada data";
        }
    }
});
      $('#users').select2({
          theme: "classic",
        //   closeOnSelect : false,
           placeholder: "Pilih User",
            width: '100%',
             language: {
        noResults: function () {
            return "Tidak ada data";
        }
    }
            
    });

    $('#target_type').on('change', function () {
    let type = $(this).val();

    $('#roleWrapper, #userWrapper').addClass('d-none');

    if (type === 'role') {
        $('#roleWrapper').removeClass('d-none');
    }

    if (type === 'user') {
        $('#userWrapper').removeClass('d-none');
    }
});

</script>
<script>
$('#formPengumumanEdit').on('submit', function (e) {
    e.preventDefault();

    let id = {{ $pengumuman->id }};
    let targetType = $('#target_type').val();

    let payload = {
        _token: "{{ csrf_token() }}",
        _method: 'PUT',
        title: $('#title').val(),
        content: $('#content').val(),
        target_type: targetType,
        target_role: null,
        target_user: []
    };

    if (targetType === 'role') {
        payload.target_role = $('#roles').val();
    }

    if (targetType === 'user') {
        payload.target_user = $('#users').val();
    }

    Swal.fire({
        title: 'Menyimpan...',
        allowOutsideClick: false,
        didOpen: () => Swal.showLoading()
    });

    $.ajax({
        url: `/admin/pengumuman/${id}`,
        method: 'POST',
        data: payload,
        success: function (res) {
            Swal.fire('Berhasil', res.message, 'success');
        },
        error: function (err) {
            console.log(err);
            Swal.fire('Error', 'Gagal memperbarui pengumuman', 'error');
        }
    });
});
</script>

@endpush

@endsection