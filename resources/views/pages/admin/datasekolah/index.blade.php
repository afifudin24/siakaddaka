@extends('layouts.app')
@section('content')
    <div class="dashboard-main-body">
        <div class="d-flex justify-content-between align-items-center mb-3">
            <h5>Data Sekolah</h5>
          
        </div>
            <div class="card basic-data-table">
            <div class="card-header d-flex justify-content-between align-items-center">
                <h5 class="card-title mb-0">Data Sekolah</h5>
            </div>
            <div class="card-body">
                {{-- card body --}}
                 <div class="d-flex justify-content-between align-items-center mb-16">
                            <ul class="nav bordered-tab border border-top-0 border-start-0 border-end-0 nav-pills">
                                <li class="nav-item" role="presentation">
                                    <button class="nav-link px-16 py-10 active" data-bs-toggle="pill"
                                        data-bs-target="#pills-home" type="button">
                                        Identitas Logo
                                    </button>
                                </li>
                                <li class="nav-item" role="presentation">
                                    <button class="nav-link px-16 py-10" data-bs-toggle="pill"
                                        data-bs-target="#pills-details" type="button">
                                        Data Lengkap
                                    </button>
                                </li>
                            </ul>
                          
                        </div>
                         <div class="tab-content" id="pills-tabContent">
                           <div class="tab-pane fade show active" id="pills-home" role="tabpanel"
    aria-labelledby="pills-home-tab" tabindex="0">

    <div class="row g-4">

        {{-- LOGO --}}
        <div class="col-md-4">
            <div class="card shadow-sm border-0 radius-12 h-100">
                <div class="card-body text-center">
                    <img src="{{ sekolah_logo('light', 'assets/images/logo.png') }}"
                        class="img-fluid mb-3" style="max-height:80px">

                    <h6 class="fw-semibold mb-1">Logo Utama</h6>
                    <small class="text-muted">Digunakan pada header & dokumen</small>

                    <div class="mt-3 text-center">
                      <button class="btn d-flex mx-auto gap-1 p-1 align-items-center btn-sm btn-primary btnEditImage"
    data-field="logo"
    data-label="Logo">
    <iconify-icon icon="mdi:pencil"></iconify-icon>
    Edit
</button>

                    </div>
                </div>
            </div>
        </div>

        {{-- LOGO DARK --}}
        <div class="col-md-4">
            <div class="card shadow-sm border-0 radius-12 h-100">
                <div class="card-body text-center bg-dark rounded">
                    <img src="{{ sekolah_logo('dark', 'assets/images/logo-light.png') }}"
                        class="img-fluid mb-3" style="max-height:80px">

                    <h6 class="fw-semibold mb-1 text-white">Logo Dark</h6>
                    <small class="text-light">Digunakan pada mode gelap</small>

                    <div class="mt-3">
                        <button class="btn d-flex mx-auto gap-1 p-1 align-items-center btn-sm btn-light btnEditImage"
                             data-field="logo_dark"
    data-label="Logo Dark">
    <iconify-icon icon="mdi:pencil"></iconify-icon>
    Edit
                        </button>
                    </div>
                </div>
            </div>
        </div>

        {{-- LOGO ICON --}}
        <div class="col-md-4">
            <div class="card shadow-sm border-0 radius-12 h-100">
                <div class="card-body text-center">
                    <img src="{{ sekolah_logo('icon', 'assets/images/logo-icon.png') }}"
                        class="img-fluid mb-3" style="max-height:60px">

                    <h6 class="fw-semibold mb-1">Logo Icon</h6>
                    <small class="text-muted">Favicon / Icon aplikasi</small>

                    <div class="mt-3">
                        <button class="btn d-flex mx-auto gap-1 p-1 align-items-center btn-sm btn-primary btnEditImage"
                            data-field="logo_icon"
                            data-label="Logo Icon">

                            <iconify-icon icon="mdi:pencil"></iconify-icon>
                            Edit
                        </button>
                    </div>
                </div>
            </div>
        </div>
        {{-- LOGO SURAT --}}
        <div class="col-md-4">
            <div class="card shadow-sm border-0 radius-12 h-100">
                <div class="card-body text-center">
                    <img src="{{ sekolah_image('logo_surat', 'assets/images/logo-icon.png') }}"
                        class="img-fluid mb-3" style="max-height:60px">
                        
                    <h6 class="fw-semibold mb-1">Logo Surat</h6>
                    <small class="text-muted">Logo Surat</small>

                    <div class="mt-3">
                        <button class="btn d-flex mx-auto gap-1 p-1 align-items-center btn-sm btn-primary btnEditImage"
                            data-field="logo_surat"
                            data-label="Logo Surat">

                            <iconify-icon icon="mdi:pencil"></iconify-icon>
                            Edit
                        </button>
                    </div>
                </div>
            </div>
        </div>

        {{-- GAMBAR UNGGULAN --}}
       @php
