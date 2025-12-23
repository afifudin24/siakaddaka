@extends('layouts.app')

@section('content')
    <div class="dashboard-main-body">

        <div class="d-flex justify-content-between align-items-center mb-3">
            <h5>Detail Tagihan</h5>
            <a href="{{ route('staff.tagihan.tampilkantagihan', $tagihan->siswa->id) }}" class="btn btn-danger btn-sm d-flex align-items-center gap-2">
                <iconify-icon icon="lucide:arrow-left" class="text-xl"></iconify-icon> Kembali
            </a>
        </div>
        <div class="card basic-data-table">
            <div class="card-header d-flex justify-content-between align-items-center">
                <h5 class="card-title mb-0">Detail Tagihan</h5>
                <div>
                    <button type="button" class="btn btn-sm btn-success d-flex align-items-center gap-2 btn-bayar"
                        data-id="{{ $tagihan->id }}">
                        <iconify-icon icon="lucide:plus" width="18"></iconify-icon>
                        Bayar
                    </button>
                </div>

            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-md-6">
                        {{-- Disini Detail Tagihan --}}
                        <div class="card my-3 mx-2 shadow-sm border-0">
                            <div class="card-body">

                                <h4 class="card-title fw-semibold text-info">
                                    <iconify-icon icon="mdi:clipboard-text-outline" class="fs-2"></iconify-icon>

                                </h4>

                                <div class="row g-3">
                                    <!-- Kiri -->
                                    <div class="col-md-6">
                                        <div class="d-flex justify-content-between">
                                            <span class="text-muted">Nama Siswa</span>
                                            <span class="fw-semibold">{{ $tagihan->siswa->nama }}</span>
                                        </div>

                                        <div class="d-flex justify-content-between mt-2">
                                            <span class="text-muted">Kelas</span>
                                            <span class="fw-semibold">
                                                {{ $tagihan->siswa->kelas->nama_kelas ?? '-' }}
                                            </span>
                                        </div>

                                        <div class="d-flex justify-content-between mt-2">
                                            <span class="text-muted">Jenis Tagihan</span>
                                            <span class="fw-semibold">{{ $tagihan->nama_tagihan }}</span>
                                        </div>
                                    </div>

                                    <!-- Kanan -->
                                    <div class="col-md-6">
                                        <div class="d-flex justify-content-between">
                                            <span class="text-muted">Status</span>
                                            <span
                                                class="badge 
                        {{ $tagihan->status == 'lunas' ? 'bg-success' : 'bg-warning text-dark' }}">
                                                {{ ucfirst($tagihan->status) }}
                                            </span>
                                        </div>

                                        <div class="d-flex justify-content-between mt-2">
                                            <span class="text-muted">Tanggal Tagihan</span>
                                            <span class="fw-semibold">
                                                {{ \Carbon\Carbon::parse($tagihan->tgl_tagihan)->translatedFormat('d F Y') }}
                                            </span>
                                        </div>

                                        <div class="d-flex justify-content-between mt-2">
                                            <span class="text-muted">Nominal</span>
                                            <span class="fw-bold text-primary">
                                                {{ rupiah($tagihan->jumlah) }}
                                            </span>
                                        </div>
                                    </div>
                                </div>

                                <hr>

                                <!-- Sisa Tagihan -->
                                <div class="d-flex justify-content-between align-items-center">
                                    <span class="fw-semibold">Sisa Tagihan</span>
                                    <span class="fs-5 fw-bold text-danger">
                                        {{ rupiah($tagihan->sisaTagihan()) }}
                                    </span>
                                </div>
                                <div class="d-flex gap-2 mt-3">

                                    <a href="{{ route('staff.tagihan.cetak', $tagihan->id) }}" target="_blank"
                                        class="btn btn-sm btn-danger d-flex gap-2 align-items-center">
                                        <iconify-icon icon="mdi:printer" width="18"></iconify-icon>
                                        Cetak Tagihan
                                    </a>

                                    <a href="{{ route('staff.pembayaran.cetakRiwayatPembayaranByTagihan', $tagihan->id) }}"
                                        target="_blank" class="btn btn-sm btn-success d-flex gap-2 align-items-center">
                                        <iconify-icon icon="mdi:cash-multiple" width="18"></iconify-icon>
                                        Cetak Riwayat Pembayaran
                                    </a>

                                </div>

                            </div>
                        </div>

                    </div>
                    <div class="col-md-6">
                        {{-- Disini Riwayat Pembayaran --}}
                        <div class="badge d-flex gap-2 align-items-center  bg-info-subtle p-3 text-secondary">
                            <h5 class="d-flex text-muted gap-2 align-items-center justify-content-center fw-semibold fs-6">
                                <iconify-icon icon="mdi:history" class=""></iconify-icon>
                                Riwayat Pembayaran
                            </h5>
                        </div>

                        @if ($tagihan->pembayaran->count() > 0)
                            <div class="list-group list-group-flush">
                                @foreach ($tagihan->pembayaran as $index => $p)
                                    <div class="list-group-item border-0 px-0">
                                        <div class="card shadow-sm border-0">
                                            <div class="card-body">

                                                <div class="d-flex justify-content-between align-items-center mb-2">
                                                    <span class="badge bg-success">
                                                        Pembayaran #{{ $index + 1 }}
                                                    </span>
                                                    <small class="text-muted">
                                                        {{ \Carbon\Carbon::parse($p->tgl_bayar)->translatedFormat('d F Y') }}
                                                    </small>
                                                </div>

                                                <h6 class="fw-bold text-success my-1">
                                                    {{ rupiah($p->jumlah_bayar) }}
                                                </h6>

                                                @if ($p->keterangan)
                                                    <p class="mb-1 text-muted">
                                                        {{ $p->keterangan }}
                                                    </p>
                                                @endif

                                                <div class="d-flex justify-content-between mt-3">
                                                    <small class="text-muted">
                                                        Semester: {{ $p->semester->nama ?? '-' }}
                                                    </small>
                                                    <small class="text-muted">
                                                        {{ $p->tahunPelajaran->nama ?? '-' }}
                                                    </small>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                @endforeach
                            </div>
                        @else
                            <div class="card my-3 shadow-sm border-0">
                                <div class="card-body text-center">
                                    <iconify-icon icon="mdi:alert-circle-outline" width="40"
                                        class="text-danger d-inline-block mb-2"></iconify-icon>
                                    <h5 class="fw-semibold text-danger mb-1">Belum ada pembayaran</h5>
                                    <p class="text-muted mb-0">Pembayaran untuk tagihan ini belum dilakukan</p>
                                </div>
                            </div>
                        @endif

                    </div>
                </div>
            </div>
        </div>



    </div>


    @push('scripts')
        <script>
            $(document).on('click', '.btn-bayar', function() {
                let tagihanId = $(this).data('id');

                Swal.fire({
                    title: 'Pembayaran Tagihan',
                    html: `
            <div class="text-start">

                <div class="mb-3">
                    <label class="form-label fw-semibold">Jumlah Bayar</label>
                    <input 
                        type="number" 
                        id="jumlah_bayar" 
                        class="form-control form-control-lg"
                        placeholder="Masukkan jumlah pembayaran">
                </div>

                <div class="mb-2">
                    <label class="form-label fw-semibold">Keterangan</label>
                    <textarea 
                        id="keterangan" 
                        class="form-control"
                        rows="3"
                        placeholder="Contoh: Pembayaran tahap 1 (opsional)"></textarea>
                </div>

            </div>
        `,
                    showCancelButton: true,
                    confirmButtonText: 'Simpan Pembayaran',
                    cancelButtonText: 'Batal',
                    confirmButtonColor: '#198754',
                    focusConfirm: false,
                    preConfirm: () => {
                        const jumlah = document.getElementById('jumlah_bayar').value;

                        if (!jumlah || jumlah <= 0) {
                            Swal.showValidationMessage('Jumlah bayar wajib diisi dan lebih dari 0');
                            return false;
                        }

                        return {
                            tagihan_id: tagihanId,
                            jumlah_bayar: jumlah,
                            keterangan: document.getElementById('keterangan').value
                        };
                    }
                }).then((result) => {
                    if (result.isConfirmed) {

                        Swal.fire({
                            title: 'Menyimpan Pembayaran...',
                            allowOutsideClick: false,
                            didOpen: () => Swal.showLoading()
                        });

                        $.ajax({
                            url: "{{ route('staff.pembayaran.store') }}",
                            type: "POST",
                            data: {
                                ...result.value,
                                _token: "{{ csrf_token() }}"
                            },
                            success: function(res) {
                                Swal.fire({
                                    icon: 'success',
                                    title: 'Berhasil',
                                    text: res.message
                                }).then(() => location.reload());
                            },
                            error: function(xhr) {
                                Swal.fire({
                                    icon: 'error',
                                    title: 'Gagal',
                                    text: xhr.responseJSON?.message ?? 'Terjadi kesalahan'
                                });
                            }
                        });

                    }
                });
            });
        </script>
    @endpush
@endsection
