@extends('layouts.app')

@section('content')

    <div class="dashboard-main-body">

        <div class="d-flex flex-wrap align-items-center justify-content-between gap-3 mb-24">
            <h6 class="fw-semibold mb-0">Tagihan</h6>
            <ul class="d-flex align-items-center gap-2">
                <li class="fw-medium">
                    <a href="index.html" class="d-flex align-items-center gap-1 hover-text-primary">
                        <iconify-icon icon="solar:home-smile-angle-outline" class="icon text-lg"></iconify-icon>
                        Dashboard
                    </a>
                </li>
                <li>-</li>
                <li class="fw-medium">Daftar Tagihan</li>
            </ul>
        </div>

        <div class="card basic-data-table">
            <div class="card-header d-flex justify-content-between align-items-center">
                <h5 class="card-title mb-0">Data Tagihan {{ $siswa->nama }}</h5>
                <div>
                    <div class="d-flex gap-2">
                        <a href="javascript:void(0)" id="btnTambahTagihan"
                            class="btn btn-primary text-sm btn-sm p-1 radius-4 d-flex align-items-center gap-2">
                            <iconify-icon icon="lucide:plus" class="text-xl"></iconify-icon>
                            <span class="d-none d-md-inline">Tambah</span>
                        </a>

                        <!--
                                <a href="{{ route('admin.siswa.importview') }}"
                                    class="btn btn-success text-sm btn-sm p-1 radius-4 d-flex align-items-center gap-2">
                                    <iconify-icon icon="ic:baseline-download" class="text-xl"></iconify-icon>
                                    <span class="d-none d-md-inline">Import Siswa</span>
                                </a> -->
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


                <div class="d-flex gap-2">
                 
    {{-- PAGINATE --}}
    <form id="perPageForm" method="GET">
        <input type="hidden" name="status" value="{{ request('status') }}">
        <input type="hidden" name="tahun_pelajaran_id" value="{{ request('tahun_pelajaran_id', $tahunAktif?->id) }}">
        <input type="hidden" name="semester_id" value="{{ request('semester_id', $semesterAktif?->id) }}">

        <select name="paginate"
            class="form-select form-select-sm w-auto ps-12 py-6 radius-12 h-40-px"
            onchange="this.form.submit()">
            @for ($i = 10; $i <= 100; $i += 10)
                <option value="{{ $i }}" {{ request('paginate', 10) == $i ? 'selected' : '' }}>
                    {{ $i }}
                </option>
            @endfor
        </select>
    </form>

    {{-- FILTER STATUS + TAHUN + SEMESTER --}}
    <form method="GET">
        <input type="hidden" name="paginate" value="{{ request('paginate', 10) }}">

        <div class="d-flex align-items-center gap-2">

            {{-- Status --}}
            <select name="status" class="form-select form-select-sm" onchange="this.form.submit()">
                <option value="">Status Tagihan</option>
                <option value="lunas" {{ request('status') == 'lunas' ? 'selected' : '' }}>
                    Lunas
                </option>
                <option value="belum" {{ request('status') == 'belum' ? 'selected' : '' }}>
                    Belum Lunas
                </option>
            </select>

            {{-- Tahun Pelajaran --}}
           <select name="tahun_pelajaran_id"
        id="tahunPelajaran"
        class="form-select form-select-sm">
    @foreach ($tahunPelajaran as $tp)
        <option value="{{ $tp->id }}"
            {{ request('tahun_pelajaran_id', $tahunAktif?->id) == $tp->id ? 'selected' : '' }}>
            {{ $tp->nama }} {{ $tp->is_active ? '(Aktif)' : '' }}
        </option>
    @endforeach
</select>

            {{-- Semester --}}
          <select name="semester_id"
        id="semester"
        class="form-select form-select-sm">
    @foreach ($semesterList as $smt)
        <option value="{{ $smt->id }}"
            {{ request('semester_id', $semesterAktif?->id) == $smt->id ? 'selected' : '' }}>
            {{ $smt->nama }} {{ $smt->is_active ? '(Aktif)' : '' }}
        </option>
    @endforeach
