<div class="modal fade" id="modalEdit{{ $tp->id }}" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content radius-12">

            <div class="modal-header">
                <h5 class="modal-title">Edit Tahun Pelajaran</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
            </div>

            <form action="{{ route('tahunpelajaran.update', $tp->id) }}" method="POST">
                @csrf
                @method('PUT')

                <div class="modal-body">

                    <div class="mb-3">
                        <label class="form-label">Nama Tahun Pelajaran</label>
                        <input type="text" 
                            name="nama"
                            class="form-control"
                            value="{{ $tp->nama }}"
                            required>
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Status</label>
                        <select name="status" class="form-control" required>
                            <option value="1" {{ $tp->status == 1 ? 'selected' : '' }}>Aktif</option>
                            <option value="0" {{ $tp->status == 0 ? 'selected' : '' }}>Tidak Aktif</option>
                        </select>
                    </div>

                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-light" data-bs-dismiss="modal">Batal</button>
                    <button class="btn btn-primary">Simpan Perubahan</button>
                </div>
            </form>

        </div>
    </div>
</div>
