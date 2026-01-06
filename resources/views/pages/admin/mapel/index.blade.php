@extends('layouts.app')

@section('content')

    <div class="dashboard-main-body">

        <div class="d-flex flex-wrap align-items-center justify-content-between gap-3 mb-24">
            <h6 class="fw-semibold mb-0">Mata Pelajaran</h6>
            <ul class="d-flex align-items-center gap-2">
                <li class="fw-medium">
                    <a href="index.html" class="d-flex align-items-center gap-1 hover-text-primary">
                        <iconify-icon icon="solar:home-smile-angle-outline" class="icon text-lg"></iconify-icon>
                        Dashboard
                    </a>
                </li>
                <li>-</li>
                <li class="fw-medium">Mata Pelajaran</li>
            </ul>
        </div>
        <div class="row">
            <div class="col-md-12">

                <div class="card basic-data-table">
                    <div class="card-header d-flex justify-content-between align-items-center">
                      <h5 class="card-title mb-0 d-flex align-items-center gap-2">
  
    Data Mata Pelajaran

</h5>

                        <div>

                            <button data-bs-toggle="modal" data-bs-target="#tambahMapel" type="button"
                                class="btn btn-sm btn-primary d-flex align-items-center gap-2">
                                <iconify-icon icon="lucide:plus" class="text-xl"></iconify-icon> Tambah
                            </button>
                        </div>

                    </div>
                    <div class="card-body">
                        @if (session('success'))
                            <div class="alert alert-success alert-dismissible fade show" role="alert">
                                <strong>Sukses!</strong> {{ session('success') }}
                                <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                            </div>
                        @endif

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

                        <!-- error single -->
@if (session('error'))
    <div class="alert alert-danger alert-dismissible fade show" role="alert">
        {{ session('error') }}
        <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
    </div>
@endif

                 <div class="row g-4">
    <!-- KATEGORI -->
    <div class="col-md-4">
        <div class="card">
            <div class="card-header d-flex justify-content-between">
                <h6 class="mb-0 card-title mb-0 d-flex align-items-center gap-2">
                    <iconify-icon icon="lucide:layers"></iconify-icon>
                    Kategori Mapel
                </h6>
              <button class="btn btn-sm btn-primary" id="btnTambahKategori">
    <iconify-icon icon="lucide:plus"></iconify-icon>
</button>

            </div>

            <div class="list-group list-group-flush">
                {{-- semua --}}
                <a href="/admin/mapel?kategori=all"
                   class="list-group-item list-group-item-action {{ request('kategori') == 'all' || !request()->has('kategori') ? 'active' : '' }}
">
                    <div class="d-flex justify-content-between">
                        <span>Semua</span>
                        <span id="totalMapelCount" class="badge bg-light text-dark d-flex align-items-center justify-content-center">
                            {{ $kategorimapel->sum('mapel_count') }}
                        </span>
                    </div>
                </a>
                @foreach ($kategorimapel as $kat)
                    <a href="?kategori={{ $kat->id }}"
                       class="list-group-item list-group-item-action
                       {{ request('kategori') == $kat->id ? 'active' : '' }}">
                        <div class="d-flex justify-content-between">
                            <span>{{ $kat->nama_kategori_mapel }}</span>
                            <div class="d-flex gap-1">

                                <span  data-kategori="{{ $kat->id }}" class="badge bg-light mapel-count text-dark d-flex align-items-center justify-content-center">
                                    {{ $kat->mapel_count }}
                                </span>
                                 <button type="button" class="btn btn-xs btn-outline-success btn-edit-kategori"
        data-id="{{ $kat->id }}"
        data-nama="{{ $kat->nama_kategori_mapel }}">
        <iconify-icon icon="lucide:edit" width="14"></iconify-icon>
    </button>

    <!-- HAPUS -->
    <button type="button" class="btn btn-xs btn-outline-danger btn-delete-kategori"
        data-id="{{ $kat->id }}">
        <iconify-icon icon="lucide:trash" width="14"></iconify-icon>
    </button>
                            </div>
                        </div>
                    </a>
                @endforeach
            </div>
        </div>
    </div>

    <!-- MAPEL -->
    <div class="col-md-8">
        <div class="card">
            <div class="card-header d-flex justify-content-between">
                <h6 class="mb-0 card-title mb-0 d-flex align-items-center gap-2">
                    <iconify-icon icon="lucide:book-open"></iconify-icon>
                    Data Mapel
                </h6>
