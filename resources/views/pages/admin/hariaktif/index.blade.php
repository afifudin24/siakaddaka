@extends('layouts.app')

@section('content')
  <div class="dashboard-main-body">
     <div class="d-flex flex-wrap align-items-center justify-content-between gap-3 mb-24">
            <h6 class="fw-semibold mb-0">Hari Aktif KBM</h6>
            <ul class="d-flex align-items-center gap-2">
                <li class="fw-medium">
                    <a href="index.html" class="d-flex align-items-center gap-1 hover-text-primary">
                        <iconify-icon icon="solar:home-smile-angle-outline" class="icon text-lg"></iconify-icon>
                        Dashboard
                    </a>
                </li>
                <li>-</li>
                <li class="fw-medium">Hari Aktif KBM</li>
            </ul>
        </div>
<div class="card basic-data-table">
            <div class="card-header d-flex justify-content-between align-items-center">
                <h5 class="card-title mb-0">Hari Aktif KBM</h5>
                <div>
                  
                    <div class="d-flex gap-2">
                      <a href="javascript:void(0)"
   id="btnTambahHari"
   class="btn btn-primary text-sm btn-sm p-1 radius-4 d-flex align-items-center gap-2">
    <iconify-icon icon="lucide:plus" class="text-xl"></iconify-icon>
    <span class="d-none d-md-inline">Tambah</span>
</a>


                    
                    </div> 

                </div>

            </div>
            <div class="card-body">
                <form method="GET" id="filterForm" class="mb-3">
                       {{-- PER PAGE (OPSIONAL) --}}
     
  
</form>

             

@if($hariaktif->count() === 0)
    <div class="alert alert-warning text-center">
        Hari aktif KBM belum diatur.
    </div>

    @else
  <div class="row">
    @foreach($hariaktif as $ha)
        <div class="col-md-6 col-lg-4 mb-3" id="mengajar-{{ $ha->id }}">
            <div class="card h-100 shadow-sm border-0">
                <div class="card-body">
                    <div class="d-flex align-items-center justify-content-between">

                        <h6 class="fw-bold mb-1">
                            {{ $ha->nama_hari }}
                        </h6>
                        
                        <small class="text-muted">
                            {{ $ha->totalJamPelajaran() ?? 0 }} Jam
                            
                        </small>
                    </div>

                    <hr class="my-2">


                </div>

                <div class="card-footer bg-transparent border-0 gap-2">
              <button
   
    data-hari-id="{{ $ha->id }}"
    class="btnJamPelajaran d-flex my-1 align-items-center w-100 gap-2 btn-sm btn btn-outline-success justify-content-center">
    <iconify-icon icon="bi:clock"></iconify-icon>
    Jam Pelajaran
</button>

                   <button
    class="btn d-flex justify-content-center align-items-center gap-2 btn-sm btn-outline-danger w-100 btn-delete"
    data-id="{{ $ha->id }}"
>
   <iconify-icon icon="bi:trash"></iconify-icon>
    Hapus
</button>

                </div>
            </div>
        </div>
 
    
    @endforeach
</div>


@endif

       

            </div>
</div>

  </div>


  @push('scripts')
  <script>
$('#btnTambahHari').on('click', function () {
    Swal.fire({
        title: 'Tambah Hari Aktif',
        html: `
            <select id="urutan_hari" class="form-control">
                <option value="">-- Pilih Hari --</option>
                <option value="1">Senin</option>
                <option value="2">Selasa</option>
                <option value="3">Rabu</option>
                <option value="4">Kamis</option>
                <option value="5">Jumat</option>
                <option value="6">Sabtu</option>
                <option value="7">Minggu</option>
            </select>
        `,
        showCancelButton: true,
        confirmButtonText: 'Simpan',
        cancelButtonText: 'Batal',
        focusConfirm: false,
        preConfirm: () => {
            const urutan_hari = $('#urutan_hari').val();
            if (!urutan_hari) {
                Swal.showValidationMessage('Hari wajib dipilih');
            }
            return { urutan_hari: urutan_hari };
        }
    }).then((result) => {
        if (result.isConfirmed) {
            $.ajax({
                url: "{{ route('admin.hari-aktif.store') }}",
                type: "POST",
                data: {
                    _token: "{{ csrf_token() }}",
                    urutan_hari: result.value.urutan_hari
                },
                success: function (res) {
                    Swal.fire('Berhasil', res.message, 'success')
                        .then(() => location.reload());
                },
                error: function (xhr) {
    if (xhr.status === 409) {
        Swal.fire('Info', xhr.responseJSON.message, 'info');
    } else if (xhr.status === 422) {
        Swal.fire('Validasi Gagal', 'Hari wajib dipilih', 'warning');
    } else {
        console.log(xhr);
        Swal.fire('Error', 'Terjadi kesalahan server', 'error');
    }
}

            });
        }
    });
});


