@extends('layouts.app')
@section('content')
    <div class="dashboard-main-body">
        <div class="d-flex flex-wrap align-items-center justify-content-between gap-3 mb-24">
            <h6 class="fw-semibold mb-0">Agenda Monitoring PKL</h6>
        </div>
        <div class="card basic-data-table">
            <div class="card-header d-flex justify-content-between align-items-center">
                <h5 class="card-title mb-0">Agenda Monitoring PKL</h5>
                <div>
                    <div class="d-flex gap-2">
                       <a href="javascript:void(0)" 
   id="btnTambahAgenda"
   class="btn btn-primary text-sm btn-sm p-1 radius-4 d-flex align-items-center gap-2">
    <iconify-icon icon="mdi:add" class="text-xl"></iconify-icon>
    <span class="d-none d-md-inline">Tambah Agenda</span>
</a>

                    </div>
                </div>
            </div>
            <div class="card-body">
                     <div class="">
                    <div class="d-flex gap-1">
                        <form method="GET" class="mb-3 col-md-2">
    @foreach(request()->except('tahun_pelajaran_id') as $key => $value)
        <input type="hidden" name="{{ $key }}" value="{{ $value }}">
    @endforeach
    <select name="tahun_pelajaran_id" class="form-select" id="select_dudi" onchange="this.form.submit()">
        <option value="">Tahun Pelajaran</option>
       
        @foreach ($tahunPelajaran as $tp)
            <option value="{{ $tp->id }}" {{ $tahunPelajaranId == $tp->id ? 'selected' : '' }}>
                {{ $tp->nama }}
            </option>
        @endforeach
    </select>
</form>
                    </div>
                            <div class="d-flex gap-2 flex-wrap">
                                   <form method="GET">
    @foreach(request()->except('paginate') as $key => $value)
        <input type="hidden" name="{{ $key }}" value="{{ $value }}">
    @endforeach
    <select name="paginate"
        class="form-select form-select-sm w-auto"
        onchange="this.form.submit()">
        @for ($i = 10; $i <= 100; $i += 10)
            <option value="{{ $i }}" {{ request('paginate', 20) == $i ? 'selected' : '' }}>
                {{ $i }}
            </option>
        @endfor
    </select>
</form>
                 <form method="GET"
      class="navbar-search d-flex flex-wrap justify-content-start gap-2 align-items-center">

    {{-- Tanggal Mulai --}}
    <input type="date"
           class="bg-base h-40 col-md-3 col-3"
           name="tanggal_mulai"
           value="{{ request('tanggal_mulai') }}">

    {{-- Tanggal Selesai --}}
    <input type="date"
           class="bg-base h-40 col-md-3 col-3"
           name="tanggal_selesai"
           value="{{ request('tanggal_selesai') }}">

    {{-- Tombol Filter --}}
    <button class="btn btn-brand btn-sm h-40-px px-12 radius-12">
        <iconify-icon icon="mdi:filter-outline"></iconify-icon>
       
    </button>

    {{-- Keep request lain agar tidak reset --}}
    @foreach(request()->except(['tanggal_mulai', 'tanggal_selesai']) as $key => $value)
        <input type="hidden" name="{{ $key }}" value="{{ $value }}">
    @endforeach
</form>

</div>
                        </div>
       <div class="row g-3 mt-24">
    @forelse($agenda as $a)
        <div class="col-12 col-md-6 col-lg-4">
            <div class="card p-16 shadow-sm border radius-12 h-100">
                <div class="d-flex flex-column h-100 justify-content-between">
                    {{-- Konten --}}
                    <div>
                        <h6 class="fw-bold mb-2">
                            {{ $a->nama_agenda }}
                        </h6>
                       
                       
                       
                    <span class="badge bg-info mb-1">
    {{ \Carbon\Carbon::parse($a->tanggal_mulai)->translatedFormat('d F Y') }}
    -
    {{ \Carbon\Carbon::parse($a->tanggal_selesai)->translatedFormat('d F Y') }}
</span>

                        @if($a->catatan)
                            <p class="mt-2 text-muted small">
                                {{ Str::limit($a->catatan, 80) }}
                            </p>
                        @endif
                    </div>
                    {{-- Aksi --}}
                    <div class="d-flex gap-2 mt-3">
                        <!-- Lihat -->
                        <button class="btn btn-sm btn-success text-white btn-view"
                                data-id="{{ $a->id }}">
                            <iconify-icon icon="mdi:eye-outline" class="text-lg"></iconify-icon>
                        </button>
                        <!-- Edit -->
                        <a href="javascript:void(0)"
   class="btn btn-sm btn-warning text-white btnEditAgenda"
   data-id="{{ $a->id }}"
   data-nama="{{ $a->nama_agenda }}"
  data-mulai="{{ \Carbon\Carbon::parse($a->tanggal_mulai)->format('Y-m-d') }}"
   data-akhir="{{ \Carbon\Carbon::parse($a->tanggal_selesai)->format('Y-m-d') }}"
   data-catatan="{{ $a->catatan }}">
    <iconify-icon icon="ic:baseline-edit" class="text-lg"></iconify-icon>