$unggulan = [
    'gambar_unggulan' => [
        'label' => 'Gambar Unggulan 1',
        'default' => 'images/sekolah/gambar_unggulan.png',
        'lokasi' => 'halaman utama',
    ],
    'gambar_unggulan_2' => [
        'label' => 'Gambar Unggulan 2',
        'default' => 'assets/images/auth/auth-img.png',
        'lokasi' => 'halaman login',
    ],
   
];
@endphp


      @foreach ($unggulan as $field => $item)
<div class="col-md-4">
    <div class="card shadow-sm border-0 radius-12 h-100">
        <div class="card-body text-center">
            <img src="{{ sekolah_image($field, $item['default']) }}"
                class="img-fluid mb-3 rounded"
                style="max-height:140px">

            <h6 class="fw-semibold mb-1">{{ $item['label'] }}</h6>
            <small class="text-muted">Ditampilkan di {{ $item['lokasi'] }}</small>

            <div class="mt-3">
                <button class="btn d-flex mx-auto gap-1 p-1 align-items-center btn-sm btn-primary btnEditImage"
                    data-field="{{ $field }}" data-label="{{ $item['label'] }}">
                    <iconify-icon icon="mdi:pencil"></iconify-icon>
                    Edit
                </button>
            </div>
        </div>
    </div>
</div>
@endforeach



    </div>
</div>
    <div class="tab-pane fade" id="pills-details" role="tabpanel">

    <form id="formDataSekolah">
        @csrf

        <div class="row g-3">

            <div class="col-md-6">
                <label class="form-label">Nama Sekolah</label>
                <input type="text" name="nama_sekolah" class="form-control"
                    value="{{ $dataSekolah->nama_sekolah }}">
            </div>

            <div class="col-md-6">
                <label class="form-label">Nama Singkatan</label>
                <input type="text" name="nama_singkatan" class="form-control"
                    value="{{ $dataSekolah->nama_singkatan }}">
            </div>

            <div class="col-md-4">
                <label class="form-label">NPSN</label>
                <input type="text" name="npsn" class="form-control"
                    value="{{ $dataSekolah->npsn }}">
            </div>

            <div class="col-md-4">
                <label class="form-label">Status</label>
                <select name="status" class="form-select">
                    <option value="Negeri" {{ $dataSekolah->status=='Negeri'?'selected':'' }}>Negeri</option>
                    <option value="Swasta" {{ $dataSekolah->status=='Swasta'?'selected':'' }}>Swasta</option>
                </select>
            </div>

            <div class="col-md-4">
                <label class="form-label">Jenjang</label>
                <select name="jenjang" class="form-select">
                    @foreach(['SD','SMP','SMA','SMK'] as $j)
                        <option value="{{ $j }}" {{ $dataSekolah->jenjang==$j?'selected':'' }}>{{ $j }}</option>
                    @endforeach
                </select>
            </div>

            <div class="col-md-6">
                <label class="form-label">Alamat</label>
                <textarea name="alamat" rows="2" class="form-control">{{ $dataSekolah->alamat }}</textarea>
            </div>
              <div class="col-md-3">
                <label for="" class="form-label">Kecamatan</label>
                <input type="text" name="kecamatan" class="form-control" value="{{ $dataSekolah->kecamatan }}">
            </div>

            <div class="col-md-3">
                <label for="" class="form-label">Yayasan</label>
                <input type="text" name="yayasan_sekolah" class="form-control" value="{{ $dataSekolah->yayasan_sekolah }}">
            </div>

            <div class="col-md-4">
                <label class="form-label">Email Sekolah</label>
                <input type="email" name="email_sekolah" class="form-control"
                    value="{{ $dataSekolah->email_sekolah }}">
            </div>

            <div class="col-md-4">
                <label class="form-label">Telepon</label>
                <input type="text" name="telepon" class="form-control"
                    value="{{ $dataSekolah->telepon }}">
            </div>
            <div class="col-md-4">
                <label class="form-label">Website</label>
                <input type="text" name="website" class="form-control"
                    value="{{ $dataSekolah->website }}">
            </div>

            <div class="col-md-6">
                <label class="form-label">Kepala Sekolah</label>
                <input type="text" name="kepala_sekolah" class="form-control"
                    value="{{ $dataSekolah->kepala_sekolah }}">
            </div>

            <div class="col-md-6">
                <label class="form-label">NIP Kepala Sekolah</label>
                <input type="text" name="nip_kepala_sekolah" class="form-control"
                    value="{{ $dataSekolah->nip_kepala_sekolah }}">
            </div>

            <div class="col-12">
                <label class="form-label">Deskripsi Singkat</label>
                <textarea name="deskripsi_singkat" rows="3" class="form-control">{{ $dataSekolah->deskripsi_singkat }}</textarea>
            </div>

            <div class="col-12">
                <label class="form-label">Visi</label>
                <textarea name="visi" rows="2" class="form-control">{{ $dataSekolah->visi }}</textarea>
            </div>

        @php
    $misiList = [];

    if (!empty($dataSekolah->misi)) {
        $decoded = json_decode($dataSekolah->misi, true);
        $misiList = is_array($decoded) ? $decoded : [];
    }
