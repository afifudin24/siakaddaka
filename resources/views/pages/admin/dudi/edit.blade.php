@extends('layouts.app')

@section('content')
<div class="dashboard-main-body">

<div class="d-flex justify-content-between align-items-center mb-3">
    <h5>Edit DUDI</h5>
    <a href="{{ route('admin.dudi.index') }}" class="btn btn-danger btn-sm d-flex align-items-center gap-2">
        <iconify-icon icon="lucide:arrow-left" class="text-xl"></iconify-icon> Kembali
    </a>
</div>

<form id="form-edit">
@csrf
@method('PUT')


    <div class="card basic-data-table">
<div class="card-header d-flex justify-content-between align-items-center">
    <h5 class="card-title mb-0">Edit DUDI</h5>
    <button class="btn btn-sm btn-success d-flex align-items-center gap-2">
        <iconify-icon icon="lucide:save" class="text-xl"></iconify-icon> Simpan
    </button>
</div>

<div class="card-body">

                {{-- Validasi Errors --}}
                @if ($errors->any())
                    <div class="alert alert-danger">
                        <ul class="mb-0">
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                @endif

                {{-- Form DUDI --}}
       <div class="row g-3">
    <div class="col-md-6">
        <label class="form-label">Nama DUDI</label>
        <input type="text" name="nama_dudi" class="form-control" value="{{ $dudi->nama_dudi }}" required>
    </div>

    <div class="col-md-6">
        <label class="form-label">Pimpinan DUDI</label>
        <input type="text" name="pimpinan_dudi" class="form-control" value="{{ $dudi->pimpinan_dudi }}">
    </div>

    <div class="col-md-6">
        <label class="form-label">Kontak</label>
        <input type="number" name="kontak" class="form-control" value="{{ $dudi->kontak }}" required>
    </div>

    <div class="col-md-6">
        <label class="form-label">Pembimbing DUDI</label>
        <input type="text" name="pembimbing_dudi" class="form-control" value="{{ $dudi->pembimbing_dudi }}">
    </div>

    <div class="col-md-6">
        <label class="form-label">Bidang Usaha</label>
        <input type="text" name="bidang_usaha" class="form-control" value="{{ $dudi->bidang_usaha }}" required>
    </div>

    <div class="col-md-6">
        <label class="form-label">Alamat</label>
        <textarea name="alamat" class="form-control" rows="3" required>{{ $dudi->alamat }}</textarea>
    </div>
</div>


                {{-- DAFTAR PESERTA PKL --}}
              <div class="row mt-4">
<div class="col-md-6">
<strong>Pilih Peserta PKL</strong>
<input type="text" id="search-left" class="form-control mt-1" placeholder="Cari peserta">

<div class="border rounded-2 mt-1" style="height:300px;overflow:auto">
<ul id="list-left" class="list-group">
@foreach ($pesertaPKL as $p)
<li class="list-group-item list-group-item-action student-item
{{ in_array($p->id, $selectedPesertaIds) ? 'active' : '' }}"
data-id="{{ $p->id }}">
{{ $p->siswa->nama ?? '-' }}
<br>
<span class="float-end fw-semibold">{{ $p->siswa->nis ?? '-' }}</span>
</li>
@endforeach
</ul>
</div>

<input type="hidden" name="peserta_ids" id="peserta_ids" value='@json($selectedPesertaIds)'>
</div>

             <div class="col-md-6">
<label class="form-label">Jurusan</label>
<select name="jurusan_id" class="form-select select2" required>
@foreach ($jurusan as $j)
<option value="{{ $j->id }}" {{ $dudi->jurusan_id == $j->id ? 'selected' : '' }}>
    {{ $j->nama_jurusan }}
</option>
@endforeach
</select>

<div class="mt-3">
<label class="form-label">Pembimbing PKL</label>
<select name="pembimbing_pkl_id" class="form-select select2">
<option value="">Pilih Pembimbing</option>
@foreach ($pembimbing as $p)
<option value="{{ $p->id }}" {{ $dudi->pembimbing_pkl_id == $p->id ? 'selected' : '' }}>
    {{ $p->guru->nama }}
</option>
@endforeach
</select>
</div>
</div>
</div>

                </div>
                
            </div>
        </div>
    </form>
</div>

@push('scripts')
<script>
$(document).ready(function() {
    $('.select2').select2({
        theme: "bootstrap-5",
        placeholder: "Pilih Pembimbing PKL",
        width: '100%',
        language: {
            noResults: function () {
                return "Tidak ada data";
            }
        }
    });
     $('#select_jurusan').select2({
        theme: "bootstrap-5",
        placeholder: "Pilih Jurusan",
        width: '100%',
        language: {
            noResults: function () {
                return "Tidak ada data";
            }
        }
    });

  
});
</script>

<script>
$(function () {

    $('.select2').select2({
        theme: "bootstrap-5",
        width: '100%'
    });

    updateSelected();

    $('#search-left').on('keyup', function () {
        let v = $(this).val().toLowerCase();
        $('#list-left li').filter(function () {
            $(this).toggle($(this).text().toLowerCase().includes(v));
        });
    });

    $(document).on('click', '.student-item', function () {
        $(this).toggleClass('active');
        updateSelected();
    });

    function updateSelected() {
        let ids = [];
        $('#list-left li.active').each(function () {
            ids.push($(this).data('id'));
        });
        $('#peserta_ids').val(JSON.stringify(ids));
    }

    $('#form-edit').submit(function (e) {
        e.preventDefault();

        Swal.fire({
            title: 'Menyimpan...',
            didOpen: () => Swal.showLoading(),
            allowOutsideClick: false
        });

        $.ajax({
            url: "{{ route('admin.dudi.update', $dudi->id) }}",
            type: "POST",
            data: $(this).serialize(),
            success: function () {
                Swal.fire({
                    icon: 'success',
                    title: 'Berhasil',
                    text: 'Data berhasil diperbarui',
                    timer: 2000,
                    showConfirmButton: false
                }).then(() => {
                    window.location.href = "{{ route('admin.dudi.index') }}";
                });
            },
            error: function () {
                Swal.fire('Error', 'Terjadi kesalahan', 'error');
            }
        });
    });

});
</script>
@endpush



@endsection
