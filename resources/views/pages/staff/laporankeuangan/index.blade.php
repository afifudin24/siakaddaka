@extends('layouts.app')

@section('content')

    <div class="dashboard-main-body">
      <div class="d-flex flex-wrap align-items-center justify-content-between gap-3 mb-24">
            <h6 class="fw-semibold mb-0">Laporan Keuangan</h6>
            <ul class="d-flex align-items-center gap-2">
                <li class="fw-medium">
                    <a href="index.html" class="d-flex align-items-center gap-1 hover-text-primary">
                        <iconify-icon icon="solar:home-smile-angle-outline" class="icon text-lg"></iconify-icon>
                        Dashboard
                    </a>
                </li>
                <li>-</li>
                <li class="fw-medium">Laporan Keuangan</li>
            </ul>
        </div>
            <div class="card basic-data-table">
            <div class="card-header d-flex justify-content-between align-items-center">
                <h5 class="card-title mb-0">Data Laporan Keuangan</h5>
                <div>
                    <div class="d-flex gap-2">
                   <a href="/staff/laporankeuangan/tambah"
    class="btn btn-primary text-sm btn-sm p-1 radius-4 d-flex align-items-center gap-2">
    <iconify-icon icon="lucide:plus" class="text-xl"></iconify-icon>
    <span class="d-none d-md-inline">Tambah Laporan Keuangan</span>
</a>

                    </div>

                </div>

            </div>

                <form method="GET" class=" border-0 mb-3">
    <div class="card-body">
        <div class="row g-2 d-flex justify-content-start align-items-start">
        {{-- PAGINATE --}}
        <div class="d-flex align-items-end">
        
       
    <form id="perPageForm" method="GET">
     
        <input type="hidden" name="tahun_pelajaran_id" value="{{ request('tahun_pelajaran_id', $tahunPelajaranAktif?->id) }}">
        <input type="hidden" name="semester_id" value="{{ request('semester_id', $semesterAktif?->id) }}">
      <input type="hidden" name="tanggal_mulai" value="{{ request('tanggal_mulai', '') }}">
<input type="hidden" name="tanggal_selesai" value="{{ request('tanggal_selesai', '') }}">

        <select name="per_page"
            class="form-select form-select-sm w-auto ps-12 py-6 radius-12 h-40-px"
            onchange="this.form.submit()">
            @for ($i = 10; $i <= 100; $i += 10)
                <option value="{{ $i }}" {{ request('paginate', 10) == $i ? 'selected' : '' }}>
                    {{ $i }}
                </option>
            @endfor
        </select>
    </form>
 </div>
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
                    <option value="all">Semua</option>
                    @foreach ($allTahunPelajaran as $tp)
                        <option value="{{ $tp->id }}"
                            {{ request('tahun_pelajaran_id', $tahunPelajaranAktif?->id) == $tp->id ? 'selected' : '' }}>
                            {{ $tp->nama }} {{ $tp->is_active ? '(Aktif)' : '' }}
                        </option>
                    @endforeach
                </select>
            </div>

            <div class="col-md-3 mb-3 md-md-0">
                <label class="form-label small">Semester</label>
                <select name="semester_id" id="semester"
                    class="form-select form-select-sm">
                    <option value="all">Semua</option>
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
                <a href="{{ route('staff.laporankeuangan.index') }}"
                    class="btn btn-sm btn-light w-100">
                    Reset
                </a>
            
            </div>
   
</form>

        <div class="table-responsive mt-3">
                    <table class="table basic-border-table">
                        <thead>
                            <tr>
                                <th scope="col">No</th>
                                <th scope="col">Tanggal Dibuat</th>
                                <th scope="col">Periode</th>
                                <th scope="col">Tahun Pelajaran</th>
                                <th>Status Rekap</th>
                               
                                <th scope="col">Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            @forelse ($laporan as $lp)
                                <tr>
                                    <td>{{ $loop->iteration }}</td>
                                  
                                    <td>
                                    {{ \Carbon\Carbon::parse($lp->created_at)->translatedFormat('d F Y') }}

                                    </td>
                                    <td>
                                  @if($lp->tanggal_mulai && $lp->tanggal_selesai)
    {{ \Carbon\Carbon::parse($lp->tanggal_mulai)->format('d M Y') }}
    -
    {{ \Carbon\Carbon::parse($lp->tanggal_selesai)->format('d M Y') }}
@else
    Semua
@endif

                                    </td>
                                    <td>
                                     <span class="badge bg-info">{{ $lp->tahunPelajaran->nama }}</span>
                                     <br>
                                     <span class="badge bg-secondary">{{ $lp->semester->nama }}</span>
                                    </td>
                                    <td>
                                    @if(!$lp->status_rekap)
                                    <span class="badge bg-danger">Belum Rekap</span>

                                    @else
                                    <span class="badge bg-success">Sudah Rekap</span>
                                    @endif
                                    </td>
                                  
                                    <td>
                                    <div class="d-flex gap-1">
                               
