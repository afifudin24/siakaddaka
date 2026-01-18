@extends('layouts.app')

@section('content')
    <div class="dashboard-main-body">

        <div class="d-flex flex-wrap align-items-center justify-content-between gap-3 mb-24">
            <h6 class="fw-semibold mb-0">Tambah Pembimbing PKL</h6>

        </div>

        <div class="card basic-data-table">
            <div class="card-header d-flex justify-content-between align-items-center">
                <h5 class="card-title mb-0">Tambah Pembimbing PKL</h5>
                <div>
                    <div class="d-flex gap-2">
                        <button id="btnMassal"
                            class="btn btn-success text-sm btn-sm p-1 radius-4 d-flex align-items-center gap-2">
                            <iconify-icon icon="mdi:user-multiple-add" class="text-xl"></iconify-icon>
                            <span class="d-none d-md-inline">Tambah Massal</span>
                        </button>


                    </div>

                </div>

            </div>
            <div class="card-body">



                <div class="">


                    <table id="dataTableGuru" class="table basic-border-table" style="width:100%">
                        <thead>
                            <tr>
                                <th style="width : 10px !important; padding: 0.9rem 10px; text-align: center">
                                    <!-- Checkbox untuk select all -->
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" id="selectAll">
                                    </div>
                                </th>

                                <th scope="col" style="width : 10px !important; padding: 0.9rem 10px; text-align: right">

                                    NO

                                </th>
                                <th scope="col" style="padding: 0.9rem 7px; " class="">NAMA
                                </th>


                             
                                <!-- Walikelas (hilang di mobile) -->
                                <th scope="col"  class="">AKSI</th>

                            </tr>
                        </thead>

                        <tbody>
                            @if ($guru->count() > 0)
                                @foreach ($guru as $s)
                                    <tr>

                                            <td style="width : 10px !important; padding: 0.9rem 10px; text-align: center">
                                        <div class="form-check">
                                            <input class="form-check-input select-item" type="checkbox"
                                                value="{{ $s->id }}">
                                        </div>
                                            </td>
                                            <td>{{ $loop->iteration }}</td>
                                      
                                        <td class="">
                                            {{ $s->nama ?? '-' }}
                                        </td>

                                


                                        {{-- Aksi --}}
                                        <td class="d-flex h-100 gap-1 align-items-center justify-content-center">
                                            <button
                                                class="btn btn-sm btn-info text-white btn-edit"
                                                data-id="{{ $s->id }}"
                                              >
                                                <iconify-icon icon="flowbite:user-add-solid" class="text-lg"></iconify-icon>
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
             
            </div>
        </div>
    </div>

    @push('scripts')
    <script>
   let tableoke =  $('#dataTableGuru').DataTable({
          responsive: true,
    autoWidth: false,
      "pageLength": 25,
    sorting: false,
    ordering: false,
    // scrollX: true,
    language: {
        "emptyTable": "Tidak ada data",
        "info": "Menampilkan _START_ sampai _END_ dari _TOTAL_ data",
        "infoEmpty": "Menampilkan 0 sampai 0 dari 0 data",
        "lengthMenu": "Tampilkan _MENU_ data",
        "loadingRecords": "Memuat...",
        "processing": "Memproses...",
        "search": "Cari:",
        "zeroRecords": "Tidak ditemukan data yang cocok",
       
    }
    
});
/* PENTING */
tableoke.on('draw', function () {
    if (window.Iconify) {
        Iconify.scan();
    }
});
</script>

<script>
$('#btnMassal').on('click', function () {
    let guruIds = [];

    $('.select-item:checked').each(function () {
        guruIds.push($(this).val());
    });

    if (guruIds.length === 0) {
        Swal.fire({
            icon: 'warning',
            title: 'Peringatan',
            text: 'Minimal pilih 1 guru'
        });
        return;
    }

    Swal.fire({
        title: 'Tambah Pembimbing PKL?',
        text: 'Data yang dipilih akan dijadikan pembimbing PKL',
        icon: 'question',
        showCancelButton: true,
        confirmButtonText: 'Ya, Tambahkan'
    }).then((result) => {
        if (result.isConfirmed) {
            $.ajax({
                url: "{{ route('admin.pembimbing-pkl.store-massal') }}",
                type: 'POST',
                data: {
                    _token: "{{ csrf_token() }}",
                    guru_ids: guruIds
                },
                success: function (res) {
                    Swal.fire('Berhasil', res.message, 'success')
                        .then(() => location.reload());
                },
                error: function (xhr) {
                    Swal.fire('Gagal', xhr.responseJSON.message, 'error');
                }
            });
        }
    });
});
</script>
<script>
$('.btn-edit').on('click', function () {
    let guruId = $(this).data('id');

    Swal.fire({
        title: 'Tambah Pembimbing PKL?',
        icon: 'question',
        showCancelButton: true,
        confirmButtonText: 'Ya'
    }).then((result) => {
        if (result.isConfirmed) {
            $.ajax({
                url: "{{ route('admin.pembimbing-pkl.store-single') }}",
                type: 'POST',
                data: {
                    _token: "{{ csrf_token() }}",
                    guru_id: guruId
                },
                success: function (res) {
                    Swal.fire('Berhasil', res.message, 'success')
                        .then(() => location.reload());
                },
                error: function (xhr) {
                    Swal.fire(
                        'Gagal',
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
$('#selectAll').on('change', function () {
    $('.select-item').prop('checked', $(this).is(':checked'));
});
</script>

      
    @endpush
@endsection