</select>


        </div>
    </form>

                </div>
                <div class="table-responsive mt-3">
                    <table class="table basic-border-table" style="width:100%">
                        <thead>
                            <tr>


                                <th scope="col" style="width : 10px !important; padding: 0.9rem 7px; text-align: center">
                                    NO
                                </th>

                                <!-- Kode kelas (hilang di mobile) -->
                                <th scope="col" class="">Tagihan</th>

                                <th scope="col" class="">Nominal</th>
                                <th scope="col" class="">Tahun Pelajaran</th>



                                <!-- Walikelas (hilang di mobile) -->
                                <th scope="col"class="">Aksi</th>

                            </tr>
                        </thead>

                        <tbody>
                            @if (count($tagihan) > 0)
                                @foreach ($tagihan as $t)
                                    <tr>


                                        <td class="text-center"
                                            style="width : 10px !important; padding: 0.9rem 7px; text-align: center">

                                            <span class="">{{ $loop->iteration }}</span>

                                        </td>
                                        <td class="" text-align: left;">
                                            {{ $t->nama_tagihan }} <br>
                                            @if ($t->status == 'belum lunas')
                                                <span class="badge bg-danger">Belum Lunas</span>
                                            @else
                                                <span class="badge bg-success">Lunas</span>
                                            @endif
                                            <span class="badge bg-warning text-dark">
                                                {{ $t->jenisTagihan->nama_jenis ?? '-' }}</span>



                                        </td>


                                        <!-- Kolom disembunyikan di mobile -->
                                        <td class="">
                                            {{ rupiah($t->jumlah) ?? '-' }}
                                        </td>

                                        <td>
                                            <span class="badge bg-info">
                                                {{ $t->tahunPelajaran->nama ?? '-' }}
                                            </span>
                                            <br>
                                            <span class="badge bg-secondary">
                                                {{ $t->semester->nama ?? '-' }}
                                            </span>

                                        </td>


                                        <td>

                                            <a href="{{ route('staff.tagihan.detailTagihan', $t->id) }}"
                                                class="d-none d-md-inline-flex p-1 btn btn-small btn-sm btn-success d-inline-flex align-items-center gap-1 justify-content-center">
                                                <iconify-icon icon="mdi:cash"></iconify-icon>
                                                Bayar
                                            </a>
                                            <a href="javascript:void(0)"
                                                class="btn btn-sm btn-warning p-1 d-md-inline-flex d-none  align-items-center gap-1 edit-tagihan"
                                                data-id="{{ $t->id }}" data-nama="{{ $t->nama_tagihan }}"
                                                data-jumlah="{{ $t->jumlah }}" data-status="{{ $t->status }}">
                                                <iconify-icon icon="mdi:edit"></iconify-icon>
                                                Edit
                                            </a>
                                            <a href="javascript:void(0)"
                                                class="btn p-1 btn-sm btn-danger d-inline-flex align-items-center gap-1 hapus-tagihan"
                                                data-id="{{ $t->id }}" data-nama="{{ $t->nama_tagihan }}">
                                                <iconify-icon icon="mdi:trash"></iconify-icon>
                                                Hapus
                                            </a>

                                            <a href="{{ route('staff.tagihan.detailTagihan', $t->id) }}"
                                                class="d-inline-flex d-md-none p-1 btn btn-small btn-sm btn-success d-inline-flex align-items-center gap-1 justify-content-center">
                                                <iconify-icon icon="mdi:cash" class="text-xl"></iconify-icon>


                                            </a> 
                                            <a href="javascript:void(0)"
                                                class="edit-tagihan btn btn-sm  btn-warning d-flex d-md-none p-1  radius-4   d-inline-flex align-items-center justify-content-center"
                                                data-id="{{ $t->id }}" data-nama="{{ $t->nama_tagihan }}"
                                                data-jumlah="{{ $t->jumlah }}" data-status="{{ $t->status }}">
                                                <iconify-icon class="text-xl" icon="mdi:edit"></iconify-icon>
                                            </a>

                                            <a class="btn btn-sm btn-small btn-danger d-inline-flex d-md-none p-1  btn-small btn-sm  d-inline-flex align-items-center gap-1 justify-content-center"
                                                href="/">
                                                <iconify-icon class="text-xl" icon="mdi:trash"></iconify-icon>
                                            </a>




                                        </td>
                                    </tr>
                                @endforeach
                            @else
                                <tr>
                                    <td colspan="7" class="text-center">Tidak ada data</td>
                                </tr>
                            @endif
                        </tbody>
                    </table>
                </div>

            </div>
            <div class="d-flex align-items-center justify-content-between flex-wrap gap-2 px-24 pb-24 mt-24">
                <span>
                    Menampilkan
                    {{ $tagihan->firstItem() ?? 0 }}
                    sampai
                    {{ $tagihan->lastItem() ?? 0 }}
                    dari
                    {{ $tagihan->total() }}
                    data
                </span>

                {{ $tagihan->links() }}
            </div>
        </div>
    </div>
    </div>

    @push('scripts')
        <script>
            $('#btnTambahTagihan').on('click', function() {
                Swal.fire({
                    title: 'Tambah Tagihan',
                    html: `
            <div class="text-start">
                <div class="mb-2">
                    <label class="form-label">Nama Tagihan</label>
                    <input id="nama_tagihan" class="form-control" placeholder="Contoh: SPP Januari">
                </div>

                <div class="mb-2">
                    <label class="form-label">Jenis Tagihan</label>
                    <select id="jenis_tagihan_id" class="form-select">
                        <option value="">-- Pilih Jenis --</option>
                        @foreach ($jenistagihan as $jt)
                            <option value="{{ $jt->id }}">{{ $jt->nama_jenis }}</option>
                        @endforeach
                    </select>
                </div>

                <div class="mb-2">
                    <label class="form-label">Nominal</label>
                    <input id="jumlah" type="number" class="form-control" placeholder="Contoh: 150000">
                </div>

                <div class="mb-2">
                    <label class="form-label">Tanggal Tagihan</label>
                    <input id="tgl_tagihan" type="date" class="form-control">
                </div>
            </div>
        `,
                    showCancelButton: true,
                    confirmButtonText: 'Simpan',
                    cancelButtonText: 'Batal',
                    focusConfirm: false,
                    allowOutsideClick: () => !Swal.isLoading(),

                    preConfirm: () => {
                        const nama = $('#nama_tagihan').val().trim();
                        const jenis = $('#jenis_tagihan_id').val();
                        const jumlah = $('#jumlah').val();
                        const tanggal = $('#tgl_tagihan').val();

                        if (!nama || !jenis || !jumlah || !tanggal) {
                            Swal.showValidationMessage('Semua field wajib diisi');
                            return false;
                        }

                        Swal.showLoading();

                        return $.ajax({
                                url: "{{ route('staff.tagihan.store') }}",
                                method: "POST",
                                data: {
                                    siswa_id: "{{ $siswa->id }}",
                                    nama_tagihan: nama,
                                    jenis_tagihan_id: jenis,
                                    jumlah: jumlah,
                                    tgl_tagihan: tanggal,
                                    _token: "{{ csrf_token() }}"
                                }
                            }).then(res => res)
                            .catch(xhr => {
                                let res = xhr.responseJSON;
                                let errorText = '';

                                if (res?.errors) {
                                    Object.values(res.errors).forEach(err => {
                                        errorText += err[0] + '<br>';
                                    });
                                } else {
                                    errorText = res?.message ?? 'Terjadi kesalahan';
                                }

                                Swal.showValidationMessage(errorText);
                            });
                    }
                }).then((result) => {
                    if (result.isConfirmed) {
                        Swal.fire({
                            icon: 'success',
                            title: 'Berhasil',
                            text: result.value.message,
                            timer: 1200,
                            showConfirmButton: false
                        }).then(() => {
                            location.reload();
                        });
                    }
                });
            });
        </script>

        <script>
            $(document).on('click', '.edit-tagihan', function() {

                const id = $(this).data('id');
                const nama = $(this).data('nama');
                const jumlah = $(this).data('jumlah');
                const status = $(this).data('status');

                Swal.fire({
                    title: 'Edit Tagihan',
                    html: `
            <div class="text-start">
                <label class="form-label">Nama Tagihan</label>
                <input id="nama_tagihan" class="form-control mb-2" value="${nama}">

                <label class="form-label">Nominal</label>
                <input id="jumlah" type="number" class="form-control mb-2" value="${jumlah}">

                <label class="form-label">Status</label>
                <select id="status" class="form-control">
                    <option value="belum lunas" ${status === 'belum lunas' ? 'selected' : ''}>Belum Lunas</option>
                    <option value="lunas" ${status === 'lunas' ? 'selected' : ''}>Lunas</option>
                </select>
            </div>
        `,
                    showCancelButton: true,
                    confirmButtonText: 'Simpan',
                    cancelButtonText: 'Batal',
                    confirmButtonColor: '#198754',
                    showLoaderOnConfirm: true,
                    preConfirm: () => {
                        return $.ajax({
                            url: `/staff/tagihan/${id}`,
                            type: 'PUT',
                            data: {
                                _token: '{{ csrf_token() }}',
                                nama_tagihan: $('#nama_tagihan').val(),
                                jumlah: $('#jumlah').val(),
                                status: $('#status').val()
                            }
                        }).catch(err => {
                            Swal.showValidationMessage(
                                err.responseJSON?.message || 'Terjadi kesalahan'
                            );
                        });
                    }
                }).then((result) => {
                    if (result.isConfirmed) {
                        Swal.fire({
                            icon: 'success',
                            title: 'Berhasil',
                            text: 'Tagihan berhasil diperbarui',
                            timer: 1500,
                            showConfirmButton: false
                        }).then(() => {
                            location.reload();
                        });
                    }
                });
            });
        </script>
        <script>
