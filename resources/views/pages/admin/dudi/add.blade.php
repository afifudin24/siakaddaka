@extends('layouts.app')

@section('content')
<div class="dashboard-main-body">

    <div class="d-flex justify-content-between align-items-center mb-3">
        <h5>Tambah DUDI</h5>
        <a href="{{ route('admin.dudi.index') }}" class="btn btn-danger btn-sm d-flex align-items-center gap-2">
             <iconify-icon icon="lucide:arrow-left" class="text-xl"></iconify-icon> Kembali
        </a>
    </div>

    <form action="{{ route('admin.dudi.store') }}" method="POST">
        @csrf

        <div class="card basic-data-table">
            <div class="card-header d-flex justify-content-between align-items-center">
                <h5 class="card-title mb-0">Tambah DUDI</h5>
                <div>
                    <button type="submit" class="btn btn-sm btn-success d-flex align-items-center gap-2"> 
                        <iconify-icon icon="lucide:save" class="text-xl"></iconify-icon> Simpan
                    </button>
                </div>
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
                        <input type="text" name="nama_dudi" class="form-control" placeholder="Nama DUDI" required>
                    </div>

                    <div class="col-md-6">
                        <label class="form-label">Pimpinan DUDI</label>
                        <input type="text" name="pimpinan_dudi" class="form-control" placeholder="Pimpinan DUDI">
                    </div>
                    <div class="col-md-6">
                        <label class="form-label">Kontak</label>
                        <input type="number" name="kontak" class="form-control" placeholder="Kontak (628xxxx)" required>
                    </div>
                    <div class="col-md-6">
                        <label class="form-label">Pembimbing DUDI</label>
                        <input type="text" name="pembimbing_dudi" class="form-control" placeholder="Pembimbing DUDI" >
                    </div>

                    <div class="col-md-6">
                        <label class="form-label">Bidang Usaha</label>
                        <input type="text" name="bidang_usaha" class="form-control" placeholder="Bidang Usaha" required>
                    </div>

                    <div class="col-md-6">
                         <label class="form-label">Alamat</label>
                        <textarea name="alamat" class="form-control" placeholder="Alamat DUDI" rows="3" required></textarea>
                    </div>
                </div>

                {{-- DAFTAR PESERTA PKL --}}
                <div class="row mt-4">
                    <div class="col-md-6">
                        <strong>Pilih Peserta PKL</strong>
                        <input type="text" id="search-left" class="form-control mt-1" placeholder="Cari peserta">
                        <div style="height: 300px; overflow-y:auto;" class="border rounded-2 mt-1">
                            <ul id="list-left" class="list-group">
                                @foreach ($pesertaPKL as $p)
                                    <li class="list-group-item list-group-item-action student-item" 
                                        data-id="{{ $p->id }}">
                                        {{ $p->siswa->nama ?? '-' }}
                                        <br>
                                        <span class="float-end fw-semibold">{{ $p->siswa->nis ?? '-' }}</span>
                                    </li>
                                @endforeach
                            </ul>
                        </div>
                        <input type="hidden" name="peserta_ids" id="peserta_ids">
                    </div>
                    <div class="col-md-6">
                                 <div>

                            <label class="form-label">Jurusan</label>
                            <select name="jurusan_id" class="form-select" id="select_jurusan" required>
                                <option value="">Pilih Jurusan</option>
                                @foreach ($jurusan as $j)
                                <option value="{{ $j->id }}">{{ $j->nama_jurusan }}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="mt-28">

                            <label class="form-label">Pembimbing PKL</label>
                            <select name="pembimbing_pkl_id" class="form-select select2">
                                <option value="">Pilih Pembimbing PKL</option>
                                @foreach ($pembimbing as $p)
                                <option value="{{ $p->id }}">{{ $p->guru->nama }}</option>
                                @endforeach
                            </select>
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

    // Filter peserta
    $("#search-left").on("keyup", function () {
        let val = $(this).val().toLowerCase();
        $("#list-left li").filter(function () {
            $(this).toggle($(this).text().toLowerCase().includes(val));
        });
    });

    // Pilih peserta PKL
    $(document).on('click', '.student-item', function () {
        $(this).toggleClass('active'); // highlight terpilih
        updateSelected();
    });

    function updateSelected() {
        let ids = [];
        $("#list-left li.active").each(function () {
            ids.push($(this).data('id'));
        });
        $("#peserta_ids").val(JSON.stringify(ids));
    }
});

$(document).ready(function() {

    $('form').on('submit', function(e) {
        e.preventDefault();

        // Ambil form data
        let formData = $(this).serialize();

        Swal.fire({
            title: 'Menyimpan...',
            text: 'Tunggu sebentar',
            didOpen: () => {
                Swal.showLoading();
            },
            allowOutsideClick: false
        });

        $.ajax({
            url: "{{ route('admin.dudi.store') }}",
            method: "POST",
            data: formData,
            success: function(res) {
                Swal.close();
                if (res.success) {
                    Swal.fire({
                        icon: 'success',
                        title: 'Berhasil',
                        text: res.message,
                        timer: 2000,
                        showConfirmButton: false
                    }).then(() => {
                        window.location.href = "{{ route('admin.dudi.index') }}";
                    });
                } else {
                    Swal.fire('Error', res.message, 'error');
                }
            },
            error: function(xhr) {
                Swal.close();
                let errors = xhr.responseJSON?.errors;
                let message = '';
                if (errors) {
                    for (let key in errors) {
                        message += errors[key].join('<br>') + '<br>';
                    }
                } else {
                    message = xhr.responseJSON?.message ?? 'Terjadi kesalahan';
                }
                Swal.fire('Error', message, 'error');
            }
        });

    });

});

</script>


@endpush

@endsection
