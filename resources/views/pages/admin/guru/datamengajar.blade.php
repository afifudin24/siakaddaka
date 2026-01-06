@extends('layouts.app')

@section('content')
<div class="dashboard-main-body">

    <div class="d-flex justify-content-between align-items-center mb-3">
        <h5>Edit Data Mengajar Guru</h5>
        <a href="{{ route('admin.guru.index') }}" class="btn btn-danger btn-sm d-flex align-items-center gap-2">
             <iconify-icon icon="lucide:arrow-left" class="text-xl"></iconify-icon> Kembali
        </a>
    </div>
   <form id="form-update-datamengajar">
    @csrf
      <div class="card basic-data-table">
      <div class="card-header d-flex justify-content-between align-items-center">
            <h5 class="card-title mb-0">Data Mengajar {{ $guru->nama }}</h5>
        <div>

            <button type="submit" class="btn btn-sm btn-success d-flex align-items-center gap-2"> 
                <iconify-icon icon="lucide:save" class="text-xl"></iconify-icon> Simpan
</button>
        </div>

      </div>
      <div class="card-body pb-5">
        <div class="row ">
            <div class="col-md-6">
                   <h5 class="card-title mb-0">Mata Pelajaran</h5>
         {{-- gunakan select2 multi value --}}
            <div class="mb-3 mt-3">
                <select name="mapel_id[]" class="form-control select2-multiple" id="select_mapel" multiple="multiple">
                    @foreach($mapels as $mapel)
        <option value="{{ $mapel->id }}"
                data-kode="{{ $mapel->kode_mapel }}"
                {{ in_array($mapel->id, $selectedMapels) ? 'selected' : '' }}>
            {{ $mapel->nama_mapel }}
        </option>
    @endforeach
                </select>
      </div>
            </div>
            <div class="col-md-6">
             

                <div class="mt-3 mt-md-0" id="mapel-kelas-container"></div>
            </div>
        </div>
     

      </div>
    </form>
</div>
</div>


@push('scripts')

<script>
window.kelasPerMapel = @json($kelasPerMapel ?? []);

function loadKelasByMapel(mapelId) {
    $.ajax({
        url: "{{ route('admin.datamengajar.kelasByMapel') }}",
        data: {
            mapel_id: mapelId,
            guru_id: "{{ $guru->id }}"
        },
        success: function (res) {

            let selectedKelas = kelasPerMapel[mapelId] || [];

            let html = `
            <div class="card p-3" id="mapel-${mapelId}">
                <h5 class="card-title mb-2">
                    ${$('#select_mapel option[value="'+mapelId+'"]').text()}
                </h5>

                <select name="kelas_mapel[${mapelId}][]" 
                        class="form-control select-kelas" 
                        multiple>
            `;

            res.kelas.forEach(kelas => {

                if (res.existing[kelas.id] && res.existing[kelas.id].guru_id != "{{ $guru->id }}") {
                    html += `
                        <option value="${kelas.id}" disabled>
                            ${kelas.nama_kelas}
                            (Sudah diajar: ${res.existing[kelas.id].guru.nama})
                        </option>
                    `;
                } else {
                    let selected = selectedKelas.includes(kelas.id) ? 'selected' : '';
                    html += `
                        <option value="${kelas.id}" ${selected}>
                            ${kelas.nama_kelas}
                        </option>
                    `;
                }
            });

            html += `
                </select>
            </div>
            `;

            $('#mapel-kelas-container').append(html);

            $('.select-kelas').select2({
                theme: "classic",
                width: '100%',
                placeholder: 'Pilih Kelas'
            });
        }
    });
}
</script>



<script>
$(document).ready(function () {


    $('#select_mapel').select2({
        theme: "classic",
        placeholder: "Pilih Mapel",
        width: '100%',
          templateSelection: function (data) {
        // saat sudah dipilih → tampil kode_mapel
        return data.element?.dataset?.kode || data.text;
    }
    });

    const selectedMapels = $('#select_mapel').val() || [];

    $('#mapel-kelas-container').html('');
    selectedMapels.forEach(mapelId => {
        loadKelasByMapel(mapelId);
    });
});
</script>
<script>
$('#form-update-datamengajar').on('submit', function (e) {
    e.preventDefault();

    $.ajax({
        url: "{{ route('admin.guru.datamengajar.update', $guru->id) }}",
        type: "POST",
        data: $(this).serialize(),
        beforeSend: function () {
            Swal.fire({
                title: 'Menyimpan...',
                text: 'Mohon tunggu',
                allowOutsideClick: false,
                didOpen: () => Swal.showLoading()
            });
        },
        success: function (res) {
            Swal.fire({
                icon: 'success',
                title: 'Berhasil',
                text: res.message,
                timer: 1500,
                showConfirmButton: false
            });
        },
        error: function (xhr) {
            Swal.fire({
                icon: 'error',
                title: 'Gagal',
                text: xhr.responseJSON?.message || 'Terjadi kesalahan'
            });
        }
    });
});
</script>
<script>
$('#select_mapel').on('change', function () {

    const selectedMapels = $(this).val() || [];

    // hapus card mapel yang tidak dipilih
    $('#mapel-kelas-container > div').each(function () {
        const mapelId = $(this).attr('id')?.replace('mapel-', '');
        if (mapelId && !selectedMapels.includes(mapelId)) {
            $(this).remove();
        }
    });

    // tambahkan mapel baru
    selectedMapels.forEach(mapelId => {
        if ($('#mapel-' + mapelId).length === 0) {
            loadKelasByMapel(mapelId);
        }
    });

});
</script>


    
@endpush
@endsection