<button class="btn btn-sm btn-primary" id="btnTambahMapel">
    <iconify-icon icon="lucide:plus"></iconify-icon>
</button>


            </div>

            <div class="card-body">
                <div class="mapel-list">
                @forelse ($mapel as $mpl)
                    <div class="border rounded p-3 mb-2" id="mapel-{{ $mpl->id }}">
                        <div class="d-flex justify-content-between align-items-center">
                            <div>
                                <div class="fw-bold nama-mapel">{{ $mpl->nama_mapel }}</div>
                                <small class="text-muted kode-mapel">
                                    {{ $mpl->kode_mapel }}
                                </small>
                            </div>

                            <div class="d-flex gap-2">
                                  <button class="btn btn-sm btn-success btn-edit-mapel"
                data-id="{{ $mpl->id }}"
                data-kategori="{{ $mpl->kategori_mapel_id }}"
                data-kode="{{ $mpl->kode_mapel }}"
                data-nama="{{ $mpl->nama_mapel }}">
                <iconify-icon icon="lucide:edit"></iconify-icon>
            </button>

            <button class="btn btn-sm btn-danger btn-hapus-mapel"
                data-id="{{ $mpl->id }}"
                data-nama="{{ $mpl->nama_mapel }}">
                <iconify-icon icon="lucide:trash"></iconify-icon>
            </button>
                            </div>
                        </div>
                    </div>
                @empty
                    <div class="text-center text-muted py-5">
                        <iconify-icon icon="lucide:inbox" class="fs-1 d-inline-block mx-auto text-center"></iconify-icon>
                        <p class="mt-2">Mapel tidak ditemukan</p>
                    </div>
                @endforelse
                </div>
            </div>
        </div>
    </div>
</div>



                     


                    </div>
                </div>
            </div>
       

                        @foreach($kategorimapel as $s)
                            {{-- INCLUDE MODAL EDIT UNTUK DATA INI --}}
                            @include('pages.admin.mapel.partials.modal_edit_kategori_mapel', ['s' => $s])
                          
                        @endforeach

                        @include('pages.admin.mapel.partials.modal_tambah_kategori_mapel')
                        <!-- end modal tambah -->
                     
                </div>
            </div>
        </div>
    </div>

    @push('scripts')
    <script>
    window.kategoriMapel = @json(
        $kategorimapel->map(fn($k) => [
            'id' => $k->id,
            'nama' => $k->nama_kategori_mapel,
            'count' => $k->mapel_count
        ])
    );
    function renderKategoriOptions(selectedId = null) {
    return window.kategoriMapel.map(k => `
        <option value="${k.id}" ${selectedId == k.id ? 'selected' : ''}>
            ${k.nama}
        </option>
    `).join('');
}

function updateKategoriCount(kategoriId, delta) {
    // update state array
    const kat = window.kategoriMapel.find(k => k.id == kategoriId);
    if (!kat) return;

    kat.count += delta;

    // update badge UI
    $(`.mapel-count[data-kategori="${kategoriId}"]`)
        .text(kat.count);
}


