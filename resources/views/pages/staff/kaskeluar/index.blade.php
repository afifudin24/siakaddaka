@extends('layouts.app')

@section('content')

    <div class="dashboard-main-body">
      <div class="d-flex flex-wrap align-items-center justify-content-between gap-3 mb-24">
            <h6 class="fw-semibold mb-0">Kas Keluar</h6>
            <ul class="d-flex align-items-center gap-2">
                <li class="fw-medium">
                    <a href="index.html" class="d-flex align-items-center gap-1 hover-text-primary">
                        <iconify-icon icon="solar:home-smile-angle-outline" class="icon text-lg"></iconify-icon>
                        Dashboard
                    </a>
                </li>
                <li>-</li>
                <li class="fw-medium">Kas Keluar</li>
            </ul>
        </div>

         <div class="card basic-data-table">
            <div class="card-header d-flex justify-content-between align-items-center">
                <h5 class="card-title mb-0">Data Kas Keluar</h5>
                <div>
                    <div class="d-flex gap-2">
                   <button type="button"
    class="btn btn-primary text-sm btn-sm p-1 radius-4 d-flex align-items-center gap-2"
    id="btnTambahKasKeluar">
    <iconify-icon icon="lucide:plus" class="text-xl"></iconify-icon>
    <span class="d-none d-md-inline">Tambah Kas Keluar</span>
</button>

                    </div>

                </div>

            </div>

            <div class="card-body">
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

                <form method="GET" class=" border-0 mb-3">
    <div class="card-body">
        <div class="row g-2 d-flex justify-content-start align-items-start">

            <div class="col-md-2">
                <label class="form-label small">Tanggal Mulai</label>
                <input type="date" name="tanggal_mulai"
                    class="form-control form-control-sm"
                    value="{{ request('tanggal_mulai') }}">
            </div>

            <div class="col-md-2 ">
                <label class="form-label small">Tanggal Selesai</label>
                <input type="date" name="tanggal_selesai"
                    class="form-control form-control-sm"
                    value="{{ request('tanggal_selesai') }}">
            </div>

            <div class="col-md-3  p-0">
                <label class="form-label small">Tahun Pelajaran</label>
                <select name="tahun_pelajaran_id" id="tahunPelajaran"
                    class="form-select form-select-sm">
                    @foreach ($tahunPelajaran as $tp)
                        <option value="{{ $tp->id }}"
                            {{ request('tahun_pelajaran_id', $tahunAktif?->id) == $tp->id ? 'selected' : '' }}>
                            {{ $tp->nama }} {{ $tp->is_active ? '(Aktif)' : '' }}
                        </option>
                    @endforeach
                </select>
            </div>

            <div class="col-md-3 mb-3 md-md-0">
                <label class="form-label small">Semester</label>
                <select name="semester_id" id="semester"
                    class="form-select form-select-sm">
                    @foreach ($semesterList as $smt)
                        <option value="{{ $smt->id }}"
                            {{ request('semester_id', $semesterAktif?->id) == $smt->id ? 'selected' : '' }}>
                            {{ $smt->nama }} {{ $smt->is_active ? '(Aktif)' : '' }}
                        </option>
                    @endforeach
                </select>
            </div>

          

        </div>
          <div class="col-md-2 mt-2 d-flex gap-2">
                <button class="btn btn-sm d-flex gap-1 align-items-center btn-primary w-100">
                    <iconify-icon icon="mdi:filter"></iconify-icon> Filter
                </button>
                <a href="{{ route('staff.kaskeluar.index') }}"
                    class="btn btn-sm btn-light w-100 d-flex gap-1 align-items-center">
                   <iconify-icon icon="system-uicons:reset-alt"></iconify-icon>  Reset
                </a>
               <a href="{{ route('staff.kaskeluar.cetak', request()->query()) }}"
   target="_blank"
   class="btn btn-danger btn-sm d-flex gap-1 align-items-center">
    <iconify-icon icon="lucide:printer"></iconify-icon>
    Cetak
</a>
            </div>
   
</form>


                <div class="table-responsive mt-3">
                    <table class="table basic-border-table">
                        <thead>
                            <tr>
                                <th scope="col">No</th>
                                <th scope="col">Tanggal</th>
                                <th scope="col">Kategori</th>
                                <th scope="col">Keterangan</th>
                                <th scope="col">Jumlah</th>
                                <th scope="col">Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            @forelse ($kaskeluars as $kaskeluar)
                                <tr>
                                    <td>{{ $loop->iteration }}</td>
                                    <td>{{ \Carbon\Carbon::parse($kaskeluar->tanggal)->translatedFormat('d F Y') }}</td>
                                    <td>{{ $kaskeluar->kategori }}</td>
                                    <td>{{ $kaskeluar->keterangan }}</td>
                                    <td>{{ rupiah($kaskeluar->jumlah) }}</td>
                                    <td>
                                    <div class="d-flex gap-1">
                                   <a href="javascript:void(0)"
   class="btn btn-sm btn-warning p-1 d-flex align-items-center gap-1 btnEditKasKeluar"
   data-id="{{ $kaskeluar->id }}"
   data-tanggal="{{ $kaskeluar->tanggal }}"
   data-kategori="{{ $kaskeluar->kategori }}"
   data-jumlah="{{ $kaskeluar->jumlah }}"
   data-keterangan="{{ $kaskeluar->keterangan }}">
    <iconify-icon icon="lucide:edit"></iconify-icon>
    Edit
