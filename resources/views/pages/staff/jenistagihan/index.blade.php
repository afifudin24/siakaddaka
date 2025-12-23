@extends('layouts.app')

@section('content')

  <div class="dashboard-main-body">

    <div class="d-flex flex-wrap align-items-center justify-content-between gap-3 mb-24">
  <h6 class="fw-semibold mb-0">Jenis Tagihan</h6>
  <ul class="d-flex align-items-center gap-2">
    <li class="fw-medium">
      <a href="index.html" class="d-flex align-items-center gap-1 hover-text-primary">
        <iconify-icon icon="solar:home-smile-angle-outline" class="icon text-lg"></iconify-icon>
        Dashboard
      </a>
    </li>
    <li>-</li>
    <li class="fw-medium">Jenis Tagihan</li>
  </ul>
</div>
    <div class="row">
    <div class="col-md-12">
 
    <div class="card basic-data-table">
      <div class="card-header d-flex justify-content-between align-items-center">
            <h5 class="card-title mb-0">Data Jenis Tagihan</h5>
        <div>
<button id="btnTambahJenisTagihan"
    type="button"
    class="btn btn-sm btn-primary d-flex align-items-center gap-2">
    <iconify-icon icon="lucide:plus" class="text-xl"></iconify-icon>
    Tambah
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
         
     <div class="d-flex justify-content-between mb-3">

    <!-- Checkbox Select All -->
    <!-- <div class="form-check style-check d-flex align-items-center">
        <input class="form-check-input" type="checkbox" id="checkAll">
        <label class="form-check-label ms-2">Pilih Semua</label>
    </div> -->

    <!-- Dropdown Aksi Massal -->
    <!-- <div>
        <div class="dropdown">
            <button class="btn btn-sm btn-success dropdown-toggle" type="button" data-bs-toggle="dropdown">
                Aksi
            </button>
            <ul class="dropdown-menu">
                <li>
                    <a class="dropdown-item text-danger" href="javascript:void(0)" id="deleteSelectedBtn">
                        Hapus Terpilih
                    </a>
                </li>
            </ul>
        </div>
    </div> -->

</div>


<div class="table-responsive">
    <table class="table bordered-table mb-0" data-page-length='10'>
  
    <thead>
        <tr>
            <th scope="col">
                <div class="d-flex align-items-center">
                    <!-- <input class="form-check-input " type="checkbox" id="checkAll2"> -->
                    <label class="ms-2">NO</label>
                </div>
            </th>
            <th scope="col">Jenis Tagihan</th>
            <th scope="col">Deskripsi</th>
            <th scope="col">Status</th>
            <th scope="col">Aksi</th>
        </tr>
    </thead>

   <tbody>
   @if(count($jenistagihan) > 0)
    @foreach($jenistagihan as $jt)
    <tr>
        <td>
           
            <span class="ms-2">{{ $loop->iteration }}</span>
        </td>

        <td>{{ $jt->nama_jenis }}</td>
        <td>{{ $jt->deskripsi }}</td>
       <td class="">
    <a href="javascript:void(0)"
       class="btn-toggle-status"
       data-id="{{ $jt->id }}"
       data-status="{{ $jt->is_active }}">
       
        @if ($jt->is_active)
            <iconify-icon
                icon="lucide:check-circle"
                class="text-success fs-4"></iconify-icon>
        @else
            <iconify-icon
                icon="lucide:x-circle"
                class="text-danger fs-4"></iconify-icon>
        @endif
    </a>
</td>


        <td>
            {{-- tombol edit --}}
           <a href="javascript:void(0)"
   class="btn-edit-jenis-tagihan w-32-px h-32-px bg-success-focus text-success-main rounded-circle d-inline-flex align-items-center justify-content-center"
   data-id="{{ $jt->id }}"
   data-nama="{{ $jt->nama_jenis }}"
   data-deskripsi="{{ $jt->deskripsi }}">
    <iconify-icon icon="lucide:edit"></iconify-icon>