</script>

        <script>
            // Select All Checkbox
            document.getElementById('checkAll').addEventListener('change', function() {
                document.querySelectorAll('.check-data').forEach(cb => cb.checked = this.checked);
            });

            document.getElementById('checkAll2').addEventListener('change', function() {
                document.querySelectorAll('.check-data').forEach(cb => cb.checked = this.checked);
            });

            // Hapus Massal
            document.getElementById('deleteSelectedBtn').addEventListener('click', function() {
                let checked = document.querySelectorAll('.check-data:checked');

                if (checked.length === 0) {
                    Swal.fire({
                        icon: 'warning',
                        title: 'Oops!',
                        text: 'Tidak ada data yang dipilih.',
                        confirmButtonColor: '#d33'
                    });
                    return;
                }

                Swal.fire({
                    title: 'Yakin ingin menghapus?',
                    text: checked.length + " data akan dihapus!",
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#d33',
                    cancelButtonColor: '#3085d6',
                    confirmButtonText: 'Hapus'
                }).then((result) => {
                    if (result.isConfirmed) {
                        document.getElementById('massActionForm').submit();
                    }
                });
            });
        </script>

        
<script>
$(document).on('click', '.btn-delete', function(e) {
    e.preventDefault();

    const form = $(this).closest('form');

    console.log($(this).data('nama'));

    Swal.fire({
        title: "Yakin ingin menghapus kategori " + $(this).data('nama') + "?",
        text: "Data yang dihapus tidak bisa dikembalikan!",
        icon: "warning",
        showCancelButton: true,
        confirmButtonColor: "#d33",
        cancelButtonColor: "#6c757d",
        confirmButtonText: "Ya, hapus!",
        cancelButtonText: "Batal",
    }).then((result) => {
        if (result.isConfirmed) {
            form.submit();
        }
    });
});
</script>

<script>
$(document).on('click', '.btn-delete-mapel', function(e) {
    e.preventDefault();

    const form = $(this).closest('form');

    console.log($(this).data('nama'));

    Swal.fire({
        title: "Yakin ingin menghapus mapel " + $(this).data('nama') + "?",
        text: "Data yang dihapus tidak bisa dikembalikan!",
        icon: "warning",
        showCancelButton: true,
        confirmButtonColor: "#d33",
        cancelButtonColor: "#6c757d",
        confirmButtonText: "Ya, hapus!",
        cancelButtonText: "Batal",
    }).then((result) => {
        if (result.isConfirmed) {
            form.submit();
        }
    });
});
</script>

