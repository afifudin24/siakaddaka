@extends('layouts.app')

@section('content')
    <div class="dashboard-main-body">
     <div class="d-flex justify-content-between align-items-center mb-3">
            <h5>Tagihan Massal</h5>
            <a href="{{ route('staff.tagihan.index') }}" class="btn btn-danger btn-sm d-flex align-items-center gap-2">
                <iconify-icon icon="lucide:arrow-left" class="text-xl"></iconify-icon> Kembali
            </a>
        </div>
         <form id="formTagihanMassal">
          @csrf
      
   <div class="card basic-data-table">
            <div class="card-header d-flex justify-content-between align-items-center">
                <h5 class="card-title mb-0">Detail Tagihan</h5>
                <div>
                    <button type="submit" class="btn btn-sm btn-success d-flex align-items-center gap-2 btn-bayar"
                        >
                        <iconify-icon icon="lucide:save" width="18"></iconify-icon>
                        Simpan
                    </button>
                </div>

            </div>
            <div class="card-body">
           
   

    <div class="row">
        <div class="col-md-6">
            
    {{-- TARGET --}}
    <div class="mb-3">
        <label class="form-label">Target Tagihan</label>
        <select name="target" id="target" class="form-control">
            <option value="">-- Pilih Target --</option>
            <option value="semua">Semua Siswa</option>
            <option value="tingkat">Berdasarkan Tingkat</option>
            <option value="kelas">Berdasarkan Kelas</option>
        </select>
    </div>

    {{-- TINGKAT --}}
    <div class="mb-3 d-none" id="wrap-tingkat">
        <label class="form-label">Tingkat</label>
        <select name="tingkat" class="form-control" id="select_tingkat">
            <option value="">-- Pilih Tingkat --</option>
            <option value="10">Kelas 10</option>
            <option value="11">Kelas 11</option>
            <option value="12">Kelas 12</option>
        </select>
    </div>

    {{-- KELAS --}}
    <div class="mb-3 d-none" id="wrap-kelas">
        <label class="form-label">Kelas</label>
        <select name="kelas_id" id="select_kelas" class="form-control">
            <option value="">-- Pilih Kelas --</option>
            @foreach($kelas as $k)
                <option value="{{ $k->id }}">{{ $k->nama_kelas }}</option>
            @endforeach
        </select>
    </div>


        </div>
        <div class="col-md-6">
         {{-- DATA TAGIHAN --}}
    <div class="mb-3">
        <label class="form-label">Nama Tagihan</label>
        <input type="text" name="nama_tagihan" class="form-control">
    </div>

    <div class="mb-3">
        <label class="form-label">Jenis Tagihan</label>
        <select name="jenis_tagihan_id" id="jenis_tagihan" class="form-control">
        <option value="">Pilih Jenis Tagihan</option>
            @foreach($jenistagihan as $j)
                <option value="{{ $j->id }}">{{ $j->nama_jenis }}</option>
            @endforeach
        </select>
    </div>

    <div class="mb-3">
        <label class="form-label">Nominal</label>
        <input type="number" name="jumlah" class="form-control">
    </div>

    <div class="mb-3">
        <label class="form-label">Tanggal Tagihan</label>
        <input type="date" name="tgl_tagihan" class="form-control">
    </div>
        </div>
    </div>

    <hr>

   

   


            </div>
            </div>  
              </form>

    </div>


    @push('scripts')
    <script>
     $('#select_kelas').select2({
                theme: "bootstrap-5",
                closeOnSelect : false,
                placeholder: "Pilih Kelas",
                width: '100%',
                language: {
                    noResults: function() {
                        return "Tidak ada data";
                    }
                }

            });
     $('#target').select2({
                theme: "bootstrap-5",
                closeOnSelect : true,
                placeholder: "Pilih Target",
                width: '100%',
                language: {
                    noResults: function() {
                        return "Tidak ada data";
                    }
                }

            });
     $('#jenis_tagihan').select2({
                theme: "bootstrap-5",
                closeOnSelect : true,
                placeholder: "Pilih Jenis Tagihan",
                width: '100%',
                language: {
                    noResults: function() {
                        return "Tidak ada data";
                    }
                }
     });
     $('#select_tingkat').select2({
                theme: "bootstrap-5",
                closeOnSelect : true,
                placeholder: "Pilih Tingkat",
                width: '100%',
                language: {
                    noResults: function() {
                        return "Tidak ada data";
                    }
                }

            });
    </script>
    <script>
$('#target').change(function () {
    $('#wrap-tingkat').addClass('d-none');
    $('#wrap-kelas').addClass('d-none');

    if (this.value === 'tingkat') {
        $('#wrap-tingkat').removeClass('d-none');
    } else if (this.value === 'kelas') {
        $('#wrap-kelas').removeClass('d-none');
    }
});
</script>
<script>
$('#formTagihanMassal').on('submit', function (e) {
    e.preventDefault();

    const judul   = $('input[name="nama_tagihan"]').val().trim();
    const nominal = $('input[name="jumlah"]').val();
    const target  = $('select[name="target"]').val();
    const tingkat = $('select[name="tingkat"]').val();
    const kelas   = $('select[name="kelas_id"]').val();

    // VALIDASI CLIENT
    if (!judul) {
        return Swal.fire('Validasi Gagal', 'Nama tagihan wajib diisi', 'error');
    }

    if (!nominal || nominal <= 0) {
        return Swal.fire('Validasi Gagal', 'Nominal harus diisi dan lebih dari 0', 'error');
    }

    if (!target) {
        return Swal.fire('Validasi Gagal', 'Target tagihan wajib dipilih', 'error');
    }

    if (target === 'tingkat' && !tingkat) {
        return Swal.fire('Validasi Gagal', 'Silakan pilih tingkat (10 / 11 / 12)', 'error');
    }

    if (target === 'kelas' && !kelas) {
        return Swal.fire('Validasi Gagal', 'Silakan pilih kelas', 'error');
    }

    // KONFIRMASI
    Swal.fire({
        title: 'Simpan Tagihan Massal?',
        text: 'Pastikan data sudah benar sebelum disimpan.',
        icon: 'question',
        showCancelButton: true,
        confirmButtonText: 'Ya, Simpan',
        cancelButtonText: 'Batal',
        confirmButtonColor: '#198754',
        showLoaderOnConfirm: true,
        preConfirm: () => {
            return $.ajax({
                url: "{{ route('staff.tagihan.massal.store') }}",
                method: "POST",
                data: $('#formTagihanMassal').serialize(),
            }).catch(err => {
                let msg = 'Terjadi kesalahan';

                if (err.responseJSON?.errors) {
                    msg = Object.values(err.responseJSON.errors)
                        .map(e => e[0])
                        .join('<br>');
                } else if (err.responseJSON?.message) {
                    msg = err.responseJSON.message;
                }

                Swal.showValidationMessage(msg);
            });
        }
    }).then((result) => {
        if (result.isConfirmed) {
            Swal.fire({
                icon: 'success',
                title: 'Berhasil',
                html: `
                    <p>Tagihan massal berhasil ditambahkan</p>
                    <strong>Total Siswa: ${result.value.total_siswa}</strong>
                `,
                timer: 2500,
                showConfirmButton: false
            });

            $('#formTagihanMassal')[0].reset();
            $('#wrap-tingkat, #wrap-kelas').addClass('d-none');
        }
    });
});
</script>

    @endpush

@endsection