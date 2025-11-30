<!-- Modal Delete -->
<div class="modal fade" id="modalDeleteTP{{ $tp->id }}" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">

            <div class="modal-header bg-danger text-white">
                <h5 class="modal-title">Hapus Tahun Pelajaran</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
            </div>

            <form action="{{ route('admin.tahun-pelajaran.destroy', $tp->id) }}" method="POST">
                @csrf
                @method('DELETE')

                <div class="modal-body">

                    <p>Apakah Anda yakin ingin menghapus tahun pelajaran berikut?</p>

                    <div class="border rounded p-2 bg-light">
                        <strong>{{ $tp->nama }}</strong><br>
                        <small>Status: {{ $tp->is_active ? 'Aktif' : 'Tidak Aktif' }}</small>
                    </div>

                    <p class="text-danger mt-3"><strong>Aksi ini tidak dapat dibatalkan.</strong></p>

                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Batal</button>
                    <button type="submit" class="btn btn-danger">Hapus</button>
                </div>

            </form>

        </div>
    </div>
</div>