@endphp
{{-- MISI --}}
<div class="col-12">
    <label class="form-label d-flex justify-content-between">
        <span>Misi</span>
        <button type="button" id="btnTambahMisi" class="btn btn-sm btn-outline-primary">
            + Tambah
        </button>
    </label>

    <div class="row" id="misiWrapper">
        @forelse ($misiList as $item)
            <div class="col-md-6 mb-2">
                <input type="text" name="misi[]" class="form-control" value="{{ $item }}">
            </div>
        @empty
            {{-- default 1 input biar ga kosong --}}
            <div class="col-md-6 mb-2">
                <input type="text" name="misi[]" class="form-control" placeholder="Misi sekolah">
            </div>
        @endforelse
    </div>
</div>


            <div class="col-12 text-end mt-3">
                <button type="submit" class="btn btn-sm btn-success d-flex align-items-center gap-2"> 
                <iconify-icon icon="lucide:save" class="text-xl"></iconify-icon> Simpan
</button>
            </div>

        </div>
    </form>
</div>


                         </div>
            </div>
            </div>
    </div>

    @push('scripts')
<script>
const imageConfig = {
    logo:              { w: 168, h: 40 },
    logo_dark:         { w: 168, h: 40 },
    logo_icon:         { w: 43, h: 40 },
    logo_surat:         { w: 100, h: 100 },
    banner:            { w: 1200, h: 400 },
    gambar_unggulan:   { w: 400, h: 400 },
    gambar_unggulan_2: { w: 917, h: 917 },
    gambar_unggulan_3: { w: 360, h: 120 },
};
</script>
<script>
let cropper = null;

