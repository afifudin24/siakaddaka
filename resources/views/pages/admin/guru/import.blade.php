@extends('layouts.app')

@section('content')
    <div class="dashboard-main-body">

        <div class="d-flex flex-wrap align-items-center justify-content-between gap-3 mb-24">
            <h6 class="fw-semibold mb-0">Import Guru</h6>
            <ul class="d-flex align-items-center gap-2">
                <li class="fw-medium">
                    <a href="index.html" class="d-flex align-items-center gap-1 hover-text-primary">
                        <iconify-icon icon="solar:home-smile-angle-outline" class="icon text-lg"></iconify-icon>
                        Dashboard
                    </a>
                </li>
                <li>-</li>
                <li class="fw-medium">Siswa</li>
            </ul>
        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="card basic-data-table">
                    <div class="card-header d-flex justify-content-between align-items-center">
                        <h5 class="card-title mb-0">Upload Data</h5>
                        <div>
                            <div class="d-flex gap-2">
                                <a href="{{ route('admin.guru.template') }}"
                                    class="btn btn-primary text-sm btn-sm p-1 radius-4 d-flex align-items-center gap-2">
                                    <iconify-icon icon="ic:baseline-download" class="text-xl"></iconify-icon>
                                    <span class="d-none d-md-inline">Download Template</span>
                                </a>

                            </div>

                        </div>

                    </div>
                    <div class="card-body">
                        <form action="" method="POST" enctype="multipart/form-data" class="mt-4">
    @csrf

    <div class="card shadow-sm border-0">
          <div class="alert alert-info bg-info-100  mb-2 text-info-600 border-info-600 border-start-width-4-px border-top-0 border-end-0 border-bottom-0 px-16 py-1 mb-0  text-lg radius-4 d-flex align-items-center justify-content-center" role="alert">
                        <div class="d-flex gap-2  justify-content-start align-items-center text-left">
                            <iconify-icon icon="ic:baseline-info" class="text-xl"></iconify-icon>
                            <p class="mb-0 fs-6">Pastikan gunakan template yang sudah disediakan</p>
                        
                        </div>
                       
                    </div>
        <div class="card-body text-center p-4">
           

            <div id="uploadArea" style="text-align: center" class="p-5 border border-2 border-secondary text-center border-dashed rounded cursor-pointer bg-light">
              

            <p class="d-flex justify-content-center align-items-center  mx-auto w-48 h-48 radius-8">
    <iconify-icon icon="mdi:file-excel"  style="font-size: 40px;"></iconify-icon>
</p>

                <p class="text-muted mb-3">Format yang didukung: .xlsx / .xls</p>

                <button type="button" class="btn btn-outline-success d-flex align-items-center mx-auto text-center rounded-2 px-4">
                    <iconify-icon icon="mdi:upload"></iconify-icon>
                    <span>
                        Pilih File
                    </span>
                </button>

                <input type="file" name="file" id="excelFile" class="d-none" required>
            </div>

            <div id="fileInfo" class="mt-3 d-none">
                <p class="mb-1 fw-semibold">File Terpilih:</p>
                <p id="fileName" class="text-success"></p>
            </div>

         

        </div>
    </div>
</form>

                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header d-flex justify-content-between align-items-center">
                        <h5 class="card-title mb-0">Preview Data</h5>
                        <div>
                            <div class="d-flex gap-2">
                              

                              <button type="button" id="saveData" class="btn btn-success text-sm btn-sm p-1 radius-4 d-flex align-items-center gap-2">
    <iconify-icon icon="ic:baseline-save" class="text-xl"></iconify-icon>
    <span class="d-none d-md-inline">Simpan</span>
</button>
                            </div>

                        </div>

                    </div>
                    <div class="card-body">
                            {{-- <span>Data akan tampil disini</span> --}}
                          <div id="previewTableArea" class="table-responsive"></div>
                    </div>
                </div>
            </div>

        </div>

    </div>

    @push('scripts')
    <script>
        console.log('oke')
    const uploadArea = document.getElementById("uploadArea");
    const excelFile = document.getElementById("excelFile");
    const fileInfo = document.getElementById("fileInfo");
    const fileNameText = document.getElementById("fileName");

    // Klik area → buka input file
    uploadArea.addEventListener("click", () => excelFile.click());

    // Ketika file dipilih
    excelFile.addEventListener("change", function () {
        if (this.files.length > 0) {
            fileNameText.textContent = this.files[0].name;
            fileInfo.classList.remove("d-none");
        }
    });
</script>

<script>
    
document.getElementById('excelFile').addEventListener('change', function () {
    let file = this.files[0];
    if (!file) return;

    // tampilkan nama file
    document.getElementById("fileInfo").classList.remove("d-none");
    document.getElementById("fileName").innerText = file.name;

    let formData = new FormData();
    formData.append("file", file);
    formData.append("_token", "{{ csrf_token() }}");

    // request ajax
    fetch("/admin/guru/aksi/preview", {
        method: "POST",
        body: formData
    })
    .then(res => res.json())
    .then(data => {
        if (data.status === "success") {
            generatePreviewTable(data.rows);
        }
    });
});


function generatePreviewTable(rows) {
    let previewArea = document.getElementById("previewTableArea");
    previewArea.innerHTML = "";

    if (rows.length === 0) {
        previewArea.innerHTML = "<p class='text-danger'>Data kosong atau format tidak sesuai.</p>";
        return;
    }

    let table = `<table class="table table-bordered table-striped">
                    <thead><tr>`;

    rows[0].forEach(col => {
        table += `<th>${col}</th>`;
    });

    table += `</tr></thead><tbody>`;

    rows.slice(1).forEach(row => {
        table += "<tr>";
        row.forEach(col => {
            table += `<td>${col ?? ''}</td>`;
        });
        table += "</tr>";
    });

    table += "</tbody></table>";

    previewArea.innerHTML = table;
}
</script>

<script>
document.getElementById('saveData').addEventListener('click', function() {
    let file = excelFile.files[0];
    if (!file) {
        Swal.fire({
            icon: 'warning',
            title: 'Oops...',
            text: 'Silakan pilih file Excel terlebih dahulu!'
        });
        return;
    }

    // ketika menunggu tampilkan loading dari swal dulu
    Swal.fire({
        title: 'Menyimpan data...',
        allowOutsideClick: false,
        showConfirmButton: false,
        didOpen: () => {
            Swal.showLoading();
        }
    });

    let formData = new FormData();
    formData.append("file", file);
    formData.append("_token", "{{ csrf_token() }}");

    fetch("/admin/guru/aksi/import", {  // endpoint untuk simpan data siswa
        method: "POST",
        body: formData
    })
    .then(res => res.json())
    .then(data => {
        if (data.status === "success") {
            Swal.fire({
                icon: 'success',
                title: 'Berhasil!',
                text: 'Data guru berhasil disimpan!',
                timer: 2000,
                showConfirmButton: false
            });

            // reset form & preview
            excelFile.value = '';
            fileInfo.classList.add("d-none");
            document.getElementById("previewTableArea").innerHTML = '';
        } else {
            Swal.fire({
                icon: 'error',
                title: 'Gagal!',
                text: data.message || 'Terjadi kesalahan saat menyimpan data.'
            });
            console.error(data.message);
        }
    })
    .catch(err => {
        console.error(err);
        Swal.fire({
            icon: 'error',
            title: 'Error!',
            text: 'Terjadi kesalahan saat mengirim data.'
        });
    });
});
</script>



    @endpush
@endsection
