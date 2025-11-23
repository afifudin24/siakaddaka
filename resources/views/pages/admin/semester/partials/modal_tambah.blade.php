<!-- Modal Tambah Tahun Pelajaran -->
<div class="modal fade" id="tambahTahunPelajaran" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content radius-16 bg-base">

            <div class="modal-header border-0">
                <h5 class="modal-title">Tambah Tahun Pelajaran</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
            </div>

            <form action="{{ route('admin.tahun-pelajaran.store') }}" method="POST">
                @csrf
                <div class="modal-body">

                    {{-- Input Tahun Pelajaran --}}
                    <div class="mb-3">
                        <label class="form-label">Tahun Pelajaran</label>
                        <input type="text" name="nama" class="form-control" placeholder="2024/2025" required>
                    </div>

                    {{-- Status --}}
                    <div class="mb-3">
                        <label class="form-label d-block">Status</label>
                        <select name="status" class="form-select" required>
                            <option value="1">Aktif</option>
                            <option value="0">Tidak Aktif</option>
                        </select>
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
