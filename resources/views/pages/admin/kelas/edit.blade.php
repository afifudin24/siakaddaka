@extends('layouts.app')

@section('content')

<div class="dashboard-main-body">

    <div class="d-flex justify-content-between align-items-center mb-3">
        <h5>Tambah Kelas</h5>
        <a href="{{ route('admin.kelas.index') }}" class="btn btn-danger d-flex align-items-center gap-2">
             <iconify-icon icon="lucide:arrow-left" class="text-xl"></iconify-icon> Kembali
        </a>
    </div>

    <form action="{{ route('admin.kelas.update', $kelas->id) }}" enctype="multipart/form-data" class="needs-validation" novalidate  method="POST">
        @csrf
        @method('PUT')
        
      <div class="card basic-data-table">
      <div class="card-header d-flex justify-content-between align-items-center">
            <h5 class="card-title mb-0">Data Kelas</h5>
        <div>

            <button type="submit" class="btn btn-sm btn-primary d-flex align-items-center gap-2"> 
                <iconify-icon icon="lucide:plus" class="text-xl"></iconify-icon> Simpan
</button>
        </div>

      </div>
            <div class="card-body">
    
                <div class="row g-3">
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
@if (session('error'))
    <div class="alert alert-danger alert-dismissible fade show" role="alert">
        {{ session('error') }}
        <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
    </div>
@endif
                    <div class="col-md-6">
                        <label class="form-label">Nama Kelas</label>
                        <input type="text" value="{{ $kelas->nama_kelas }}" name="nama_kelas" class="form-control" placeholder="Nama Kelas" required>
                    </div>

                    <div class="col-md-6">
                        <label class="form-label">Level</label>
                        <select name="tingkat" class="form-select" required>
                            <option value="">Pilih Level</option>
                            <option {{ $kelas->tingkat == 'X' ? 'selected' : '' }} value="X">X</option>
                            <option {{ $kelas->tingkat == 'XI' ? 'selected' : '' }} value="XI">XI</option>
                            <option {{ $kelas->tingkat == 'XII' ? 'selected' : '' }} value="XII">XII</option>
                        </select>
                    </div>

                    <div class="col-md-6">
                        <label class="form-label">Kode Kelas</label>
                        <input type="text" value="{{ $kelas->kode_kelas }}" name="kode_kelas" class="form-control" required placeholder="Kode Kelas">
                    </div>

                    <div class="col-md-6">
                        <label class="form-label">Jurusan</label>
                        <select name="jurusan_id" class="form-select" required>
                            <option value="">Pilih Jurusan :</option>
                            @foreach ($jurusan as $j)
                                <option {{ $kelas->jurusan_id == $j->id ? 'selected' : '' }} value="{{ $j->id }}">{{ $j->nama_jurusan }}</option>
                            @endforeach
                        </select>
                    </div>
                </div>

            </div>
            <div class="p-3">
                  <hr>

            </div>
          
                {{-- DAFTAR SISWA --}}
      
                <div class="row p-3">
                    <div class="col-md-7">
                        <div class="card"
                        >
                            <div class="card-body">
                                

                <div class="row">
                    {{-- SISI KIRI --}}
                    <div class="col-md-5">
                        <strong>Semua Siswa</strong>
                        <input type="text" id="search-left" class="form-control mt-1" placeholder="Cari siswa">
                        <div style="height: 300px; overflow-y:auto;" class="border rounded-2">

                      
                        <ul id="list-left" class="list-group" style="">
                            @foreach ($siswas as $s)
                                <li class="cursor-pointer  list-group-item list-group-item-action student-item" data-id="{{ $s->id }}" data-nama="{{ $s->nama }}" data-nis="{{ $s->nis }}">
                                    {{ $s->nama }} 
                                    <br>
                                    <span class="float-end fw-semibold">{{ $s->nis }}</span>
                                </li>
                            @endforeach
                        </ul>
                          </div>
                    </div>

                    {{-- PANAH --}}
                    <div class="col-md-2 d-flex justify-content-center align-items-center">
                        <iconify-icon icon="lucide:arrow-right-left" class="text-xl"></iconify-icon>
                    </div>

                    {{-- SISI KANAN --}}
                    <div class="col-md-5">
                      
                        <strong>Jumlah siswa: <span id="total-right">{{$kelas->siswa_count}}</span></strong>
                        <input type="text" id="search-right" class="form-control mt-1" placeholder="Cari siswa">
                        
                        <div style="height: 300px; overflow-y:auto;" class="border rounded-2">
                        <ul id="list-right" class="list-group">
                             @foreach ($siswaKelasIni as $s)
                                <li class="cursor-pointer  list-group-item list-group-item-action student-item" data-id="{{ $s->id }}" data-nama="{{ $s->nama }}" data-nis="{{ $s->nis }}">
                                    {{ $s->nama }} 
                                    <br>
                                    <span class="float-end fw-semibold">{{ $s->nis }}</span>
                                </li>
                            @endforeach
                        </ul>
                    </div>

                        {{-- hidden input untuk submit ke controller --}}
                     <input type="hidden" name="siswa_ids" id="siswa_kelas"
       value="{{ json_encode($siswaKelasIni->pluck('id')) }}">

                    </div>
                </div>
            </div>
                        </div>
                        </div>
                
              <div class="col-md-5">
             <div class="card">
            <div class="card-body">
                <strong>Ketua Kelas</strong>
                <select name="ketua_kelas" id="ketua_kelas" class="mt-2 js-example-basic-single js-states form-select ">
                    <option value="">Pilih Ketua Kelas</option>
                    @foreach ($siswaKelasIni as $s)
    <option 
        value="{{ $s->id }}" 
        {{ optional($kelas->ketuaKelas)->siswa_id == $s->id ? 'selected' : '' }}
    >
        {{ $s->nama }} - {{ $s->nis }}
    </option>