<button type="button"
    class="btn btn-sm p-1 btn-success d-flex align-items-center gap-1 btnRekap"
    data-id="{{ $lp->id }}">
    <iconify-icon icon="mdi:file-download"></iconify-icon>
    Rekap
</button>
     <a href="/staff/laporankeuangan/cetak/{{ $lp->id }}" target="_blank" class="btn btn-sm p-1 btn-warning text-dark d-flex gap-1 align-items-center">
                                    <iconify-icon icon="lucide:printer"></iconify-icon>
                                    Cetak</a>

                                 @if($lp->status_rekap)
                                  <button type="button"
    class="btn btn-sm p-1 btn-danger d-flex align-items-center gap-1 btnHapusKasKeluar"
    data-id="{{ $lp->id }}">
    <iconify-icon icon="lucide:trash-2"></iconify-icon>
    Hapus
</button>

@endif

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
             <div class="d-flex align-items-center justify-content-between flex-wrap gap-2 px-24 pb-24 mt-24">
                <span>
                    Menampilkan
                    {{ $laporan->firstItem() ?? 0 }}
                    sampai
                    {{ $laporan->lastItem() ?? 0 }}
                    dari
                    {{ $laporan->total() }}
                    data
                </span>

                {{ $laporan->links() }}
            </div>
            </div>
            </div>
        </div>

@push('scripts')
   <script>
document.getElementById('tahunPelajaran').addEventListener('change', function () {
    const tahunId = this.value;
    const semesterSelect = document.getElementById('semester');

    // 🔴 Jika tahun pelajaran = all
    if (tahunId === 'all') {
        semesterSelect.innerHTML = `
            <option value="all" selected>Semua</option>
        `;
        return; // stop di sini
    }

    // Loading state
    semesterSelect.innerHTML = `<option value="">Memuat...</option>`;

    fetch(`/staff/semester/by-tahun/${tahunId}`)
        .then(res => res.json())
        .then(data => {

            semesterSelect.innerHTML = '';

            // Optional: tambah option default
            semesterSelect.innerHTML += `<option value="">Pilih Semester</option>`;

            data.forEach(semester => {
                const option = document.createElement('option');
                option.value = semester.id;
                option.textContent = semester.nama + (semester.is_active ? ' (Aktif)' : '');
                semesterSelect.appendChild(option);
            });

        })
        .catch((err) => {
            console.error(err);
            semesterSelect.innerHTML = `<option value="">Gagal memuat semester</option>`;
        });
});
</script>

<script>$('.btnRekap').on('click', function () {
    let laporanId = $(this).data('id');

    Swal.fire({
        title: 'Rekap laporan?',
        text: 'Data akan direkap dan siap diexport',
        icon: 'warning',
        showCancelButton: true,
        confirmButtonText: 'Ya, Rekap'
    }).then((result) => {
        if (result.isConfirmed) {
            $.ajax({
                url: "{{ route('staff.laporankeuangan.rekap') }}",
                method: "POST",
                data: {
                    laporan_id: laporanId,
                    _token: "{{ csrf_token() }}"
                },
                success: function (res) {
                    Swal.fire({
                        icon: 'success',
                        title: 'Berhasil',
                        text: 'Rekap selesai, silakan export'
                    }).then(() => {
                        window.open(
                            `/staff/laporankeuangan/export/${laporanId}`,
                            '_blank'
                        );
                    });
                },
                error: function (xhr) {
                    Swal.fire(
                        'Error',
                        xhr.responseJSON?.error ?? 'Gagal rekap',
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
        title: 'Yakin hapus laporan?',
        text: 'Data laporan dan detailnya akan dihapus permanen!',
        icon: 'warning',
        showCancelButton: true,
        confirmButtonText: 'Ya, hapus',
        cancelButtonText: 'Batal'
    }).then((result) => {
        if (result.isConfirmed) {

            Swal.fire({
                title: 'Menghapus...',
                allowOutsideClick: false,
                didOpen: () => Swal.showLoading()
            });

            $.ajax({
                url: `/staff/laporankeuangan/${id}/hapus`,
                type: 'DELETE',
                headers: {
                    'X-CSRF-TOKEN': '{{ csrf_token() }}'
                },
                success: function (res) {
                    Swal.fire({
                        icon: 'success',
                        title: 'Berhasil',
                        text: res.message
                    }).then(() => {
                        location.reload();
                    });
                },
                error: function (xhr) {
                    let msg = 'Terjadi kesalahan';

                    if (xhr.responseJSON?.message) {
                        msg = xhr.responseJSON.message;
                    }

                    Swal.fire({
                        icon: 'error',
                        title: 'Gagal',
                        text: msg
                    });
                }
            });
        }
    });
});
</script>


@endpush
@endsection