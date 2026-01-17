@extends('layouts.app')

@section('content')
    <div class="dashboard-main-body">

        <div class="d-flex flex-wrap align-items-center justify-content-between gap-3 mb-24">
            <h6 class="fw-semibold mb-0">Panitia PKL</h6>

        </div>

        <div class="card basic-data-table">
            <div class="card-header d-flex justify-content-between align-items-center">
                <h5 class="card-title mb-0">Panitia PKL</h5>
                <div>
                    <div class="d-flex gap-2">
                        <button id="btnpanitiaPKL"
                            class="btn btn-primary text-sm btn-sm p-1 radius-4 d-flex align-items-center gap-2">
                            <iconify-icon icon="lucide:plus" class="text-xl"></iconify-icon>
                            <span class="d-none d-md-inline">Tambah</span>
                        </button>


                    </div>

                </div>

            </div>
            <div class="card-body">



                <div class="">






                    <table class="table basic-border-table" style="width:100%">
                        <thead>
                            <tr>

                                <th scope="col" style="width : 5px !important; padding: 0.9rem 7px; text-align: center">

                                    NO

                                </th>
                                <th scope="col" style="width : 200px !important;" class="">NAMA
                                </th>


                                <!-- Kode kelas (hilang di mobile) -->
                                <th scope="col" style="width : 180px !important;" class="d-md-table-cell d-none">JABATAN
                                </th>
                             

                                <!-- Jurusan (hilang di mobile) -->
                                <th scope="col" style="width : 150px" class="d-none d-md-table-cell">TA</th>

                                <!-- Walikelas (hilang di mobile) -->
                                <th scope="col" style="width : 120px !important;" class="">AKSI</th>

                            </tr>
                        </thead>

                        <tbody>
                            @if ($panitiaPKL->count() > 0)
                                @foreach ($panitiaPKL as $s)
                                    <tr>


                                        {{-- No --}}
                                        <td class="text-center" style="width:5px; padding:7px;">
                                            {{ $loop->iteration }}
                                        </td>

                                        {{-- File Name (Desktop only) --}}
                                        <td class="" style="width:200px;">
                                            {{ $s->guru->nama ?? '-' }}
                                        </td>

                                

                                        {{-- Size panitiaPKL (Mobile) --}}
                                        <td class="d-md-table-cell d-none">
                                            {{ $s->jabatan ?? '-' }}
                                        </td>

                                        {{-- Tahun Pelajaran --}}
                                        <td class="d-none d-md-table-cell" style="width:150px;">
                                            {{ $s->tahunPelajaran->nama ?? '-' }}
                                        </td>

                                        {{-- Aksi --}}
                                        <td class="d-flex h-100 gap-1 align-items-center justify-content-center" style="width:120px; !important;">

                                             <button class="btn btn-sm btn-outline-warning btn-edit"
    data-id="{{ $s->id }}"
    data-guru_id="{{ $s->guru_id }}"
    data-jabatan="{{ $s->jabatan }}"
    data-status="{{ $s->status }}">
    <iconify-icon icon="mdi:edit" class="icon"></iconify-icon>