</a>

                        <!-- Hapus -->
                       <button class="btn btn-sm btn-danger text-white btn-delete"
        data-id="{{ $a->id }}">
    <iconify-icon icon="bx:trash" class="text-lg"></iconify-icon>
</button>

                    </div>
                </div>
            </div>
        </div>
    @empty
        <div class="col-12">
            <div class="alert alert-info text-center d-flex align-items-center justify-content-center gap-2">
                <iconify-icon icon="material-symbols:info"></iconify-icon>
                Belum ada data Agenda Monitoring PKL.
            </div>
        </div>
    @endforelse
</div>
  <div class="d-flex align-items-center justify-content-between flex-wrap gap-2 mt-24">
                 <span>
    Menampilkan
    {{ $agenda->firstItem() ?? 0 }} 
    sampai
    {{ $agenda->lastItem() ?? 0 }} 
    dari
    {{ $agenda->total() }} 
    data
</span>
                    {{ $agenda->links() }}
                </div>
             
            </div>
        </div>
    </div>
    @push('scripts')
    <script>
   let tableoke =  $('#dataTablePesertaPKL').DataTable({
          responsive: true,
    autoWidth: false,
      "pageLength": 25,
    sorting: false,
    ordering: false,
    // scrollX: true,
    language: {
        "emptyTable": "Tidak ada data",
        "info": "Menampilkan _START_ sampai _END_ dari _TOTAL_ data",
        "infoEmpty": "Menampilkan 0 sampai 0 dari 0 data",
        "lengthMenu": "Tampilkan _MENU_ data",
        "loadingRecords": "Memuat...",
        "processing": "Memproses...",
        "search": "Cari:",
        "zeroRecords": "Tidak ditemukan data yang cocok",
       
    }
    
});
/* PENTING */
tableoke.on('draw', function () {
    if (window.Iconify) {
        Iconify.scan();
    }
});
   $('#select_dudi').select2({
                theme: "bootstrap-5",
                //   closeOnSelect : false,
                placeholder: "Pilih Jurusan",
                width: '100%',
                language: {
                    noResults: function() {
                        return "Tidak ada data";
                    }
                }
            });
               $('#select_status').select2({
                theme: "bootstrap-5",
                //   closeOnSelect : false,
                placeholder: "Pilih Status",
                width: '100%',
                language: {
                    noResults: function() {
                        return "Tidak ada data";
                    }
                }
            });
</script>
<script>
// Event klik tombol hapus
$(document).on('click', '.btn-edit', function() {
    let id = $(this).data('id');
    Swal.fire({
        title: 'Apakah Anda yakin?',
        text: "Data peserta PKL akan dihapus permanen!",
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#d33',
        cancelButtonColor: '#3085d6',
        confirmButtonText: 'Ya, hapus!',
        cancelButtonText: 'Batal'
    }).then((result) => {
        if (result.isConfirmed) {
            $.ajax({
                url: '/admin/peserta-pkl/' + id,
                type: 'DELETE',
                data: {
                    _token: '{{ csrf_token() }}'
                },
                success: function(response) {
                    if(response.status) {
                        Swal.fire(
                            'Terhapus!',
                            response.message,
                            'success'
                        );
                        // Refresh table atau hapus row
                        location.reload();
                    } else {
                        Swal.fire(
                            'Gagal!',
                            response.message,
                            'error'
                        );
                    }
                },
                error: function(xhr) {
                    Swal.fire(
                        'Error!',
                        xhr.responseJSON?.message || 'Terjadi kesalahan!',
                        'error'
                    );
                }
            });
        }
    });
});
</script>
<script>
$('#selectAll').on('change', function () {
    $('.select-item').prop('checked', $(this).is(':checked'));
});
</script>

<script>
document.getElementById('btnTambahAgenda').addEventListener('click', function () {
    Swal.fire({
        title: 'Tambah Agenda Monitoring',
        html: `
            <div class="row g-2 text-start">
                <div class="col-md-6">
                    <label class="form-label">Nama Agenda</label>
                    <input type="text" id="nama_agenda" class="form-control">
                </div>

                <div class="col-md-6">
                    <label class="form-label">Tanggal Mulai</label>
                    <input type="date" id="tanggal_mulai" class="form-control">
                </div>

                <div class="col-md-6">
                    <label class="form-label">Tanggal Akhir</label>
                    <input type="date" id="tanggal_akhir" class="form-control">
                </div>

                <div class="col-md-6">
                    <label class="form-label">Catatan</label>
                    <textarea id="catatan" class="form-control" rows="2"></textarea>
                </div>
            </div>
        `,
        showCancelButton: true,
        confirmButtonText: 'Simpan',
        cancelButtonText: 'Batal',
        focusConfirm: false,
        preConfirm: () => {
            return {
                nama_agenda: document.getElementById('nama_agenda').value,
                tanggal_mulai: document.getElementById('tanggal_mulai').value,
                tanggal_akhir: document.getElementById('tanggal_akhir').value,
                catatan: document.getElementById('catatan').value,
            }
        }
    }).then((result) => {
        if (result.isConfirmed) {
            simpanAgenda(result.value);
        }
    });
});
</script>
<script>
function simpanAgenda(data) {
    $.ajax({
        url: "{{ route('admin.agenda-monitoring.store') }}",
        type: "POST",
        data: {
            _token: "{{ csrf_token() }}",
            nama_agenda: data.nama_agenda,
            tanggal_mulai: data.tanggal_mulai,
            tanggal_akhir: data.tanggal_akhir,
            catatan: data.catatan,
        },
        success: function (res) {
            Swal.fire('Berhasil', res.message, 'success')
                .then(() => location.reload());
        },
        error: function (err) {
            console.log(err);
            Swal.fire('Error', 'Gagal menyimpan agenda', 'error');
        }
    });
}
</script>

