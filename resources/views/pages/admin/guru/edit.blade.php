@extends('layouts.app')

@section('content')
    <div class="dashboard-main-body">
        <div class="d-flex justify-content-between align-items-center mb-3">
            <h5>Edit Guru</h5>
            <a href="{{ route('admin.guru.index') }}" class="btn btn-danger btn-sm d-flex align-items-center gap-2">
                <iconify-icon icon="lucide:arrow-left" class="text-xl"></iconify-icon> Kembali
            </a>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <div class="user-guruid-card ">
                            <div class="position-relative border radius-16 overflow-hidden">
                                @php
                                    $foto = $guru->user->foto_unggulan;

                                    $validFoto =
                                        $foto && $foto !== 'profile.png' && Storage::disk('public')->exists($foto);
                                @endphp

                                @if ($validFoto)
                                    <img src="{{ asset('storage/' . $foto) }}" class="w-100 object-fit-cover" alt="">
                                @else
                                    @php
                                        $img = random_featured_image();
                                    @endphp

                                    <img src="{{ asset('assets/images/feature/' . $img) }}" class="w-100 object-fit-cover"
                                        alt="">
                                @endif

                                <div class="ps-16 pb-16 pe-16 text-center mt--50">
                                    <!-- <img src="{{ asset('assets/images/user-guruid/user-guruid-img1.png') }}" alt="" class="border br-white border-width-2-px w-100-px h-100-px rounded-circle object-fit-cover"> -->
                                    <img src="{{ foto_profil($guru) }}"
                                        class="border br-white border-width-2-px w-100-px h-100-px rounded-circle object-fit-cover">

                                    <h6 class="text-lg mb-0 mt-4">{{ $guru->nama }}</h6>
                                    <span class="text-secondary-light mb-16">{{ $guru->email }}</span>

                                </div>

                            </div>

                            <div class="row d-flex justify-content-center mt-16 gap-1">

                                <button id="btnGantiFoto"
                                    class="btn btn-sm btn-info  col-md-5 gap-1 d-flex align-items-center justify-content-center">
                                    <iconify-icon icon="lucide:image" class="text-xl"></iconify-icon>
                                    <span>Ganti Foto Profil</span>

                                </button>
                                <button id="btnGantiFotoUnggulan"
                                    class="btn btn-sm btn-secondary col-md-5 d-flex align-items-center gap-1 justify-content-center">
                                    <iconify-icon icon="lucide:edit" class="text-xl"></iconify-icon>
                                    <span>Ganti Foto Unggulan
                                    </span>
                                </button>

                            </div>

                            <div class="row  mt-16 text-center d-flex justify-content-center">

                                <button id="btnHapusFoto"
                                    class="col-md-10 btn btn-danger btn-sm d-flex align-items-center justify-content-center gap-2">
                                    <iconify-icon icon="lucide:trash" class="text-xl"></iconify-icon>
                                    <span>Hapus Foto</span>
                                </button>

                            </div>
                            <div class="row  mt-16 text-center d-flex justify-content-center">

                                <button id="btnUbahPassword"
                                    class="col-md-10 btn btn-warning btn-sm d-flex align-items-center justify-content-center gap-2">
                                    <iconify-icon icon="lucide:edit" class="text-xl"></iconify-icon>
                                    <span>Ubah Password</span>
                                </button>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
                                     
            <div class="col-md-8 mt-md-0 mt-3">
                 <form id="formUpdateGuru">
  @csrf
  @method('PUT')
                <div class="card">
                    <div class="card-body">
                        <div class="d-flex justify-content-between align-items-center mb-16">


                            <ul class="nav bordered-tab border border-top-0 border-start-0 border-end-0 nav-pills">
                                <li class="nav-item" role="presentation">
                                    <button class="nav-link px-16 py-10 active" data-bs-toggle="pill"
                                        data-bs-target="#pills-home" type="button">
                                        Profil
                                    </button>
                                </li>

                                <li class="nav-item" role="presentation">
                                    <button class="nav-link px-16 py-10" data-bs-toggle="pill"
                                        data-bs-target="#pills-details" type="button">
                                        Data Lengkap
                                    </button>
                                </li>
                            </ul>

                            <button type="submit" class="btn btn-sm btn-success d-flex align-items-center gap-2">
                                <iconify-icon icon="lucide:save" class="text-xl"></iconify-icon>
                                Simpan
                            </button>

                        </div>

                        <div class="tab-content" id="pills-tabContent">
                            <div class="tab-pane fade show active" id="pills-home" role="tabpanel"
                                aria-labelledby="pills-home-tab" tabindex="0">
                                <div>
                                 <div class="row mb-2 gy-3 d-flex align-items-center">
              <label class="form-label mb-0 col-sm-2">Nama Lengkap</label>
              <div class="col-sm-10">
                <div class="icon-field">
                  <span class="icon">
                    <iconify-icon icon="f7:person"></iconify-icon>
                  </span>
                  <input type="text" name="nama" class="form-control" placeholder="Masukkan Nama" value="{{$guru->nama}}">
                </div>
              </div>
            </div>
                                 <div class="row mb-2 gy-3 d-flex align-items-center">
              <label class="form-label mb-0 col-sm-2">Username</label>
              <div class="col-sm-10">
                <div class="icon-field">
                  <span class="icon">
                    <iconify-icon icon="f7:person-crop-circle-badge-checkmark"></iconify-icon>
                  </span>
                  <input type="text" name="username" class="form-control" placeholder="Masukkan Username" value="{{$guru->user->username}}">
                </div>
              </div>
            </div>
          
                                 <div class="row mb-2 gy-3 d-flex align-items-center">
              <label class="form-label mb-0 col-sm-2">Email</label>
              <div class="col-sm-10">
                <div class="icon-field">
                  <span class="icon">
                    <iconify-icon icon="f7:envelope"></iconify-icon>
                  </span>
                  <input type="email" name="email" class="form-control" placeholder="Masukkan Email" value="{{$guru->user->email}}">
                </div>
              </div>
            </div>
                                 <div class="row mb-2 gy-3 d-flex align-items-center">
              <label class="form-label mb-0 col-sm-2">No. HP</label>
              <div class="col-sm-10">
                <div class="icon-field">
                  <span class="icon">
                    <iconify-icon icon="f7:phone"></iconify-icon>
                  </span>
                  <input type="text"  class="form-control" placeholder="Masukkan Email" value="{{$guru->no_hp}}" name="no_hp">
                </div>
              </div>
            </div>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="pills-details" role="tabpanel"
                                aria-labelledby="pills-details-tab" tabindex="0">
                                <div>
                                     <div class="row mb-2 gy-3 d-flex align-items-center">
              <label class="form-label mb-0 col-sm-2">NIP</label>
              <div class="col-sm-10">
                <div class="icon-field">
                  <span class="icon">
                    <iconify-icon icon="f7:pencil"></iconify-icon>
                  </span>
                  <!-- <textarea name="nip" id="nip" class="form-control" placeholder="Masukkan NIP">{{$guru->nip}}</textarea> -->
                  <input type="text" name="nip" class="form-control" placeholder="Masukkan NIP" value="{{$guru->nip}}">
                </div>
              </div>
            </div>
                                     <div class="row mb-2 gy-3 d-flex align-items-center">
              <label class="form-label mb-0 col-sm-2">NUPTK</label>
              <div class="col-sm-10">
                <div class="icon-field">
                  <span class="icon">
                    <iconify-icon icon="f7:rectangle-stack-fill-badge-person-crop"></iconify-icon>
                  </span>
                  <!-- <textarea name="nip" id="nip" class="form-control" placeholder="Masukkan NIP">{{$guru->nip}}</textarea> -->
                  <input type="text" name="nuptk" class="form-control" placeholder="Masukkan NUPTK" value="{{$guru->nuptk}}">
                </div>
              </div>
            </div>
                                     <div class="row mb-2 gy-3 d-flex align-items-center">
              <label class="form-label mb-0 col-sm-2">Alamat</label>
              <div class="col-sm-10">
                <div class="icon-field">
                  <span class="icon">
                    <iconify-icon icon="f7:location"></iconify-icon>
                  </span>
                  <textarea name="alamat" id="alamat" class="form-control" placeholder="Masukkan Alamat">{{$guru->alamat}}</textarea>
                  <!-- <input type="text" name="#0" class="form-control" placeholder="Masukkan Alamat" value="{{$guru->alamat}}"> -->
                </div>
              </div>
            </div>
                  <div class="row mb-2 gy-3 d-flex align-items-center">
              <label class="form-label mb-0 col-sm-2">Tanggal Lahir</label>
              <div class="col-sm-10">
                <div class="icon-field">
                  <span class="icon">
                    <iconify-icon icon="f7:calendar"></iconify-icon>
                  </span>
                 <input type="date" name="tgl_lahir" id="tgl_lahir" class="form-control" value="{{$guru->tgl_lahir}}">
                </div>
              </div>
            </div>
                                     <div class="row mb-2 gy-3 d-flex align-items-center">
              <label class="form-label mb-0 col-sm-2">Bio</label>
              <div class="col-sm-10">
                <div class="icon-field">
                  <span class="icon">
                    <iconify-icon icon="f7:book"></iconify-icon>
                  </span>
                  <textarea name="bio" id="bio" class="form-control" placeholder="Masukkan Bio">{{$guru->bio}}</textarea>
                  <!-- <input type="text" name="#0" class="form-control" placeholder="Masukkan Alamat" value="{{$guru->alamat}}"> -->
                </div>
              </div>
            </div>
                                     <div class="row mb-2 gy-3 d-flex align-items-center">
              <label class="form-label mb-0 col-sm-2">Jenis Kelamin</label>
              <div class="col-sm-10">
              
                
                 <select class="form-select" name="jenis_kelamin" id="jenis_kelamin">
                    <option value="">Pilih Jenis Kelamin</option>
                   <option value="L" {{ $guru->jenis_kelamin == 'L' ? 'selected' : '' }}>Laki-laki</option>
                   <option value="P" {{ $guru->jenis_kelamin == 'P' ? 'selected' : '' }}>Perempuan</option>
                 </select>
                </div>
           
            </div>
                               
                                </div>
                            </div>