<script>
$('#btnTambahKategori').on('click', function () {
    Swal.fire({
        title: 'Tambah Kategori Mapel',
        html: `
            <input type="text"
                id="nama_kategori_mapel"
                class="form-control"
                placeholder="Masukkan nama kategori mapel">
        `,
        showCancelButton: true,
        confirmButtonText: 'Simpan',
        cancelButtonText: 'Batal',
        focusConfirm: false,
        preConfirm: () => {
            const nama = document.getElementById('nama_kategori_mapel').value;
            if (!nama) {
                Swal.showValidationMessage('Nama kategori mapel wajib diisi');
            }
            return nama;
        }
    }).then((result) => {
        if (result.isConfirmed) {

            $.ajax({
                url: "{{ route('admin.kategori-mapel.store') }}",
                type: "POST",
                data: {
                    _token: "{{ csrf_token() }}",
                    nama_kategori_mapel: result.value
                },
                success: function (res) {

                    Swal.fire({
                        icon: 'success',
                        title: 'Berhasil',
                        text: res.message,
                        timer: 1500,
                        showConfirmButton: false
                    });

                    // 🔥 langsung tambahkan ke list kategori
                   $('.list-group').append(`
<a href="?kategori=${res.data.id}"
   class="list-group-item list-group-item-action">
    <div class="d-flex justify-content-between align-items-center">
        <span>${res.data.nama_kategori_mapel}</span>

        <div class="d-flex gap-1 align-items-center">
            <span class="badge bg-light text-dark mapel-count"
                  data-kategori="${res.data.id}">
                0
            </span>

            <!-- EDIT -->
            <button type="button"
                class="btn btn-xs btn-outline-success btn-edit-kategori"
                data-id="${res.data.id}"
                data-nama="${res.data.nama_kategori_mapel}">
                <iconify-icon icon="lucide:edit" width="14"></iconify-icon>
            </button>

            <!-- DELETE -->
            <button type="button"
                class="btn btn-xs btn-outline-danger btn-delete-kategori"
                data-id="${res.data.id}">
                <iconify-icon icon="lucide:trash" width="14"></iconify-icon>
            </button>
        </div>
    </div>
</a>
`);

  window.kategoriMapel.push({
        id: res.data.id,
        nama: res.data.nama_kategori_mapel,
        count: 0
    });


                },
                error: function (xhr) {
                    if (xhr.status === 422) {
                        let errors = xhr.responseJSON.errors;
                        Swal.fire({
                            icon: 'error',
                            title: 'Gagal',
                            text: errors.nama_kategori_mapel[0]
                        });
                    }
                }
            });

        }
    });
});
</script>
<script>
$('#btnTambahMapel').on('click', function () {

    let kategoriOptions = `
       
       
            <option value="">-- Pilih Kategori --</option>
            ${renderKategoriOptions()}
      
    `;

    Swal.fire({
        title: 'Tambah Mapel',
        html: `
            <select id="kategori_mapel_id" class="form-control mb-2">
                ${kategoriOptions}
            </select>

            <input type="text" id="kode_mapel"
                class="form-control mb-2"
                placeholder="Kode Mapel (contoh: MTK-01)">

            <input type="text" id="nama_mapel"
                class="form-control"
                placeholder="Nama Mapel">
        `,
        showCancelButton: true,
        confirmButtonText: 'Simpan',
        cancelButtonText: 'Batal',
        focusConfirm: false,

        preConfirm: () => {
            const kategori = $('#kategori_mapel_id').val();
            const kode = $('#kode_mapel').val();
            const nama = $('#nama_mapel').val();

            if (!kategori || !kode || !nama) {
                Swal.showValidationMessage('Semua field wajib diisi');
                return false;
            }

            // 👉 LOADING STATE
            Swal.showLoading();

            return {
                kategori_mapel_id: kategori,
                kode_mapel: kode,
                nama_mapel: nama
            };
        }
    }).then((result) => {

        if (result.isConfirmed) {

            $.ajax({
                url: "{{ route('admin.mapel.store') }}",
                type: "POST",
                data: {
                    _token: "{{ csrf_token() }}",
                    kategori_mapel_id: result.value.kategori_mapel_id,
                    kode_mapel: result.value.kode_mapel,
                    nama_mapel: result.value.nama_mapel
                },

                success: function (res) {

                    Swal.fire({
                        icon: 'success',
                        title: 'Berhasil',
                        text: res.message,
                        timer: 1300,
                        showConfirmButton: false
                    });

                    // update count kategori
    let badgeKategori = $(
        `.mapel-count[data-kategori="${res.kategori_id}"]`
    );
    console.log(badgeKategori);
    badgeKategori.text(res.mapel_count_kategori);

    // update total mapel
    $('#totalMapelCount').text(res.mapel_count_total);

                    // 🔥 LANGSUNG TAMPIL DI UI
                   $('.mapel-list').prepend(`
        <div class="mapel-item border rounded p-3 mb-2"
             id="mapel-${res.mapel.id}">
            <div class="d-flex justify-content-between align-items-center">
                <div>
                    <div class="fw-bold">${res.mapel.nama_mapel}</div>
                    <small class="text-muted">${res.mapel.kode_mapel}</small>
                </div>

                <div class="d-flex gap-2">
                    <button class="btn btn-sm btn-success btn-edit-mapel"
                        data-id="${res.mapel.id}"
                        data-kategori="${res.mapel.kategori_mapel_id}"
                        data-kode="${res.mapel.kode_mapel}"
                        data-nama="${res.mapel.nama_mapel}">
                        <iconify-icon icon="lucide:edit"></iconify-icon>
                    </button>

                    <button class="btn btn-sm btn-danger btn-hapus-mapel"
                        data-id="${res.mapel.id}"
                        data-nama="${res.mapel.nama_mapel}">
                        <iconify-icon icon="lucide:trash"></iconify-icon>
                    </button>
                </div>
            </div>
        </div>
    `);
                },

                error: function (xhr) {

                    Swal.close();

                    if (xhr.status === 422) {
                        let errors = xhr.responseJSON.errors;

                        Swal.fire({
                            icon: 'error',
                            title: 'Gagal',
                            html: `
                                ${errors.kategori_mapel_id ? errors.kategori_mapel_id[0] + '<br>' : ''}
                                ${errors.kode_mapel ? errors.kode_mapel[0] + '<br>' : ''}
                                ${errors.nama_mapel ? errors.nama_mapel[0] : ''}
                            `
                        });
                    }
                }
            });

        }
    });
});
</script>

