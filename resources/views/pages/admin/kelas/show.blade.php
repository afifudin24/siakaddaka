@extends('layouts.app')

@section('content')

<div class="dashboard-main-body">

   
     
    <div class="card basic-data-table">
      <div class="card-header d-flex justify-content-between align-items-center">
            <h5 class="card-title mb-0">Data Kelas {{ $kelas->nama_kelas }}</h5>
        <div>

        </div>

      </div>
      <div class="card-body">
        <div class="row">
            <div class="col-md-6">
                  <table class="table basic-border-table mb-0 rounded-0">
          <tbody>
            <tr>
              <td style="width: 200px">Nama Kelas</td>
              <td>{{ $kelas->nama_kelas }}</td>
            </tr>
             <tr>
              <td style="width: 200px">Kode Kelas</td>
              <td>{{ $kelas->kode_kelas }}</td>
            </tr>
             <tr>
              <td style="width: 200px">Tingkat Kelas</td>
              <td>{{ $kelas->tingkat }}</td>
            </tr>
             <tr>
              <td style="width: 200px">Jumlah Siswa</td>
              <td>{{ $kelas->siswa_count }}</td>
            </tr>
             <tr>
              <td style="width: 200px">Wali Kelas</td>
              <td>{{ $kelas->walikelas->guru->nama ?? '-' }}</td>
            </tr>
               <tr>
              <td style="width: 200px">Ketua Kelas</td>
              <td>{{ $kelas->ketuaKelas->siswa->nama ?? '-' }}</td>
            </tr>
        </table>
            </div>
            <div class="col-md-6 mt-md-0 mt-3">
             
                <table class="table basic-border-table mb-0 rounded-0">
                    <thead>
                        <th>NO</th>
                        <th>Nama</th>
                        <th>NIS</th>
                    </thead>
          <tbody>
            @foreach($kelas->siswa as $s)
            <tr>
              <td>{{ $loop->iteration }}</td>
              <td>{{ $s->nama }}</td>
              <td>{{ $s->nis }}</td>
            </tr>
            @endforeach
</tbody>
</table>
            </div>
        </div>
      
              
      </div>
</div>
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