</a>
                                    <button type="button"
    class="btn btn-sm p-1 btn-danger d-flex align-items-center gap-1 btnHapusKasKeluar"
    data-id="{{ $kaskeluar->id }}">
    <iconify-icon icon="lucide:trash-2"></iconify-icon>
    Hapus
</button>
                                    </div>
                                    </td>
                                </tr>
                            @empty
                                <tr>
                                    <td colspan="5" class="text-center">Belum Ada Data</td>
                                </tr>
                            @endforelse
                        </tbody>
                    </table>
                </div>


                {{ $kaskeluars->links() }}
 </div>
            
            </div>
            </div>
            
          
            
            

    </div>

    @push('scripts')
    
<script>
document.getElementById('tahunPelajaran').addEventListener('change', function () {
    const tahunId = this.value;
    const semesterSelect = document.getElementById('semester');

    semesterSelect.innerHTML = `<option value="">Memuat...</option>`;

    fetch(`/staff/semester/by-tahun/${tahunId}`)
        .then(res => res.json())
        .then(data => {
           
            semesterSelect.innerHTML = '';

            data.forEach(semester => {
                const option = document.createElement('option');
                option.value = semester.id;
                option.textContent = semester.nama + (semester.is_active ? ' (Aktif)' : '');
                semesterSelect.appendChild(option);
            });

            // auto submit setelah semester terisi
            semesterSelect.form.submit();
        })
        .catch((err) => {
            console.log(err);
            semesterSelect.innerHTML = `<option value="">Gagal memuat semester</option>`;
        });
});
</script>

<script>
$('#btnTambahKasKeluar').on('click', function () {

    const today = new Date().toISOString().split('T')[0];

    Swal.fire({
        title: 'Tambah Kas Keluar',
        width: 500,
        html: `
            <div class="mb-2 text-start">
                <label class="form-label">Tanggal</label>
                <input type="date" id="tanggal" class="form-control" value="${today}">
            </div>

            <div class="mb-2 text-start">
                <label class="form-label">Kategori</label>
                <select id="kategori" class="form-control">
                    <option value="">-- Pilih Kategori --</option>
                    <option value="ATK">ATK</option>
                    <option value="Transport">Transport</option>
                    <option value="Konsumsi">Konsumsi</option>
                    <option value="Perawatan">Perawatan</option>
                    <option value="Lainnya">Lainnya</option>
                </select>
            </div>

            <div class="mb-2 text-start d-none" id="kategori-lainnya-wrapper">
                <label class="form-label">Kategori Lainnya</label>
                <input type="text" id="kategori_lainnya" class="form-control">
            </div>

            <div class="mb-2 text-start">
                <label class="form-label">Jumlah</label>
                <input type="number" id="jumlah" class="form-control">
            </div>

            <div class="mb-2 text-start">
                <label class="form-label">Keterangan</label>
                <textarea id="keterangan" class="form-control" rows="3"></textarea>
            </div>
        `,
        showCancelButton: true,
        confirmButtonText: 'Simpan',
        cancelButtonText: 'Batal',
        focusConfirm: false,
        didOpen: () => {

            $('#kategori').on('change', function () {
                if ($(this).val() === 'Lainnya') {
                    $('#kategori-lainnya-wrapper').removeClass('d-none');
                } else {
                    $('#kategori-lainnya-wrapper').addClass('d-none');
                    $('#kategori_lainnya').val('');
                }
            });
        }
    }).then((result) => {

        if (!result.isConfirmed) return;

        // Ambil nilai
        let tanggal = $('#tanggal').val();
        let kategori = $('#kategori').val();
        let kategoriLainnya = $('#kategori_lainnya').val();
        let jumlah = $('#jumlah').val();
        let keterangan = $('#keterangan').val();

        // 🔒 Validasi manual
        if (!tanggal || !kategori || !jumlah) {
            Swal.fire('Validasi', 'Tanggal, kategori dan jumlah wajib diisi', 'warning');
            return;
        }

        if (kategori === 'Lainnya' && !kategoriLainnya) {
            Swal.fire('Validasi', 'Kategori lainnya wajib diisi', 'warning');
            return;
        }

        // 🔄 Tampilkan LOADING
        Swal.fire({
            title: 'Menyimpan...',
            html: 'Mohon tunggu',
            allowOutsideClick: false,
            didOpen: () => {
                Swal.showLoading();
            }
        });

        // 🚀 AJAX
        $.ajax({
            url: "{{ route('staff.kaskeluar.store') }}",
            type: "POST",
            data: {
                _token: "{{ csrf_token() }}",
                tanggal,
                kategori: kategori === 'Lainnya' ? kategoriLainnya : kategori,
                jumlah,
                keterangan
            },
            success: function (res) {
                Swal.fire({
                    icon: 'success',
                    title: 'Berhasil',
                    text: res.message,
                    timer: 1500,
                    showConfirmButton: false
                });

                setTimeout(() => {
                    location.reload();
                }, 1500);
            },
            error: function (xhr) {
                Swal.fire(
                    'Gagal',
                    xhr.responseJSON?.message ?? 'Terjadi kesalahan',
                    'error'
                );
            }
        });
    });
});
</script>

