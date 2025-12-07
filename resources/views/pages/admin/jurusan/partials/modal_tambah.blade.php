<!-- Modal Tambah Tahun Pelajaran -->
<div class="modal fade" id="tambahJurusan" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content radius-16 bg-base">
            <div class="modal-header border-0">
                <h5 class="modal-title">Tambah Jurusan</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
            </div>


            <form action="{{ route('admin.jurusan.store') }}" method="POST">
                @csrf
                <div class="modal-body">

                    {{-- Kode Jurusan --}}
                    <div class="mb-3">
                        <label class="form-label d-block">Kode Jurusan</label>
                        <input type="text" name="kode_jurusan" class="form-control" required> 
                    </div>

                     {{-- Nama Jurusan --}}
                    <div class="mb-3">
                        <label class="form-label d-block">Nama Jurusan</label>
                        <input type="text" name="nama_jurusan" class="form-control" required>
                    </div>


                </div>

                <div class="modal-footer border-0">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Batal</button>
                    <button type="submit" class="btn btn-primary">Simpan</button>
                </div>

            </form>

        </div>
    </div>
</div>
