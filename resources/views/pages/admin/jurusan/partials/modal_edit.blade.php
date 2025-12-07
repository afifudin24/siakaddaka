<!-- Modal Edit -->
<div class="modal fade" id="modalEditJ{{ $j->id }}" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">

            <div class="modal-header">
                <h6 class="modal-title">Edit Jurusan</h6>
                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
            </div>

            <form action="/admin/jurusan/{{ $j->id }}" method="POST">
                @csrf
                @method('PUT')

                <div class="modal-body">

                       {{-- Kode Jurusan --}}
                    <div class="mb-3">
                        <label class="form-label d-block">Kode Jurusan</label>
                      <input type="text" name="kode_jurusan" class="form-control" id="kode_jurusan" value="{{ $j->kode_jurusan }}">
                    </div>

                     {{-- Nama Jurusan --}}
                    <div class="mb-3">
                        <label class="form-label d-block">Nama Jurusan</label>
                      <input type="text" name="nama_jurusan" class="form-control" id="nama_jurusan" value="{{ $j->nama_jurusan }}">
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
