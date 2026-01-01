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
            <div class="col-md-5">
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

                                <button
                                    class="btn btn-sm btn-info  col-md-5 gap-1 d-flex align-items-center justify-content-center">
                                    <iconify-icon icon="lucide:image" class="text-xl"></iconify-icon>
                                    <span>Ganti Foto Profil</span>

                                </button>
                                <button
                                    class="btn btn-sm btn-secondary col-md-5 d-flex align-items-center gap-1 justify-content-center">
                                    <iconify-icon icon="lucide:edit" class="text-xl"></iconify-icon>
                                    <span>Ganti Foto Unggulan
                                    </span>
                                </button>

                            </div>

                            <div class="row  mt-16 text-center d-flex justify-content-center">

                                <button
                                    class="col-md-10 btn btn-danger btn-sm d-flex align-items-center justify-content-center gap-2">
                                    <iconify-icon icon="lucide:trash" class="text-xl"></iconify-icon>
                                    <span>Hapus Foto</span>
                                </button>

                            </div>
                            <div class="row  mt-16 text-center d-flex justify-content-center">

                                <button
                                    class="col-md-10 btn btn-warning btn-sm d-flex align-items-center justify-content-center gap-2">
                                    <iconify-icon icon="lucide:edit" class="text-xl"></iconify-icon>
                                    <span>Ubah Password</span>
                                </button>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-7 mt-md-0 mt-3">
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
                  <input type="text" name="#0" class="form-control" placeholder="Masukkan Nama" value="{{$guru->nama}}">
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
                  <input type="text" name="#0" class="form-control" placeholder="Masukkan Username" value="{{$guru->user->username}}">
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
                  <input type="text" name="#0" class="form-control" placeholder="Masukkan Email" value="{{$guru->user->email}}">
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
                  <input type="text" name="#0" class="form-control" placeholder="Masukkan Email" value="{{$guru->no_hp}}" name="no_hp">
                </div>
              </div>
            </div>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="pills-details" role="tabpanel"
                                aria-labelledby="pills-details-tab" tabindex="0">
                                <div>
                                    <h6 class="text-lg mb-8">Title</h6>
                                    <p class="text-secondary-light mb-16">Lorem Ipsum is simply dummy text of the printing
                                        and typesetting industry. Lorem Ipsum has been the industry's standard dummy text
                                        ever since the 1500s, when an unknown printer took a galley of type and scrambled it
                                        to make a type specimen book. It has survived not </p>
                                    <p class="text-secondary-light mb-0">It was popularised in the 1960s with the release of
                                        Letraset sheets containing Lorem Ipsum passages, and more recently with desktop</p>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
