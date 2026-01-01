@extends('layouts.app')

@section('content')
    <div class="dashboard-main-body">

        <div class="d-flex justify-content-between align-items-center mb-3">
            <h5>Tambah Laporan Keuangan</h5>
            <a href="{{ route('staff.laporankeuangan.index') }}" class="btn btn-danger btn-sm d-flex align-items-center gap-2">
                <iconify-icon icon="lucide:arrow-left" class="text-xl"></iconify-icon> Kembali
            </a>
        </div>
        </div>
          <div class="card basic-data-table">
            <div class="card-header d-flex justify-content-between align-items-center">
                <h5 class="card-title mb-0">Generate Laporan Keuangan</h5>
    <form id="formGenerateLaporan">
                <div>
                    <button type="submit" class="btn btn-sm btn-success d-flex align-items-center gap-2"
                       >
                        <iconify-icon icon="mdi:file-plus" width="18"></iconify-icon>
                        Generate
                    </button>
                </div>

            </div>
           <div class="card-body">

        <div class="row g-2">

            {{-- TAHUN PELAJARAN --}}
            <div class="col-md-3">
                <label class="form-label small">Tahun Pelajaran</label>
                <select name="tahun_pelajaran_id" class="form-select form-select-sm" id="tahunPelajaran" required>
                    @foreach($allTahunPelajaran as $tp)
                        <option value="{{ $tp->id }}"
                            {{ $tp->id == $tahunPelajaranAktif?->id ? 'selected' : '' }}>
                            {{ $tp->nama }}
                            {{ $tp->id == $tahunPelajaranAktif?->id ? '(Aktif)' : '' }}
                        </option>
                    @endforeach
                </select>
            </div>

            {{-- SEMESTER --}}
            <div class="col-md-3">
                <label class="form-label small">Semester</label>
                <select name="semester_id" class="form-select form-select-sm" required id="semester">
                    @foreach($semesterList as $smt)
                        <option value="{{ $smt->id }}"
                            {{ $smt->id == $semesterAktif?->id ? 'selected' : '' }}>
                            {{ $smt->nama }}
                            {{ $smt->id == $semesterAktif?->id ? '(Aktif)' : '' }}
                        </option>
                    @endforeach
                </select>
            </div>

            {{-- TANGGAL MULAI --}}
            <div class="col-md-3">
                <label class="form-label small">Tanggal Mulai (Opsional)</label>
                <input type="date" name="tanggal_mulai" class="form-control form-control-sm">
            </div>

            {{-- TANGGAL SELESAI --}}
            <div class="col-md-3">
                <label class="form-label small">Tanggal Selesai (Opsional)</label>
                <input type="date" name="tanggal_selesai" class="form-control form-control-sm">
            </div>

           
                <div id="btnCetakWrapper"></div>
            </div>

        </div>
    </form>

</div>

            </div>

            @push('scripts')
<script>
$('#formGenerateLaporan').on('submit', function(e){
    e.preventDefault();

    let formData = $(this).serialize();

    $('#btnCetakWrapper').html('');

    // Swal loading
    Swal.fire({
        title: 'Memproses...',
        text: 'Sedang mengenerate laporan keuangan',
        allowOutsideClick: false,
        didOpen: () => {
            Swal.showLoading();
        }
    });

    $.ajax({
        url: "{{ route('staff.laporankeuangan.generate') }}",
        method: "POST",
        data: formData,
        headers: {
            'X-CSRF-TOKEN': '{{ csrf_token() }}'
        },
        success: function(res) {
            Swal.close();

            if(res.success){
                // Swal sukses
                Swal.fire({
                    icon: 'success',
                    title: 'Berhasil!',
                    text: 'Laporan keuangan berhasil dibuat, silakan cetak.',
                    confirmButtonText: 'OK'
                });

                // Tampilkan tombol cetak
                $('#btnCetakWrapper').html(`
                    <a href="/laporankeuangan/cetak/${res.LaporanKeuangan_id}"
                       target="_blank"
                       class="btn d-inline-flex gap-1 btn-danger btn-sm d-flex align-items-center gap-1">
                        <iconify-icon icon="mdi:printer"></iconify-icon>
                        Cetak Laporan
                    </a>
                `);
            } else {
                Swal.fire({
                    icon: 'warning',
                    title: 'Gagal',
                    text: res.message ?? 'Laporan gagal dibuat'
                });
            }
        },
        error: function(xhr){
            Swal.close();

            Swal.fire({
                icon: 'error',
                title: 'Error!',
                text: 'Gagal generate laporan, cek data yang dipilih!'
            });

            console.error(xhr.responseText);
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

         
        })
        .catch((err) => {
            console.log(err);
            semesterSelect.innerHTML = `<option value="">Gagal memuat semester</option>`;
        });
});
</script>


            @endpush

@endsection