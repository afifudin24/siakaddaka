<!-- Modal Tambah Tahun Pelajaran -->
<div class="modal fade" id="editKategoriMapel{{ $s->id }}" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content radius-16 bg-base">
            <div class="card-header d-flex justify-content-between align-items-center">
                        <h5 class="card-title mb-0">Edit Kategori Mata Pelajaran</h5>
                        <div>
                            <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                        </div>
                    </div>
            <form action="{{ route('admin.kategori-mapel.update', $s->id) }}') }}" method="POST">
                @csrf
                @method('PUT')
                <div class="modal-body">
                    {{-- Status --}}
                    <div class="mb-3">
                        <label class="form-label d-block">Nama Kategori Mapel</label>
                        <input type="text" class="form-control" value="{{$s->nama_kategori_mapel}}" placeholder="Nama Kategori Mapel" name="nama_kategori_mapel" required>
                    </div>

                </div>

                <div class="modal-footer border-0">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Batal</button>
                    <button type="submit" class="btn btn-primary">Simpan Perubahan</button>
                </div>

            </form>

        </div>
    </div>
</div>