<script>
$(document).on('click', '.btn-edit-mapel', function () {

    const btn = $(this);
    const id = btn.data('id');
    const nama = btn.data('nama');
    const kode = btn.data('kode');
    const kategori = btn.data('kategori');

    Swal.fire({
        title: 'Edit Mapel',
        html: `
            <select id="edit_kategori" class="form-control mb-2">
                @foreach ($kategorimapel as $kat)
                    <option value="{{ $kat->id }}"
                        ${kategori == {{ $kat->id }} ? 'selected' : ''}>
                        {{ $kat->nama_kategori_mapel }}
                    </option>
                @endforeach
            </select>

            <input id="edit_kode" class="form-control mb-2"
                value="${kode}" placeholder="Kode Mapel">

            <input id="edit_nama" class="form-control"
                value="${nama}" placeholder="Nama Mapel">
        `,
        showCancelButton: true,
        confirmButtonText: 'Update',
        cancelButtonText: 'Batal',
        focusConfirm: false,

        preConfirm: () => {
            const kategoriVal = $('#edit_kategori').val();
            const kodeVal = $('#edit_kode').val();
            const namaVal = $('#edit_nama').val();

            if (!kategoriVal || !kodeVal || !namaVal) {
                Swal.showValidationMessage('Semua field wajib diisi');
                return false;
            }

            Swal.showLoading();

            return {
                kategori_mapel_id: kategoriVal,
                kode_mapel: kodeVal,
                nama_mapel: namaVal
            };
        }
    }).then(result => {

        if (result.isConfirmed) {

            $.ajax({
                url: `/admin/mapel/${id}`,
                type: 'POST',
                data: {
                    _token: "{{ csrf_token() }}",
                    _method: 'PUT',
                    kategori_mapel_id: result.value.kategori_mapel_id,
                    kode_mapel: result.value.kode_mapel,
                    nama_mapel: result.value.nama_mapel
                },
                success: function (res) {

                    Swal.fire({
                        icon: 'success',
                        title: 'Berhasil',
                        text: 'Mapel berhasil diupdate',
                        timer: 1200,
                        showConfirmButton: false
                    });

                    console.log(res);
                       const id = res.data.id;
    const newKategoriId = res.data.kategori_mapel_id;

                    

                    // 🔥 UPDATE UI LANGSUNG
                    const item = $('#mapel-' + id);
                    console.log(item);
                    item.find('.nama-mapel').text(res.data.nama_mapel);
                    item.find('.kode-mapel').text(res.data.kode_mapel);
                     const oldKategoriId = btn.data('kategori');
                     if (oldKategoriId != newKategoriId) {

        // ⬇️ KURANGI COUNT KATEGORI LAMA
        updateKategoriCount(oldKategoriId, -1);

        // ⬆️ TAMBAH COUNT KATEGORI BARU
        updateKategoriCount(newKategoriId, +1);

        // update kategori di DOM
        item.data('kategori', newKategoriId);

        // kalau sedang filter kategori lama → remove item
        if (window.activeKategori == oldKategoriId) {
            item.remove();
        }
    }

                    // update data attribute
                    btn.data('nama', res.data.nama_mapel);
                    btn.data('kode', res.data.kode_mapel);
                    btn.data('kategori', res.data.kategori_mapel_id);

                },
                error: function (xhr) {
                    Swal.close();

                    if (xhr.status === 422) {
                        let errors = xhr.responseJSON.errors;
                        Swal.fire({
                            icon: 'error',
                            title: 'Gagal',
                            html: `
                                ${errors.kategori_mapel_id ? errors.kategori_mapel_id[0] + '<br>' : ''}
                                ${errors.kode_mapel ? errors.kode_mapel[0] + '<br>' : ''}
                                ${errors.nama_mapel ? errors.nama_mapel[0] : ''}
                            `
                        });
                    }
                }
            });
        }
    });
});
</script>
<script>
$(document).on('click', '.btn-hapus-mapel', function () {

    const id = $(this).data('id');
    const nama = $(this).data('nama');

    Swal.fire({
        title: 'Hapus Mapel?',
        text: `Mapel "${nama}" akan dihapus`,
        icon: 'warning',
        showCancelButton: true,
        confirmButtonText: 'Ya, hapus',
        cancelButtonText: 'Batal'
    }).then(result => {

        if (result.isConfirmed) {

            Swal.fire({
                title: 'Menghapus...',
                allowOutsideClick: false,
                didOpen: () => {
                    Swal.showLoading();
                }
            });

            $.ajax({
                url: `/admin/mapel/${id}`,
                type: 'POST',
                data: {
                    _token: "{{ csrf_token() }}",
                    _method: 'DELETE'
                },
                success: function () {

                    Swal.fire({
                        icon: 'success',
                        title: 'Terhapus',
                        timer: 1000,
                        showConfirmButton: false
                    });

                    $('#mapel-' + id).fadeOut(300, function () {
                        $(this).remove();
                    });
                },
                error: function () {
                    Swal.fire('Gagal', 'Mapel tidak bisa dihapus', 'error');
                }
            });
        }
    });
});
</script>