$(document).on('click', '.btnEditImage', function () {
    const field = $(this).data('field');
    console.log(field);
    const label = $(this).data('label');

    const config = imageConfig[field] ?? { w: 300, h: 300 };
    const aspectRatio = config.w / config.h;

    Swal.fire({
        title: `Edit ${label}`,
        html: `
            <input type="file" id="inputImage" accept="image/*" class="form-control mb-2">
            <div class="text-center">
                <img id="previewImage" style="max-width:100%; display:none;">
            </div>
            <small class="text-muted">
                Ukuran ideal ${config.w} × ${config.h} px
            </small>
        `,
        showCancelButton: true,
        confirmButtonText: 'Simpan',
        cancelButtonText: 'Batal',
        width: 700,
        didOpen: () => {
            const input = document.getElementById('inputImage');
            const img = document.getElementById('previewImage');

            let CropperClass = null;
            if (window.Cropper && typeof window.Cropper === 'function') {
                CropperClass = window.Cropper;
            } else if (window.Cropper?.default) {
                CropperClass = window.Cropper.default;
            }

            if (!CropperClass) {
                Swal.showValidationMessage('Cropper.js gagal dimuat');
                return;
            }

            input.onchange = function (e) {
                const file = e.target.files[0];
                if (!file) return;

                const reader = new FileReader();
                reader.onload = function () {
                    img.src = reader.result;
                    img.style.display = 'block';

                    if (cropper) {
                        cropper.destroy();
                        cropper = null;
                    }

                    cropper = new CropperClass(img, {
                        aspectRatio: aspectRatio,
                        viewMode: 1,
                        autoCropArea: 1,
                        background: false,
                        responsive: true
                    });
                };
                reader.readAsDataURL(file);
            };
        },
        preConfirm: () => {
            if (!cropper) {
                Swal.showValidationMessage('Pilih dan crop gambar terlebih dahulu');
                return false;
            }

            return new Promise((resolve) => {
                cropper.getCroppedCanvas({
                    width: config.w,
                    height: config.h,
                     imageSmoothingQuality: 'smooth'
}).toBlob((blob) => {
    resolve(blob);
}, 'image/png');
            });
        }
    }).then((result) => {
        if (result.isConfirmed && result.value) {
            uploadImage(field, result.value);
        }
    });
});

function uploadImage(field, blob) {
    const formData = new FormData();
    formData.append('field', field);
    formData.append('image', blob, `${field}.jpg`);
    formData.append('_token', '{{ csrf_token() }}');

    $.ajax({
        url: "{{ route('admin.datasekolah.updateImage') }}",
        type: "POST",
        data: formData,
        processData: false,
        contentType: false,
        beforeSend: function () {
            Swal.fire({
                title: 'Mengupload...',
                allowOutsideClick: false,
                didOpen: () => Swal.showLoading()
            });
        },
        success: function (res) {
            console.log(res);
            Swal.fire({
                icon: 'success',
                title: 'Berhasil',
                text: res.message,
                timer: 1500,
                showConfirmButton: false
            }).then(() => location.reload());
        },
        error: function (xhr) {
            console.error(xhr);
            let pesan = 'Upload gagal';

            if (xhr.status === 422 && xhr.responseJSON?.errors) {
                pesan = '<ul style="text-align:left">';
                $.each(xhr.responseJSON.errors, function (k, v) {
                    pesan += `<li>${v[0]}</li>`;
                });
                pesan += '</ul>';
            }

            Swal.fire({
                icon: 'error',
                title: 'Gagal',
                html: pesan
            });
        }
    });
}
</script>

<script>
$('#btnTambahMisi').on('click', function () {
    $('#misiWrapper').append(`
        <div class="col-md-6 mb-2">
            <input type="text" name="misi[]" class="form-control" placeholder="Misi baru">
        </div>
    `);
});


$('#formDataSekolah').on('submit', function (e) {
    e.preventDefault();

    let formData = new FormData(this);

    Swal.fire({
        title: 'Menyimpan...',
        allowOutsideClick: false,
        didOpen: () => Swal.showLoading()
    });

    $.ajax({
        url: "{{ route('admin.datasekolah.update') }}",
        type: "POST",
        data: formData,
        processData: false,
        contentType: false,
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
            let msg = 'Terjadi kesalahan';

            if (xhr.status === 422) {
                msg = '<ul class="text-start">';
                $.each(xhr.responseJSON.errors, function (k, v) {
                    msg += `<li>${v[0]}</li>`;
                });
                msg += '</ul>';
            }

            Swal.fire({
                icon: 'error',
                title: 'Gagal',
                html: msg
            });
        }
    });
});
</script>


    @endpush
    @endsection