$(document).on('click', '.hapus-tagihan', function () {

    const id   = $(this).data('id');
    const nama = $(this).data('nama');

    Swal.fire({
        icon: 'warning',
        title: 'Hapus Tagihan?',
        html: `
            <p>
                Anda akan menghapus tagihan:
                <strong>${nama}</strong>
            </p>
            <p class="text-danger">
                Pastikan data pembayaran sudah direkap karena
                <strong>semua riwayat pembayaran akan ikut terhapus</strong>.
            </p>
        `,
        showCancelButton: true,
        confirmButtonText: 'Ya, Hapus',
        cancelButtonText: 'Batal',
        confirmButtonColor: '#dc3545',
        showLoaderOnConfirm: true,
        preConfirm: () => {
            return $.ajax({
                url: `/staff/tagihan/${id}`,
                type: 'DELETE',
                data: {
                    _token: '{{ csrf_token() }}'
                }
            }).catch(err => {
                Swal.showValidationMessage(
                    err.responseJSON?.message || 'Gagal menghapus data'
                );
            });
        }
    }).then((result) => {
        if (result.isConfirmed) {
            Swal.fire({
                icon: 'success',
                title: 'Berhasil',
                text: 'Tagihan dan pembayaran terkait berhasil dihapus',
                timer: 1500,
                showConfirmButton: false
            }).then(() => {
                location.reload();
            });
        }
    });
});
</script>

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


    @endpush
@endsection