<script>
$(document).on('click', '.btn-edit-kategori', function (e) {
       e.preventDefault();
    e.stopPropagation(); // ⛔ stop klik ke <a>
    let id = $(this).data('id');
    let nama = $(this).data('nama');

    Swal.fire({
        title: 'Edit Kategori Mapel',
        input: 'text',
        inputValue: nama,
        inputAttributes: {
            class: 'form-control'
        },
        showCancelButton: true,
        confirmButtonText: 'Simpan',
        showLoaderOnConfirm: true,
        preConfirm: (value) => {
            return $.ajax({
                url: `/admin/kategori-mapel/${id}`,
                type: 'PUT',
                data: {
                    _token: '{{ csrf_token() }}',
                    nama_kategori_mapel: value
                }
            }).catch(err => {
                Swal.showValidationMessage(
                    err.responseJSON?.message || 'Gagal update'
                )
            });
        }
    }).then((result) => {
        if (result.isConfirmed) {
            let kat = window.kategoriMapel.find(k => k.id == result.data.id);
if (kat) {
    kat.nama = result.data.nama_kategori_mapel;
}

            Swal.fire('Berhasil', 'Kategori berhasil diubah', 'success')
                .then(() => location.reload());
        }
    });
});
</script>
<script>
$(document).on('click', '.btn-delete-kategori', function (e) {
       e.preventDefault();
    e.stopPropagation(); // ⛔ stop klik ke <a>
    let id = $(this).data('id');

    Swal.fire({
        title: 'Hapus Kategori?',
        text: 'Kategori yang dihapus tidak bisa dikembalikan',
        icon: 'warning',
        showCancelButton: true,
        confirmButtonText: 'Ya, hapus',
        showLoaderOnConfirm: true,
        preConfirm: () => {
            return $.ajax({
                url: `/admin/kategori-mapel/${id}`,
                type: 'DELETE',
                data: {
                    _token: '{{ csrf_token() }}'
                }
            }).catch(err => {
                Swal.showValidationMessage('Gagal menghapus data')
            });
        }
    }).then((result) => {
        if (result.isConfirmed) {
            Swal.fire('Terhapus', 'Kategori berhasil dihapus', 'success')
                .then(() => location.reload());
        }
    });
});
</script>




        <!-- modal edit  -->
    @endpush
@endsection