</button>

                                            <button class="btn btn-sm btn-outline-danger btn-delete"
                                                data-id="{{ $s->id }}">
                                                <iconify-icon icon="tabler:trash" class="icon"></iconify-icon>
                                            </button>
                                        </td>
                                    </tr>
                                @endforeach
                            @else
                                <tr>
                                    <td colspan="7" class="text-center">Tidak ada data</td>
                                </tr>
                            @endif
                        </tbody>

                    </table>

                </div>
                <div class="d-flex align-items-center justify-content-between flex-wrap gap-2 mt-24">
                    <span>
                        Menampilkan
                        {{ $panitiaPKL->firstItem() ?? 0 }}
                        sampai
                        {{ $panitiaPKL->lastItem() ?? 0 }}
                        dari
                        {{ $panitiaPKL->total() }}
                        data
                    </span>

                    {{ $panitiaPKL->links() }}
                </div>
            </div>
        </div>
    </div>

    @push('scripts')
        <script>
            $('#btnpanitiaPKL').on('click', function() {
                Swal.fire({
                    title: 'Tambah Panitia PKL',
                    html: `
            <div class="mb-2 text-start">
                <label class="form-label">Guru</label>
                <select id="guru_id" class="form-control">
                    <option value="">-- Pilih Guru --</option>
                    @foreach ($guru as $g)
                        <option value="{{ $g->id }}">{{ $g->nama }}</option>
                    @endforeach
                </select>
            </div>

            <div class="mb-2 text-start mt-2" style="margin-top: 12px;">
                <label class="form-label">Jabatan</label>
                  <select id="jabatan" class="form-control">
                    <option value="">-- Pilih Jabatan --</option>
                    <option value="Ketua">Ketua</option>
                    <option value="Wakil Ketua">Wakil Ketua</option>
                    <option value="Sekretaris">Sekretaris</option>
                    <option value="Koordinator">Koordinator</option>
                    <option value="Bendahara">Bendahara</option>
                    <option value="Anggota">Anggota</option>
                </select>
            </div>
        `,
                    showCancelButton: true,
                    confirmButtonText: 'Simpan',
                    cancelButtonText: 'Batal',
                    focusConfirm: false,
                    didOpen: () => {
                        $('#guru_id').select2({
                            theme: 'bootstrap-5',
                            dropdownParent: $('.swal2-popup'),
                            placeholder: 'Pilih Guru',
                            allowClear: true
                        });
                    },
                    preConfirm: () => {
                        const guru_id = $('#guru_id').val();
                        const jabatan = $('#jabatan').val();

                        if (!guru_id || !jabatan) {
                            Swal.showValidationMessage('Guru dan jabatan wajib diisi');
                            return false;
                        }

                        return {
                            guru_id: guru_id,
                            jabatan: jabatan
                        };
                    }
                }).then((result) => {
                    if (result.isConfirmed) {
                        simpanPanitiaPKL(result.value);
                    }
                });
            });
        </script>

        <script>
