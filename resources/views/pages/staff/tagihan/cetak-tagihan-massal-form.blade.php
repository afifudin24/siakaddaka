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
            <form action="{{ route('staff.tagihan.cetakMassalStore') }}" method="GET" target="_blank">
            @csrf
            <div class="card-header d-flex justify-content-between align-items-center">
                <h5 class="card-title mb-0">Cetak Tagihan Massal</h5>
                <div>
                    <div class="d-flex gap-2">
                    <button type="submit"
    class="btn btn-primary text-sm btn-sm p-1 radius-4 d-flex align-items-center gap-2">
    <iconify-icon icon="lucide:printer" class="text-xl"></iconify-icon>
    <span class="d-none d-md-inline">Cetak Massal</span>
</button>

                       
                    </div>

                </div>

            </div>

            <div class="card-body">
    

    <div class="row g-2">

        {{-- TARGET --}}
        <div class="col-md-3">
            <label class="form-label small">Target</label>
            <select name="target" id="target" class="form-select form-select-sm">
                <option value="">Pilih Target</option>
                <option value="tingkat">Berdasarkan Tingkat</option>
                <option value="kelas">Berdasarkan Kelas</option>
            </select>
        </div>

        {{-- TINGKAT --}}
        <div class="col-md-3 d-none" id="targetTingkat">
            <label class="form-label small">Tingkat</label>
            <select name="tingkat" class="form-select form-select-sm">
                <option value="">Pilih Tingkat</option>
                <option value="10">X</option>
                <option value="11">XI</option>
                <option value="12">XII</option>
            </select>
        </div>

        {{-- KELAS --}}
        <div class="col-md-3 d-none" id="targetKelas">
            <label class="form-label small">Kelas</label>
            <select name="kelas_id" class="form-select form-select-sm">
                <option value="">Pilih Kelas</option>
                @foreach ($kelas as $k)
                    <option value="{{ $k->id }}">
                        {{ $k->nama_kelas }}
                    </option>
                @endforeach
            </select>
        </div>

        {{-- Jenis Tagihan --}}
            <div class="col-md-3" id="jenisTagihan">
            <label class="form-label small">Jenis Tagihan</label>
            <select name="jenis_tagihan_id" class="form-select form-select-sm">
                <option value="">Pilih Jenis Tagihan</option>
                @foreach ($jenisTagihan as $j)
                    <option value="{{ $j->id }}">
                        {{ $j->nama_jenis }}
                    </option>
                @endforeach
            </select>
        </div>

        {{-- Nama Tagihan --}}
          <div class="col-md-3" id="namatagihan">
            <label class="form-label small">Nama Tagihan</label>
          <select name="nama_tagihan" class="form-select form-select-sm">
    <option value="">Pilih Tagihan</option>

    @foreach ($tagihan as $t)
        <option value="{{ $t->nama_tagihan }}">
            {{ $t->nama_tagihan }}
            — {{ $t->tahunPelajaran->nama ?? '-' }}
            — {{ $t->semester->nama ?? '-' }}
        </option>
    @endforeach
</select>

        </div>
        {{-- TANGGAL MULAI --}}
        <div class="col-md-3">
            <label class="form-label small">Tanggal Mulai</label>
            <input type="date" name="tanggal_mulai"
                class="form-control form-control-sm">
        </div>

        {{-- TANGGAL SELESAI --}}
        <div class="col-md-3">
            <label class="form-label small">Tanggal Selesai</label>
            <input type="date" name="tanggal_selesai"
                class="form-control form-control-sm">
        </div>

        {{-- TAHUN PELAJARAN --}}
      <div class="col-md-3">
    <label class="form-label small">Tahun Pelajaran</label>

    <select name="tahun_pelajaran_id" id="tahunPelajaran" class="form-select form-select-sm" id="tahunPelajaran">
        @foreach ($tahunPelajaran as $tp)
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

    <select name="semester_id" id="semester" class="form-select  form-select-sm" id="semester">
        @foreach ($semesterTahunPelajaran as $smt)
            <option value="{{ $smt->id }}"
                {{ $smt->id == $semesterAktif?->id ? 'selected' : '' }}>
                {{ $smt->nama }}
                {{ $smt->id == $semesterAktif?->id ? '(Aktif)' : '' }}
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
document.getElementById('target').addEventListener('change', function () {
    document.getElementById('targetTingkat').classList.add('d-none');
    document.getElementById('targetKelas').classList.add('d-none');

    if (this.value === 'tingkat') {
        document.getElementById('targetTingkat').classList.remove('d-none');
    }

    if (this.value === 'kelas') {
        document.getElementById('targetKelas').classList.remove('d-none');
    }
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

<script>
    $(document).ready(function() {
        $('#tahunPelajaran, #semester').change(function() {
            let tahunId = $('#tahunPelajaran').val();
            let semesterId = $('#semester').val();

            $.ajax({
                url: '/staff/tagihan/aksi/by-tahun-semester',
                type: 'GET',
                data: {
                    tahun_pelajaran_id: tahunId,
                    semester_id: semesterId
                },
                success: function(res) {
                    $('#namatagihan select').html(res.options);
                },
                error: function(err) {
                    alert('Gagal mengambil data tagihan!');
                    console.log(err);
                }
            });
        });
    });
</script>


@endpush
        @endsection

