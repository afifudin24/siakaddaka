<!-- Modal Edit -->
<div class="modal fade" id="modalEditTP{{ $tp->id }}" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
 <div class="card-header d-flex justify-content-between align-items-center">
                        <h5 class="card-title mb-0">Edit Tahun Pelajaran</h5>
                        <div>
                            <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                        </div>
                    </div>

            <form action="/admin/tahun-pelajaran/{{ $tp->id }}" method="POST">
                @csrf
                @method('PUT')

                <div class="modal-body">

                    <div class="mb-3">
                        <label class="form-label">Tahun Pelajaran</label>
                        <input type="text" name="nama" class="form-control" value="{{ $tp->nama }}" required>
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Status</label>
                        <select name="is_active" class="form-select" required>
                            <option value="1" {{ $tp->is_active ? 'selected' : '' }}>Aktif</option>
                            <option value="0" {{ !$tp->is_active ? 'selected' : '' }}>Tidak Aktif</option>
                        </select>
                    </div>

                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Tutup</button>
                    <button type="submit" class="btn btn-primary">Simpan Perubahan</button>
                </div>
            </form>

        </div>
    </div>
</div>