<script>
$(document).on('click', '.btnEditAgenda', function () {
    const id = $(this).data('id');
    const tanggalMulai = $(this).data('mulai');
    console.log(tanggalMulai);

    Swal.fire({
        title: 'Edit Agenda Monitoring',
        html: `
            <div class="row g-2 text-start">
                <div class="col-md-6">
                    <label class="form-label">Nama Agenda</label>
                    <input type="text" id="nama_agenda" class="form-control" 
                           value="${$(this).data('nama')}">
                </div>

                <div class="col-md-6">
                    <label class="form-label">Tanggal Mulai</label>
                    <input type="date" id="tanggal_mulai" class="form-control" 
                           value="${$(this).data('mulai')}">
                </div>

                <div class="col-md-6">
                    <label class="form-label">Tanggal Akhir</label>
                    <input type="date" id="tanggal_akhir" class="form-control" 
                           value="${$(this).data('akhir')}">
                </div>

                <div class="col-md-6">
                    <label class="form-label">Catatan</label>
                    <textarea id="catatan" class="form-control" rows="2">${$(this).data('catatan')}</textarea>
                </div>
            </div>
        `,
        showCancelButton: true,
        confirmButtonText: 'Update',
        cancelButtonText: 'Batal',
        focusConfirm: false,

        preConfirm: () => {
            const nama_agenda   = $('#nama_agenda').val().trim();
            const tanggal_mulai = $('#tanggal_mulai').val();
            const tanggal_akhir = $('#tanggal_akhir').val();
            const catatan       = $('#catatan').val().trim();

            if (!nama_agenda || !tanggal_mulai || !tanggal_akhir || !catatan) {
                Swal.showValidationMessage('⚠️ Semua field wajib diisi');
                return false;
            }

            if (tanggal_akhir < tanggal_mulai) {
                Swal.showValidationMessage('⚠️ Tanggal akhir tidak boleh lebih kecil dari tanggal mulai');
                return false;
            }

            return {
                id,
                nama_agenda,
                tanggal_mulai,
                tanggal_akhir,
                catatan
            };
        }
    }).then((result) => {
        if (result.isConfirmed) {
            updateAgenda(result.value);
        }
    });
});
</script>


      <script>
function updateAgenda(data) {
    $.ajax({
        url: `/admin/agenda-monitoring/${data.id}`,
        type: "PUT",
        data: {
            _token: "{{ csrf_token() }}",
            nama_agenda: data.nama_agenda,
            tanggal_mulai: data.tanggal_mulai,
            tanggal_akhir: data.tanggal_akhir,
            catatan: data.catatan,
        },
        beforeSend: function () {
            Swal.showLoading();
        },
        success: function (res) {
            Swal.fire('Berhasil', res.message, 'success')
                .then(() => location.reload());
        },
        error: function (err) {
            console.log(err);   
            Swal.fire('Error', 'Gagal memperbarui agenda', 'error');
        }
    });
}
</script>
<script>
$(document).on('click', '.btn-delete', function () {
    const id = $(this).data('id');

    Swal.fire({
        title: 'Hapus Agenda?',
        text: 'Data agenda monitoring ini akan dihapus permanen!',
        icon: 'warning',
        showCancelButton: true,
        confirmButtonText: 'Ya, Hapus',
        cancelButtonText: 'Batal',
        reverseButtons: true
    }).then((result) => {
        if (result.isConfirmed) {
            hapusAgenda(id);
        }
    });
});
</script>
<script>
function hapusAgenda(id) {
    $.ajax({
        url: `/admin/agenda-monitoring/${id}`,
        type: 'DELETE',
        data: {
            _token: "{{ csrf_token() }}"
        },
        beforeSend: function () {
            Swal.showLoading();
        },
        success: function (res) {
            Swal.fire('Berhasil', res.message, 'success')
                .then(() => location.reload());
        },
        error: function () {
            Swal.fire('Error', 'Gagal menghapus agenda', 'error');
        }
    });
}
</script>

    @endpush
@endsection