</form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    @push('scripts')
    
<script>
$('#formUpdateGuru').on('submit', function(e) {
    e.preventDefault();

    let formData = new FormData(this);
    let btn = $('button[type=submit]');

    $.ajax({
        url: "{{ route('admin.guru.update', $guru->id) }}",
        type: "POST",
        data: formData,
        processData: false,
        contentType: false,
        beforeSend: function() {
            btn.prop('disabled', true).html(
                '<span class="spinner-border spinner-border-sm"></span> Menyimpan...'
            );
        },
        success: function(res) {
            if (res.status) {
                Swal.fire({
                    icon: 'success',
                    title: 'Berhasil',
                    text: res.message,
                    timer: 2000,
                    showConfirmButton: false
                });
                console.log(res);
                setTimeout(() => {
                    location.reload();
                }, 2000);
            }
        },
        error: function(xhr) {
            if (xhr.status === 422) {
                let errors = xhr.responseJSON.errors;
                let pesan = '<ul style="text-align:left;">';

                $.each(errors, function(key, value) {
                    pesan += `<li>${value[0]}</li>`;
                });

                pesan += '</ul>';

                Swal.fire({
                    icon: 'error',
                    title: 'Validasi Gagal',
                    html: pesan
                });
            } else {
                Swal.fire({
                    icon: 'error',
                    title: 'Oops!',
                    text: 'Terjadi kesalahan pada server'
                });
            }
        },
        complete: function() {
            btn.prop('disabled', false).html(
                '<iconify-icon icon="lucide:save" class="text-xl"></iconify-icon> Simpan'
            );
        }
    });
});
</script>