<script>
$(document).on('click', '.btnEditKasKeluar', function () {

    const id = $(this).data('id');
    const tanggal = $(this).data('tanggal');
    const kategori = $(this).data('kategori');
    const jumlah = $(this).data('jumlah');
    const keterangan = $(this).data('keterangan') ?? '';

    const kategoriList = ['ATK','Transport','Konsumsi','Perawatan'];
    const isLainnya = !kategoriList.includes(kategori);

    Swal.fire({
        title: 'Edit Kas Keluar',
        width: 500,
        html: `
            <div class="mb-2 text-start">
                <label class="form-label">Tanggal</label>
                <input type="date" id="tanggal" class="form-control" value="${tanggal}">
            </div>

            <div class="mb-2 text-start">
                <label class="form-label">Kategori</label>
                <select id="kategori" class="form-control">
                    <option value="">-- Pilih Kategori --</option>
                    <option value="ATK">ATK</option>
                    <option value="Transport">Transport</option>
                    <option value="Konsumsi">Konsumsi</option>
                    <option value="Perawatan">Perawatan</option>
                    <option value="Lainnya">Lainnya</option>
                </select>
            </div>

            <div class="mb-2 text-start ${isLainnya ? '' : 'd-none'}" id="kategori-lainnya-wrapper">
                <label class="form-label">Kategori Lainnya</label>
                <input type="text" id="kategori_lainnya" class="form-control"
                       value="${isLainnya ? kategori : ''}">
            </div>

            <div class="mb-2 text-start">
                <label class="form-label">Jumlah</label>
                <input type="number" id="jumlah" class="form-control" value="${jumlah}">
            </div>

            <div class="mb-2 text-start">
                <label class="form-label">Keterangan</label>
                <textarea id="keterangan" class="form-control" rows="3">${keterangan}</textarea>
            </div>
        `,
        showCancelButton: true,
        confirmButtonText: 'Update',
        cancelButtonText: 'Batal',
        didOpen: () => {
            $('#kategori').val(isLainnya ? 'Lainnya' : kategori);

            $('#kategori').on('change', function () {
                if ($(this).val() === 'Lainnya') {
                    $('#kategori-lainnya-wrapper').removeClass('d-none');
                } else {
                    $('#kategori-lainnya-wrapper').addClass('d-none');
                    $('#kategori_lainnya').val('');
                }
            });
        },
        preConfirm: () => {
            let tanggal = $('#tanggal').val();
            let kategoriVal = $('#kategori').val();
            let kategoriLainnya = $('#kategori_lainnya').val();
            let jumlah = $('#jumlah').val();

            if (!tanggal || !kategoriVal || !jumlah) {
                Swal.showValidationMessage('Tanggal, kategori, dan jumlah wajib diisi');
                return false;
            }

            if (kategoriVal === 'Lainnya' && !kategoriLainnya) {
                Swal.showValidationMessage('Kategori lainnya wajib diisi');
                return false;
            }

            return {
                tanggal,
                kategori: kategoriVal === 'Lainnya' ? kategoriLainnya : kategoriVal,
                jumlah,
                keterangan: $('#keterangan').val()
            };
        }
    }).then((result) => {
        if (result.isConfirmed) {
            $.ajax({
                url: `/staff/kaskeluar/${id}`,
                type: 'PUT',
                data: {
                    _token: "{{ csrf_token() }}",
                    ...result.value
                },
                success: function (res) {
                    Swal.fire({
                        icon: 'success',
                        title: 'Berhasil',
                        text: res.message,
                        timer: 1500,
                        showConfirmButton: false
                    }).then(() => location.reload());
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
</script>

<script>
$(document).on('click', '.btnHapusKasKeluar', function () {

    const id = $(this).data('id');

    Swal.fire({
        title: 'Yakin ingin menghapus?',
        text: 'Data kas keluar akan dihapus permanen dan tidak bisa dikembalikan.',
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#dc3545',
        cancelButtonColor: '#6c757d',
        confirmButtonText: 'Ya, Hapus',
        cancelButtonText: 'Batal'
    }).then((result) => {
        if (result.isConfirmed) {

            Swal.fire({
                title: 'Menghapus...',
                allowOutsideClick: false,
                didOpen: () => Swal.showLoading()
            });

            $.ajax({
                url: `/staff/kaskeluar/${id}`,
                type: 'DELETE',
                data: {
                    _token: "{{ csrf_token() }}"
                },
                success: function (res) {
                    Swal.fire({
                        icon: 'success',
                        title: 'Berhasil',
                        text: res.message,
                        timer: 1500,
                        showConfirmButton: false
                    }).then(() => location.reload());
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
</script>





    @endpush

@endsection