</script>
<script>
$(document).on('click', '.btnJamPelajaran', function () {
    const hariId = $(this).data('hari-id');

    $.get(`/admin/jam-pelajaran/${hariId}`, function (res) {
        let rows = '';
        console.log(res);

        res.data.forEach((item, i) => {
            rows += rowTemplate(item.jam_ke, item.mulai, item.selesai);
        });

        Swal.fire({
            title: 'Jam Pelajaran',
            html: `
                <div id="jamWrapper">
                    ${rows || rowTemplate('', '', '')}
                </div>
                <button id="addRow" class="btn btn-sm btn-outline-primary mt-2 w-100">+ Tambah Jam</button>
            `,
            width: 600,
            showCancelButton: true,
            confirmButtonText: 'Simpan',
             cancelButtonText: 'Batal',
            preConfirm: () => {
                let data = [];
                $('#jamWrapper .jam-row').each(function () {
                    data.push({
                        jam_ke: $(this).find('.jam_ke').val(),
                        mulai: $(this).find('.mulai').val(),
                        selesai: $(this).find('.selesai').val(),
                    });
                });
                return data;
            }
        }).then(result => {
            if (result.isConfirmed) {
            $.ajax({
    url: `/admin/jam-pelajaran/${hariId}`,
    type: 'POST',
    data: {
        _token: "{{ csrf_token() }}",
        jams: result.value
    },
    beforeSend: function () {
        Swal.fire({
            title: 'Menyimpan...',
            text: 'Mohon tunggu',
            allowOutsideClick: false,
            allowEscapeKey: false,
            didOpen: () => {
                Swal.showLoading();
            }
        });
    },
    success: function () {
        // kasih then di swal
    Swal.fire({
    icon: 'success',
    title: 'Berhasil',
    text: 'Jam pelajaran diperbarui',
    confirmButtonText: 'OK'
}).then((result) => {
    if (result.isConfirmed) {
        location.reload();
    }
});

       

    },
    error: function (xhr) {
        console.error(xhr);
        Swal.fire('Error', 'Terjadi kesalahan server', 'error');
    }
});

            }
        });
    });
});

// template row
function rowTemplate(jam='', mulai='', selesai='') {
    return `
   <div class="d-flex gap-1 mb-1 jam-row align-items-start">
    <input type="number" class="form-control jam_ke" placeholder="Jam Ke" value="${jam}">
    <input type="time" class="form-control mulai" value="${mulai}">
    <input type="time" class="form-control selesai" value="${selesai}">
    <button class="btn btn-outline-danger d-flex align-items-start justify-content-center removeRow">
        <iconify-icon icon="typcn:times"></iconify-icon>
    </button>
</div>
    `;
}

// tambah row
$(document).on('click', '#addRow', () => {
    $('#jamWrapper').append(rowTemplate());
});

// hapus row
$(document).on('click', '.removeRow', function () {
    $(this).closest('.jam-row').remove();
});
</script>



    <script>
        $(document).ready(function() {
            // Inisialisasi Select2
            $('#select_guru').select2({
                theme: 'bootstrap-5',
                placeholder: 'Pilih Guru',
                allowClear: true,
                // width: '100%'
            });
    
            $('#select_kelas').select2({
                theme: 'bootstrap-5',
                   placeholder: "Pilih Kelas",
                placeholder: 'Pilih Kelas',
                allowClear: true,
                // width: '100%'
            });
        });
    </script>

    <script>
$(document).on('click', '.btn-edit', function () {
    const id = $(this).data('id');
    const jam = $(this).data('jam');
    const pertemuan = $(this).data('pertemuan');

    Swal.fire({
        title: 'Atur Jam Mengajar',
        html: `
            <div class="text-start">
                <label class="form-label">Jam Mengajar</label>
                <input type="number" id="jam_mengajar" class="form-control mb-2" value="${jam}">

                <label class="form-label">Pertemuan / Minggu</label>
                <input type="number" id="pertemuan" class="form-control" value="${pertemuan}">
            </div>
        `,
        showCancelButton: true,
        confirmButtonText: 'Simpan',
        cancelButtonText: 'Batal',
        preConfirm: () => {
            return {
                jam_mengajar: $('#jam_mengajar').val(),
                pertemuan_per_minggu: $('#pertemuan').val()
            }
        }
    }).then((result) => {
        if (result.isConfirmed) {
            updateMengajar(id, result.value);
        }
    });
});

function updateMengajar(id, data) {
    $.ajax({
        url: `/admin/hariaktif/jammengajar/${id}`,
        type: 'PUT',
        data: {
            _token: '{{ csrf_token() }}',
            jam_mengajar: data.jam_mengajar,
            pertemuan_per_minggu: data.pertemuan_per_minggu
        },
        success: function (res) {
            Swal.fire({
                icon: 'success',
                title: 'Berhasil',
                text: res.message
            }).then(() => {
                location.reload(); // atau update DOM manual
            });
        },
        error: function () {
            Swal.fire(
                'Gagal',
                'Terjadi kesalahan saat menyimpan data',
                'error'
            );
        }
    });
}
</script>

@push('scripts')
<script>
$(document).on('click', '.btn-delete', function () {
    const id = $(this).data('id');

    Swal.fire({
        title: 'Yakin ingin menghapus?',
        text: 'Hari aktif KBM ini akan dihapus permanen!',
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#d33',
        cancelButtonColor: '#6c757d',
        confirmButtonText: 'Ya, hapus',
        cancelButtonText: 'Batal'
    }).then((result) => {
        if (result.isConfirmed) {
            deleteMengajar(id);
        }
    });
});

function deleteMengajar(id) {
    $.ajax({
        url: `/admin/hariaktif/${id}`,
        type: 'DELETE',
        data: {
            _token: '{{ csrf_token() }}'
        },
        success: function (res) {
            Swal.fire(
                'Terhapus!',
                res.message,
                'success'
            );
            setTimeout(() => {
                location.reload();
            }, 1000);

            // 🔥 hapus card / list tanpa reload
            $('#mengajar-' + id).fadeOut(300, function () {
                $(this).remove();
            });
        },
        error: function (err) {
            console.log(err);
            Swal.fire(
                'Gagal',
                'Data gagal dihapus',
                'error'
            );
        }
    });
}
</script>
@endpush

    @endpush
@endsection