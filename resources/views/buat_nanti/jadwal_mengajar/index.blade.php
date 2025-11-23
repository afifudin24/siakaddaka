<!-- select option -->
 <form method="GET" action="{{ route('jadwal.index') }}" class="mb-4">
    <div class="row">
        <div class="col-md-4">
            <select name="kelas" class="form-control" onchange="this.form.submit()">
                <option value="">-- Pilih Kelas --</option>
                @foreach($kelas as $k)
                    <option value="{{ $k->id }}" {{ ($kelas_id == $k->id) ? 'selected' : '' }}>
                        {{ $k->nama_kelas }}
                    </option>
                @endforeach
            </select>
        </div>
    </div>
</form>


<!-- Tampilkan tabel ketika kelas dipilih -->
@if($kelas_id)
<form action="{{ route('jadwal.store', $kelas_id) }}" method="POST">
    @csrf

    <table class="table table-bordered">
        <thead>
            <tr>
                <th>Hari</th>
                @foreach($jam as $j)
                    <th>
                        Jam {{ $j->jam_ke }}<br>
                        {{ $j->mulai }} - {{ $j->selesai }}
                    </th>
                @endforeach
            </tr>
        </thead>

        <tbody>
            @foreach($hari as $h)
            <tr>
                <td>{{ $h->nama_hari }}</td>

                @foreach($jam as $j)

                    @php
                        $old = $jadwal_lama
                            ->where('hari_id', $h->id)
                            ->where('jam_pelajaran_id', $j->id)
                            ->first();
                    @endphp

                    <td>
                        <select name="jadwal[{{ $h->id }}][{{ $j->id }}]" 
                                class="form-control">
                            <option value="">-- Kosong --</option>

                            @foreach($data_mengajar as $dm)
                                <option value="{{ $dm->id }}"
                                    {{ $old && $old->data_mengajar_id == $dm->id ? 'selected' : '' }}>
                                    {{ $dm->mapel->nama }} - {{ $dm->guru->nama }}
                                </option>
                            @endforeach
                        </select>
                    </td>

                @endforeach
            </tr>
            @endforeach
        </tbody>
    </table>

    <button class="btn btn-primary mt-3">Simpan Jadwal</button>
</form>
@endif