</a>

            {{-- tombol delete --}}
         <a href="javascript:void(0)"
   class="btn-delete-jenis-tagihan w-32-px h-32-px bg-danger-focus text-danger-main rounded-circle d-inline-flex align-items-center justify-content-center"
   data-id="{{ $jt->id }}"
   data-nama="{{ $jt->nama_jenis }}">
    <iconify-icon icon="mingcute:delete-2-line"></iconify-icon>
</a>
        </td>
    </tr>

    @endforeach

    @else
    <td colspan="5" class="text-center">
    Belum Ada Data
    </td>
    @endif

   
</tbody>
</table>
  </div>


      </div>
    </div>
</div>

       </div>
  </div>


  @push('scripts')
    <script>
    
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
$('#btnTambahJenisTagihan').on('click', function () {
    Swal.fire({
        title: 'Tambah Jenis Tagihan',
        html: `
            <div class="text-start">
                <div class="mb-2">
                    <label class="form-label">Nama Jenis Tagihan</label>
                    <input id="nama_jenis" class="form-control" placeholder="Contoh: SPP">
                </div>
                <div class="mb-2">
                    <label class="form-label">Deskripsi</label>
                    <textarea id="deskripsi" class="form-control" placeholder="Opsional"></textarea>
                </div>
            </div>
        `,
        showCancelButton: true,
        confirmButtonText: 'Simpan',
        cancelButtonText: 'Batal',
        focusConfirm: false,

        // 🔥 penting: jangan auto close
        allowOutsideClick: () => !Swal.isLoading(),

        preConfirm: () => {
            const namaJenis = document.getElementById('nama_jenis').value.trim();

            if (!namaJenis) {
                Swal.showValidationMessage('Nama jenis tagihan wajib diisi');
                return false;
            }

            // ⏳ tampilkan loading
            Swal.showLoading();

            // 🔥 return promise agar swal menunggu ajax
            return $.ajax({
                url: "{{ route('staff.jenistagihan.store') }}",
                method: "POST",
                data: {
                    nama_jenis: namaJenis,
                    deskripsi: document.getElementById('deskripsi').value,
                    _token: "{{ csrf_token() }}"
                }
            }).then(res => {
                return res;
            }).catch(xhr => {
                let res = xhr.responseJSON;
                let errorText = '';

                if (res?.errors) {
                    Object.values(res.errors).forEach(err => {
                        errorText += err[0] + '<br>';
                    });
                } else {
                    errorText = res?.message ?? 'Terjadi kesalahan';
                }

                Swal.showValidationMessage(errorText);
            });
        }
    }).then((result) => {
        if (result.isConfirmed) {
            Swal.fire({
                icon: 'success',
                title: 'Berhasil',
                text: result.value.message,
                timer: 1200,
                showConfirmButton: false
            }).then(() => {
                location.reload();
            });
        }
    });
});
</script>

<script>
$('.btn-edit-jenis-tagihan').on('click', function () {

    const id = $(this).data('id');
    const nama = $(this).data('nama');
    const deskripsi = $(this).data('deskripsi');

    Swal.fire({
        title: 'Edit Jenis Tagihan',
        html: `
            <div class="text-start">
                <div class="mb-2">
                    <label class="form-label">Nama Jenis Tagihan</label>
                    <input id="nama_jenis" class="form-control" value="${nama}">
                </div>
                <div class="mb-2">
                    <label class="form-label">Deskripsi</label>
                    <textarea id="deskripsi" class="form-control">${deskripsi ?? ''}</textarea>
                </div>
            </div>
        `,
        showCancelButton: true,
        confirmButtonText: 'Update',
        cancelButtonText: 'Batal',
        focusConfirm: false,
        allowOutsideClick: () => !Swal.isLoading(),

        preConfirm: () => {
            const namaJenis = document.getElementById('nama_jenis').value.trim();

            if (!namaJenis) {
                Swal.showValidationMessage('Nama jenis tagihan wajib diisi');
                return false;
            }

            Swal.showLoading();

            return $.ajax({
                url: "{{ route('staff.jenistagihan.update', ':id') }}".replace(':id', id),
                method: "PUT",
                data: {
                    nama_jenis: namaJenis,
                    deskripsi: document.getElementById('deskripsi').value,
                    _token: "{{ csrf_token() }}"
                }
            }).then(res => {
                return res;
            }).catch(xhr => {
                let res = xhr.responseJSON;
                let errorText = '';

                if (res?.errors) {
                    Object.values(res.errors).forEach(err => {
                        errorText += err[0] + '<br>';
                    });
                } else {
                    errorText = res?.message ?? 'Terjadi kesalahan';
                }

                Swal.showValidationMessage(errorText);
            });
        }
    }).then((result) => {
        if (result.isConfirmed) {
            Swal.fire({
                icon: 'success',
                title: 'Berhasil',
                text: result.value.message,
                timer: 1200,
                showConfirmButton: false
            }).then(() => {
                location.reload();
            });
        }
    });
});
</script>