@endforeach
                </select>
                <br>
                <br>
                  <strong class="">Wali Kelas</strong>
                <select name="guru_id" id="wali_kelas" style="width: 100% !important" class="select2 mt-2 w-100">
                    <option value="">Pilih Wali Kelas</option>
                   @foreach ($guru as $g)
    <option 
        value="{{ $g->id }}" 
        {{ optional($kelas->walikelas)->guru_id == $g->id ? 'selected' : '' }}
    >
        {{ $g->nama }}
    </option>
@endforeach

                </select>
            </div>
        </div>
        </div>
        </div>
           {{-- KETUA KELAS --}}
       
        </div>

    <input type="hidden" id="ketua_awal" value="{{ $kelas->ketuaKelas->siswa_id ?? '' }}">


    
    </form>
</div>



@push('scripts')
<script>
  
$(document).ready(function() {
    $('#wali_kelas').select2({
          theme: "bootstrap-5",
        //   closeOnSelect : false,
           placeholder: "Pilih Wali Kelas",
            width: '100%',
            
    });
    $('#ketua_kelas').select2({
          theme: "bootstrap-5",
        //   closeOnSelect : false,
           placeholder: "Pilih Ketua Kelas",
            width: '100%',
            
    });
  let ketuaId = {{ optional($kelas->ketuaKelas)->siswa_id ?? 'null' }};
    // updateRightList();
});

  
    // === Pindah Item On Click ===
    $(document).on('click', '.student-item', function () {
        let parent = $(this).parent().attr('id');

        if (parent === "list-left") {
            $("#list-right").append($(this));
        } else {
            $("#list-left").append($(this));
        }
       
        updateRightList();
    });

    // === Search Filter ===
    $("#search-left").on("keyup", function () {
        let val = $(this).val().toLowerCase();
        $("#list-left li").filter(function () {
            $(this).toggle($(this).text().toLowerCase().includes(val));
        });
    });

    $("#search-right").on("keyup", function () {
        let val = $(this).val().toLowerCase();
        $("#list-right li").filter(function () {
            $(this).toggle($(this).text().toLowerCase().includes(val));
        });
    });

    // === Update siswa terpilih & ketua kelas options ===
    // function updateRightList() {
        
    //     let ids = [];
    //     let selectKetua = $("#ketua_kelas");
    //     selectKetua.empty().append(`<option value="">Pilih Ketua Siswa</option>`);

    //     $("#list-right li").each(function () {
    //         let id = $(this).data("id");
    //         let nama = $(this).text().trim('-');
    //         ids.push(id);

    //         selectKetua.append(`<option value="${id}">${nama}</option>`);
    //     });
 
    //     $("#siswa_kelas").val(JSON.stringify(ids));
    //     // $("#siswa_kelas").val(ids);
    //     $("#total-right").text(ids.length);
    // }
 function updateRightList() {

    let selectedKetua = $("#ketua_awal").val();
    let ids = [];
    let selectKetua = $("#ketua_kelas");

    // reset dropdown
    selectKetua.empty().append(`<option value="">Pilih Ketua Siswa</option>`);

    $("#list-right li").each(function () {

        let id = $(this).data("id");
        let nama = $(this).data("nama"); // atau $(this).text()
        let nis = $(this).data("nis");

        ids.push(id);

        let selected = (id == selectedKetua) ? "selected" : "";

        selectKetua.append(`
            <option value="${id}" ${selected}>
                ${nama} - ${nis}
            </option>
        `);
    });

    $("#siswa_kelas").val(JSON.stringify(ids));
    $("#total-right").text(ids.length);
}
</script>


@endpush
@endsection