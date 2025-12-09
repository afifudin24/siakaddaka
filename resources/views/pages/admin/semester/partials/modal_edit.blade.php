<!-- Modal Edit -->
<div class="modal fade" id="modalEditS{{ $s->id }}" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">

            <div class="card-header d-flex justify-content-between align-items-center">
                        <h5 class="card-title mb-0">Edit Semester</h5>
                        <div>
                            <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                        </div>
                    </div>

            <form action="/admin/tahun-pelajaran/{{ $s->id }}" method="POST">
                @csrf
                @method('PUT')

             <div class="modal-body">

    <div class="row g-3">

        {{-- Semester --}}
        <div class="col-md-6">
            <label class="form-label d-block">Semester</label>
            <select name="nama" class="form-select" id="nama">
                <option value="Gasal" {{ $s->nama == 'Gasal' ? 'selected' : '' }}>Gasal</option>
                <option value="Genap" {{ $s->nama == 'Genap' ? 'selected' : '' }}>Genap</option>
            </select>
        </div>

        {{-- Tahun Pelajaran --}}
        <div class="col-md-6">
            <label class="form-label d-block">Tahun Pelajaran</label>
            <select name="tahun_pelajaran_id" class="form-select" required>
                @foreach($tahun_pelajaran as $tp)
                <option {{ $s->tahun_pelajaran_id == $tp->id ? 'selected' : '' }}
                    value="{{$tp->id}}">{{$tp->nama}}</option>
                @endforeach
            </select>
        </div>

        {{-- Tanggal Mulai --}}
        <div class="col-md-6">
            <label class="form-label d-block">Tanggal Mulai</label>
            <input type="date" name="tanggal_mulai" class="form-control" required
                value="{{ $s->tanggal_mulai }}">
        </div>

        {{-- Tanggal Selesai --}}
        <div class="col-md-6">
            <label class="form-label d-block">Tanggal Selesai</label>
            <input type="date" name="tanggal_selesai" class="form-control" required
                value="{{ $s->tanggal_selesai }}">
        </div>

        {{-- Status --}}
        <div class="col-md-6">
            <label class="form-label d-block">Status</label>
            <select name="is_active" class="form-select" required>
                <option value="1" {{ $s->is_active ? 'selected' : '' }}>Aktif</option>
                <option value="0" {{ !$s->is_active ? 'selected' : '' }}>Tidak Aktif</option>
            </select>
        </div>

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