<script>
$('.btn-toggle-status').on('click', function () {

    const el = $(this);
    const id = el.data('id');
    const status = el.data('status') == 1;

    Swal.fire({
        title: status ? 'Nonaktifkan?' : 'Aktifkan?',
        text: status 
            ? 'Jenis tagihan akan dinonaktifkan'
            : 'Jenis tagihan akan diaktifkan',
        icon: 'warning',
        showCancelButton: true,
        confirmButtonText: status ? 'Ya, Nonaktifkan' : 'Ya, Aktifkan',
        cancelButtonText: 'Batal'
    }).then((result) => {
        if (result.isConfirmed) {

            Swal.fire({
                title: 'Memproses...',
                allowOutsideClick: false,
                didOpen: () => {
                    Swal.showLoading();
                }
            });

            $.ajax({
                url: "{{ route('staff.jenistagihan.toggle', ':id') }}".replace(':id', id),
                method: "PATCH",
                data: {
                    _token: "{{ csrf_token() }}"
                },
                success: function (res) {

                    // update icon
                    el.data('status', res.data.is_active ? 1 : 0);

                    el.html(
                        res.data.is_active
                        ? `<iconify-icon icon="lucide:check-circle" class="text-success fs-4"></iconify-icon>`
                        : `<iconify-icon icon="lucide:x-circle" class="text-danger fs-4"></iconify-icon>`
                    );

                    Swal.fire({
                        icon: 'success',
                        title: 'Berhasil',
                        text: res.message,
                        timer: 1200,
                        showConfirmButton: false
                    });
                },
                error: function () {
                    Swal.fire({
                        icon: 'error',
                        title: 'Gagal',
                        text: 'Terjadi kesalahan'
                    });
                }
            });
        }
    });
});
</script>

<script>
$('.btn-delete-jenis-tagihan').on('click', function () {

    const id = $(this).data('id');
    const nama = $(this).data('nama');
    const row = $(this).closest('tr'); // untuk hapus baris tanpa reload

    Swal.fire({
        title: 'Hapus Jenis Tagihan?',
        html: `Jenis tagihan <b>${nama}</b> akan dihapus permanen`,
        icon: 'warning',
        showCancelButton: true,
        confirmButtonText: 'Ya, Hapus',
        cancelButtonText: 'Batal',
        confirmButtonColor: '#dc3545'
    }).then((result) => {
        if (result.isConfirmed) {

            Swal.fire({
                title: 'Menghapus...',
                allowOutsideClick: false,
                didOpen: () => {
                    Swal.showLoading();
                }
            });

            $.ajax({
                url: "{{ route('staff.jenistagihan.destroy', ':id') }}".replace(':id', id),
                method: "DELETE",
                data: {
                    _token: "{{ csrf_token() }}"
                },
                success: function (res) {

                    // hapus row tanpa reload
                    row.fadeOut(300, function () {
                        $(this).remove();
                    });

                    Swal.fire({
                        icon: 'success',
                        title: 'Berhasil',
                        text: res.message,
                        timer: 1200,
                        showConfirmButton: false
                    });
                },
                error: function (xhr) {
                    let res = xhr.responseJSON;

                    Swal.fire({
                        icon: 'error',
                        title: 'Gagal',
                        text: res?.message ?? 'Data gagal dihapus'
                    });
                }
            });
        }
    });
});
</script>


  @endpush
@endsection