<script>
let cropper = null;



$('#btnGantiFoto').on('click', function () {
    Swal.fire({
        title: 'Ganti Foto Profil',
        html: `
            <input type="file" id="inputFoto" accept="image/*" class="form-control mb-2">
            <div class="text-center">
                <img id="previewFoto" style="max-width:100%; display:none;">
            </div>
        `,
        showCancelButton: true,
        confirmButtonText: 'Simpan',
        cancelButtonText: 'Batal',
        width: 600,
        didOpen: () => {

            // ❗ Pastikan Cropper tersedia
            if (typeof Cropper === 'undefined') {
                Swal.showValidationMessage('Cropper.js belum dimuat');
                return;
            }

            const input = document.getElementById('inputFoto');
            const img = document.getElementById('previewFoto');
            if (cropper) {
    cropper.destroy();
}

cropper = new Cropper(img, {
    aspectRatio: 1,
    viewMode: 1,
    autoCropArea: 1
});

            input.onchange = function (e) {
                const file = e.target.files[0];
                if (!file) return;

                // Validasi client (opsional tapi recommended)
                if (!file.type.startsWith('image/')) {
                    Swal.showValidationMessage('File harus berupa gambar');
                    return;
                }

                const reader = new FileReader();
                reader.onload = function () {
                    img.src = reader.result;
                    img.style.display = 'block';

                    if (cropper) {
                        cropper.destroy();
                        cropper = null;
                    }

                    cropper = new Cropper(img, {
                        aspectRatio: 1,
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
                Swal.showValidationMessage('Silakan pilih dan crop foto terlebih dahulu');
                return false;
            }

            // ⚠️ toBlob ASYNC → WAJIB Promise
            return new Promise((resolve) => {
                cropper.getCroppedCanvas({
                    width: 300,
                    height: 300,
                    imageSmoothingQuality: 'high'
                }).toBlob((blob) => {
                    resolve(blob);
                }, 'image/jpeg', 0.9);
            });
        }
    }).then((result) => {
        if (result.isConfirmed && result.value) {
            uploadFoto(result.value);
        }
    });
});

function uploadFoto(blob) {
    let formData = new FormData();
    formData.append('foto', blob, 'foto.jpg');
    formData.append('_token', '{{ csrf_token() }}');

    $.ajax({
        url: "{{ route('admin.guru.updateFotoProfil', $guru->id) }}",
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
            Swal.fire({
                icon: 'success',
                title: 'Berhasil',
                text: res.message,
                timer: 1500,
                showConfirmButton: false
            }).then(() => location.reload());
        },
      error: function (xhr) {
    let pesan = 'Terjadi kesalahan';

    if (xhr.status === 422) {
        let errors = xhr.responseJSON.errors;
        pesan = '<ul style="text-align:left;">';

        $.each(errors, function (key, value) {
            pesan += `<li>${value[0]}</li>`;
        });

        pesan += '</ul>';
    } else if (xhr.responseJSON && xhr.responseJSON.message) {
        pesan = xhr.responseJSON.message;
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
let cropperUnggulan = null;

$('#btnGantiFotoUnggulan').on('click', function () {
    Swal.fire({
        title: 'Ganti Foto Unggulan',
        html: `
            <input type="file" id="inputFotoUnggulan" accept="image/*" class="form-control mb-2">
            <div class="text-center">
                <img id="previewFotoUnggulan" style="max-width:100%; display:none;">
            </div>
            <small class="text-muted">Ukuran ideal 360 × 120 px</small>
        `,
        showCancelButton: true,
        confirmButtonText: 'Simpan',
        cancelButtonText: 'Batal',
        width: 700,
        didOpen: () => {
            const input = document.getElementById('inputFotoUnggulan');
            const img = document.getElementById('previewFotoUnggulan');

            // deteksi constructor cropper (anti error)
            let CropperClass = null;
            if (window.Cropper && typeof window.Cropper === 'function') {
                CropperClass = window.Cropper;
            } else if (window.Cropper && window.Cropper.default) {
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

                    if (cropperUnggulan) {
                        cropperUnggulan.destroy();
                        cropperUnggulan = null;
                    }

                    cropperUnggulan = new CropperClass(img, {
                        aspectRatio: 360 / 120,
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
            if (!cropperUnggulan) {
                Swal.showValidationMessage('Silakan pilih dan crop foto terlebih dahulu');
                return false;
            }

            return new Promise((resolve) => {
                cropperUnggulan.getCroppedCanvas({
                    width: 360,
                    height: 120,
                    imageSmoothingQuality: 'high'
                }).toBlob((blob) => {
                    resolve(blob);
                }, 'image/jpeg', 0.9);
            });
        }
    }).then((result) => {
        if (result.isConfirmed && result.value) {
            uploadFotoUnggulan(result.value);
        }
    });
});

function uploadFotoUnggulan(blob) {
    let formData = new FormData();
    formData.append('foto_unggulan', blob, 'foto-unggulan.jpg');
    formData.append('_token', '{{ csrf_token() }}');

    $.ajax({
        url: "{{ route('admin.guru.updateFotoUnggulan', $guru->id) }}",
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
            Swal.fire({
                icon: 'success',
                title: 'Berhasil',
                text: res.message,
                timer: 1500,
                showConfirmButton: false
            }).then(() => location.reload());
        },
        error: function (xhr) {
            let pesan = 'Upload gagal';
            if (xhr.status === 422 && xhr.responseJSON.errors) {
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
$('#btnUbahPassword').on('click', function () {
    Swal.fire({
        title: 'Ubah Password',
        html: `
            <label class="text-start d-block">Password Lama</label>
            <input type="text" class="swal2-input" value="{{ $guru->user->password_text }}" readonly>

            <label class="text-start d-block mt-2">Password Baru</label>
            <input type="password" id="password_baru" class="swal2-input" placeholder="Minimal 6 karakter">

            <label class="text-start d-block mt-2">Konfirmasi Password</label>
            <input type="password" id="password_konfirmasi" class="swal2-input" placeholder="Ulangi password baru">
        `,
        showCancelButton: true,
        confirmButtonText: 'Simpan',
        cancelButtonText: 'Batal',
        preConfirm: () => {
            const baru = document.getElementById('password_baru').value;
            const konfirmasi = document.getElementById('password_konfirmasi').value;

            if (!baru || !konfirmasi) {
                Swal.showValidationMessage('Password baru wajib diisi');
                return false;
            }

            if (baru.length < 6) {
                Swal.showValidationMessage('Password minimal 6 karakter');
                return false;
            }

            if (baru !== konfirmasi) {
                Swal.showValidationMessage('Konfirmasi password tidak cocok');
                return false;
            }

            return { password: baru };
        }
    }).then((result) => {
        if (result.isConfirmed) {
            updatePassword(result.value.password);
        }
    });
});

function updatePassword(password) {
    $.ajax({
        url: "{{ route('admin.guru.updatePassword', $guru->id) }}",
        type: "POST",
        data: {
            _token: "{{ csrf_token() }}",
            password: password
        },
        beforeSend: function () {
            Swal.fire({
                title: 'Menyimpan...',
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
            let msg = 'Terjadi kesalahan';

            if (xhr.status === 422) {
                const errors = xhr.responseJSON.errors;
                msg = Object.values(errors)[0][0];
            }

            Swal.fire({
                icon: 'error',
                title: 'Gagal',
                text: msg
            });
        }
    });
}
</script>

<script>
$('#btnHapusFoto').on('click', function () {
    Swal.fire({
        title: 'Hapus Foto?',
        text: 'Foto profil dan foto unggulan akan dihapus.',
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#d33',
        confirmButtonText: 'Ya, hapus',
        cancelButtonText: 'Batal'
    }).then((result) => {
        if (result.isConfirmed) {
            hapusFoto();
        }
    });
});

function hapusFoto() {
    $.ajax({
        url: "{{ route('admin.guru.hapusFoto', $guru->id) }}",
        type: "POST",
        data: {
            _token: "{{ csrf_token() }}"
        },
        beforeSend: function () {
            Swal.fire({
                title: 'Menghapus...',
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
            }).then(() => {
                location.reload(); // opsional
            });
        },
        error: function (xhr) {
            Swal.fire({
                icon: 'error',
                title: 'Gagal',
                text: xhr.responseJSON?.message ?? 'Gagal menghapus foto'
            });
        }
    });
}
</script>
    @endpush
@endsection
