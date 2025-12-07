<!-- Modal Delete -->
<div class="modal fade" id="modalDeleteJ{{ $j->id }}" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">

            <div class="modal-header bg-danger text-white">
                <h5 class="modal-title text-white">Hapus Jurusan</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
            </div>

            <form action="{{ route('admin.jurusan.destroy', $j->id) }}" method="POST">
                @csrf
                @method('DELETE')

                <div class="modal-body">

                    <p>Apakah Anda yakin ingin menghapus jurusan berikut?</p>

                    <div class="border rounded p-2 bg-light">
                        <strong>{{ $j->kode_jurusan }}</strong><br>
                        <strong>{{ $j->nama_jurusan }}</strong><br>
                     
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
