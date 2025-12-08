<!-- Modal Tambah Tahun Pelajaran -->
<div class="modal fade" id="editMapel{{ $mpl->id }}" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content radius-16 bg-base">
            <div class="card-header d-flex justify-content-between align-items-center">
                        <h5 class="card-title mb-0">Edit Mata Pelajaran</h5>
                        <div>

                            <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                        </div>

                    </div>

           

            <form action="{{ route('admin.mapel.update', $mpl->id) }}') }}" method="POST">
                @csrf
                @method('PUT')
                <div class="modal-body">

                    {{-- Input Tahun Pelajaran --}}
                    <div class="mb-3">
                        <label class="form-label">Kategori Mapel</label>
                       <select  class="form-select" id="" required name="kategori_mapel_id">
                        <option value="">Pilih Kategori</option>
                        @foreach($kategorimapel as $km)
                        <option {{ $mpl->kategori_mapel_id == $km->id ? 'selected' : '' }} value="{{$km->id}}">{{$km->nama_kategori_mapel}}</option>
                        @endforeach
                       </select>
                    </div>

                    {{-- Status --}}
                    <div class="mb-3">
                        <label class="form-label d-block">Nama Mapel</label>
                        <input type="text" class="form-control" value="{{$mpl->nama_mapel}}" placeholder="Nama Mapel" name="nama_mapel" required>
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