function simpanPanitiaPKL(data) {
    $.ajax({
        url: "{{ route('admin.panitia-pkl.store') }}",
        type: "POST",
        data: {
            _token: "{{ csrf_token() }}",
            guru_id: data.guru_id,
            jabatan: data.jabatan
        },
        beforeSend: () => {
            Swal.fire({
                title: 'Menyimpan...',
                allowOutsideClick: false,
                didOpen: () => Swal.showLoading()
            });
        },
        success: () => {
            Swal.fire({
                icon: 'success',
                title: 'Berhasil',
                text: 'Panitia PKL berhasil ditambahkan'
            }).then(() => location.reload());
        },
        error: (xhr) => {
            Swal.fire(
                'Error',
                xhr.responseJSON?.message ?? 'Gagal menyimpan data',
                'error'
            );
        }
    });
}
</script>
<script>
$(document).on('click', '.btn-edit', function () {

    let id       = $(this).data('id');
    let guru_id  = $(this).data('guru_id');
    let jabatan  = $(this).data('jabatan');
    let status   = $(this).data('status');

    Swal.fire({
        title: 'Edit Panitia PKL',
        html: `
            <select id="guru_id" class="form-control mb-2">
                <option value="">-- Pilih Guru --</option>
                @foreach($guru as $g)
                    <option value="{{ $g->id }}">{{ $g->nama }}</option>
                @endforeach
            </select>

            <select id="jabatan" class="form-control mb-2">
                <option value="Ketua">Ketua</option>
                <option value="Wakil Ketua">Wakil Ketua</option>
                <option value="Sekretaris">Sekretaris</option>
                <option value="Koordinator">Koordinator</option>
                <option value="Bendahara">Bendahara</option>
                <option value="Anggota">Anggota</option>
            </select>

            <select id="status" class="form-control">
                <option value="aktif">Aktif</option>
                <option value="nonaktif">Non Aktif</option>
            </select>
        `,
        showCancelButton: true,
        confirmButtonText: 'Update',
         cancelButtonText: 'Batal',
        didOpen: () => {
            $('#guru_id').val(guru_id).trigger('change');
            $('#jabatan').val(jabatan);
            $('#status').val(status);

            $('#guru_id').select2({
                dropdownParent: $('.swal2-container'),
                width: '100%'
            });
        },
        preConfirm: () => {
            return {
                guru_id: $('#guru_id').val(),
                jabatan: $('#jabatan').val(),
                status: $('#status').val(),
            }
        }
    }).then((result) => {

        if (result.isConfirmed) {
            $.ajax({
                url: "{{ url('admin/panitia-pkl') }}/" + id,
                type: 'PUT',
                data: {
                    _token: '{{ csrf_token() }}',
                    ...result.value
                },
                success: function () {
                    Swal.fire('Berhasil', 'Data berhasil diperbarui', 'success')
                        .then(() => location.reload());
                },
               error: function(xhr) {
    let msg = 'Terjadi kesalahan';

    if (xhr.status === 422 && xhr.responseJSON?.message) {
        msg = xhr.responseJSON.message;
    }

    Swal.fire({
        icon: 'error',
        title: 'Gagal',
        text: msg
    });
}

            });
        }

    });

});
</script>




        <script>
            $(document).on('click', '.btn-delete', function(e) {
                e.preventDefault();

                const url = $(this).data('url');
                const row = $(this).closest('tr');
                console.log(url);

                Swal.fire({
                    title: 'Yakin ingin menghapus?',
                    text: 'Data siswa yang dihapus tidak dapat dikembalikan!',
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#d33',
                    cancelButtonColor: '#3085d6',
                    confirmButtonText: 'Ya, hapus!',
                    cancelButtonText: 'Batal'
                }).then((result) => {
                    if (result.isConfirmed) {
                        $.ajax({
                            url: url,
                            type: 'DELETE',
                            headers: {
                                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                            },
                            success: function(res) {
                                Swal.fire({
                                    title: 'Berhasil!',
                                    text: res.message ?? 'Data siswa berhasil dihapus',
                                    icon: 'success',
                                    confirmButtonText: 'OK'
                                }).then(() => {
                                    location.reload();
                                });


                                // 🔥 hapus row tabel
                                row.fadeOut(300, function() {
                                    $(this).remove();
                                });
                            },
                            error: function(xhr) {
                                Swal.fire(
                                    'Gagal!',
                                    xhr.responseJSON?.message ?? 'Terjadi kesalahan',
                                    'error'
                                );
                            }
                        });
                    }
                });
            });
        </script>

        <script>
            $(document).on('click', '.btn-delete', function() {
                let id = $(this).data('id');

                Swal.fire({
                    title: 'Hapus Pantia PKL?',
                    text: 'Data Panitia PKL akan dihapus permanen',
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonText: 'Ya, hapus',
                    cancelButtonText: 'Batal'
                }).then((result) => {
                    if (result.isConfirmed) {
                        $.ajax({
                            url: `/admin/panitia-pkl/${id}`,
                            type: 'DELETE',
                            data: {
                                _token: '{{ csrf_token() }}'
                            },
                            beforeSend: () => {
                                Swal.fire({
                                    title: 'Menghapus...',
                                    allowOutsideClick: false,
                                    didOpen: () => Swal.showLoading()
                                });
                            },
                            success: function(res) {
                                Swal.fire({
                                    icon: 'success',
                                    title: 'Berhasil',
                                    text: res.message
                                }).then(() => location.reload());
                            },
                            error: function(xhr) {
                                console.log(xhr);
                                let msg = 'Gagal menghapus Panitia PKL';

                                if (xhr.responseJSON && xhr.responseJSON.error) {
                                    msg = xhr.responseJSON.error;
                                }

                                Swal.fire('Error', msg, 'error');
                            }
                        });
                    }
                });
            });
        </script>
    @endpush
@endsection
