<!-- Modal Tambah Tahun Pelajaran -->
<div class="modal fade" id="tambahKategoriMapel" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content radius-16 bg-base">
            <div class="card-header d-flex justify-content-between align-items-center">
                        <h5 class="card-title mb-0">Tambah Kategori Mata Pelajaran</h5>
                        <div>
                            <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                        </div>
                    </div>
            <form action="{{ route('admin.kategori-mapel.store') }}" method="POST">
                @csrf
                <div class="modal-body">
                    {{-- Status --}}
                    <div class="mb-3">
                        <label class="form-label d-block">Nama Kategori Mapel</label>
                        <input type="text" class="form-control" placeholder="Nama Kategori Mapel" name="nama_kategori_mapel" required>
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
