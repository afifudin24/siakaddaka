<aside class="sidebar">
  <button type="button" class="sidebar-close-btn">
    <iconify-icon icon="radix-icons:cross-2"></iconify-icon>
  </button>
  <div>
   
     @include('partials.logo')
  
  </div>
  <div class="sidebar-menu-area">
    <ul class="sidebar-menu" id="sidebar-menu">
         <li class="sidebar-menu-group-title">Home</li>
      <li class="my-1">
        <a href="/admin/dashboard" class="{{ request()->is('admin/dashboard') ? 'active' : '' }}">
          <iconify-icon icon="material-symbols:dashboard" class="menu-icon"></iconify-icon>
          <span>Dashboard</span>
        </a>
      </li>
      <li class="dropdown my-1
    {{ Request::is('admin/tahun-pelajaran*') ||
       Request::is('admin/mapel*') ||
       Request::is('admin/guru*') ||
       Request::is('admin/kelas*') ||
       Request::is('admin/siswa*') ||
       Request::is('admin/staff*')
       ? 'active open' : '' }}">
    <a href="javascript:void(0)">
        <iconify-icon icon="solar:server-outline" class="menu-icon"></iconify-icon>
        <span>Data Umum</span>
    </a>
    <ul class="sidebar-submenu">
        {{-- Tahun Pelajaran --}}
        <li class="{{Request::is('admin/tahun-pelajaran*') ? 'active-page' : ''}} ">
            <a href="/admin/tahun-pelajaran"
               class="{{ Request::is('admin/tahun-pelajaran*') ? 'active' : '' }}">
                <iconify-icon icon="solar:calendar-outline" class="menu-icon"></iconify-icon>
                <span>Tahun Pelajaran</span>
            </a>
        </li>
       
          {{-- Jurusan --}}
        <li class="{{request()->is('admin/jurusan*') ? 'active-page' : ''}} ">
            <a href="/admin/jurusan"
               class="{{ request()->is('admin/jurusan*') ? 'active' : '' }}">
                <iconify-icon icon="mdi:flask" class="menu-icon"></iconify-icon>
                <span>Jurusan</span>
            </a>
        </li>
          {{-- Kelas --}}
        <li class="{{request()->is('admin/kelas*') ? 'active-page' : ''}}">
         <a href="/admin/kelas"
   class="{{ request()->is('admin/kelas*') ? 'active' : '' }}">
    <iconify-icon icon="mdi:google-classroom" class="menu-icon"></iconify-icon>
    <span>Kelas</span>
</a>
        </li>
        {{-- Mapel --}}
        <li class="{{request()->is('admin/mapel*') ? 'active-page' : ''}} ">
            <a href="/admin/mapel"
               class="{{ Request::is('admin/mapel*') ? 'active' : '' }}">
                <iconify-icon icon="mdi:notebook" class="menu-icon"></iconify-icon>
                <span>Mata Pelajaran</span>
            </a>
        </li>
        {{-- Data Guru --}}
        <li class="{{request()->is('admin/guru*') ? 'active-page' : ''}} ">
            <a href="/admin/guru"
               class="{{ Request::is('admin/guru*') ? 'active' : '' }}">
                <iconify-icon icon="mdi:teach" class="menu-icon"></iconify-icon>
                <span>Guru</span>
            </a>
        </li>
            {{-- Data Siswa --}}
        <li class="{{request()->is('admin/siswa*') ? 'active-page' : ''}} ">
            <a href="/admin/siswa"
               class="{{ Request::is('admin/siswa*') ? 'active' : '' }}">
                <iconify-icon icon="mdi:account-student-outline" class="menu-icon"></iconify-icon>
                <span>Siswa</span>
            </a>
        </li>
        {{-- Data Staff --}}
        <li class="{{request()->is('admin/staff*') ? 'active-page' : ''}} ">
            <a href="/admin/staff"
               class="{{ Request::is('admin/staff*') ? 'active' : '' }}">
                <iconify-icon icon="mdi:account-file-outline" class="menu-icon"></iconify-icon>
                <span>Staff</span>
            </a>
        </li>
    </ul>
</li>
{{-- Data Akademik Start --}}
<li class="dropdown my-1
    {{ Request::is('admin/data-mengajar*') ||
       Request::is('admin/jadwal-mengajar*') ||
       Request::is('admin/jurnal-mengajar*') ||
       Request::is('admin/kehadiran-kelas*') ||
       Request::is('admin/tugas*') ||
       Request::is('admin/nilai*')
       ? 'active open' : '' }}">
    <a href="javascript:void(0)">
        <iconify-icon icon="solar:book-outline" class="menu-icon"></iconify-icon>
        <span>Data Akademik</span>
    </a>
    <ul class="sidebar-submenu">
        <li class="{{ request()->is('admin/hari-aktif*') ? 'active-page' : '' }}">
            <a href="/admin/hari-aktif" class="{{ request()->is('admin/hari-aktif*') ? 'active' : '' }}">
              <iconify-icon icon="bi:calendar-day" class="menu-icon"></iconify-icon>
                <span>Hari Aktif KBM</span>
            </a>
        </li>
        <li class="{{ request()->is('admin/data-mengajar*') ? 'active-page' : '' }}">
            <a href="/admin/data-mengajar" class="{{ request()->is('admin/data-mengajar*') ? 'active' : '' }}">
              <iconify-icon icon="mdi:teach" class="menu-icon"></iconify-icon>
                <span>Data Mengajar</span>
            </a>
        </li>
        <li class="{{ request()->is('admin/jadwal-mengajar*') ? 'active-page' : '' }}">
            <a href="/admin/jadwal-mengajar" class="{{ request()->is('admin/jadwal-mengajar*') ? 'active' : '' }}">
              <iconify-icon icon="ri:calendar-schedule-line" class="menu-icon"></iconify-icon>  
              <span>Jadwal Mengajar</span>
            </a>
        </li>
        <li class="{{ request()->is('admin/jurnal-mengajar*') ? 'active-page' : '' }}">
            <a href="/admin/jurnal-mengajar" class="{{ request()->is('admin/jurnal-mengajar*') ? 'active' : '' }}">
              <iconify-icon icon="bi:journal-text" class="menu-icon"></iconify-icon>  
              <span>Jurnal Mengajar</span>
            </a>
        </li>
        <li class="{{ request()->is('admin/kehadiran-kelas*') ? 'active-page' : '' }}">
            <a href="/admin/kehadiran-kelas" class="{{ request()->is('admin/kehadiran-kelas*') ? 'active' : '' }}">
                <iconify-icon icon="material-symbols:co-present" class="menu-icon"></iconify-icon>
                <span>Kehadiran Kelas</span>
            </a>
        </li>
        <li class="{{ request()->is('admin/materi*') ? 'active-page' : '' }}">
            <a href="/admin/materi" class="{{ request()->is('admin/materi*') ? 'active' : '' }}">
              <iconify-icon icon="basil:book-solid" class="menu-icon"></iconify-icon>
                <span>Materi</span>
            </a>
        </li>
        <li class="{{ request()->is('admin/tugas*') ? 'active-page' : '' }}">
            <a href="/admin/tugas" class="{{ request()->is('admin/tugas*') ? 'active' : '' }}">
              <iconify-icon icon="material-symbols:task-outline-rounded" class="menu-icon"></iconify-icon>
                <span>Tugas</span>
            </a>
        </li>
        <li class="{{ request()->is('admin/nilai*') ? 'active-page' : '' }}">
            <a href="/admin/nilai" class="{{ request()->is('admin/nilai*') ? 'active' : '' }}">
              <iconify-icon icon="fluent:document-100-16-filled" class="menu-icon"></iconify-icon>
                <span>Nilai</span>
            </a>
        </li>
    </ul>
</li>
{{-- Data Akademik End --}}
{{-- Pengumuman Start --}}
<li class="{{ request()->is('admin/pengumuman*') ? 'active-page' : '' }}">
    <a href="/admin/pengumuman" class="{{ request()->is('admin/pengumuman*') ? 'active' : '' }}">
        <iconify-icon icon="streamline-plump:announcement-megaphone" class="menu-icon"></iconify-icon>
        <span>Pengumuman</span>
    </a>
</li>
{{-- Pengumuman End --}}
{{-- Data PKL --}}
<li class="dropdown my-1
    {{ Request::is('admin/panitia-pkl*') ||
       Request::is('admin/peserta-pkl*') ||
       Request::is('admin/pembimbing-pkl*') ||
       Request::is('admin/dudi*')
       ? 'active open' : '' }}">

    <a href="javascript:void(0)">
        <iconify-icon icon="mdi:work-outline" class="menu-icon"></iconify-icon>
        <span>Data PKL</span>
    </a>

    <ul class="sidebar-submenu">
        <li class="{{ request()->is('admin/panitia-pkl*') ? 'active-page' : '' }}">
            <a href="/admin/panitia-pkl" class="{{ request()->is('admin/panitia-pkl*') ? 'active' : '' }}">
              <iconify-icon icon="tdesign:member" class="menu-icon"></iconify-icon>
                <span>Panitia PKL</span>
            </a>
        </li>

        <li class="{{ request()->is('admin/peserta-pkl*') ? 'active-page' : '' }}">
            <a href="/admin/peserta-pkl" class="{{ request()->is('admin/peserta-pkl*') ? 'active' : '' }}">
                <span>Peserta PKL</span>
            </a>
        </li>

        <li class="{{ request()->is('admin/pembimbing-pkl*') ? 'active-page' : '' }}">
            <a href="/admin/pembimbing-pkl" class="{{ request()->is('admin/pembimbing-pkl*') ? 'active' : '' }}">
                <span>Pembimbing PKL</span>
            </a>
        </li>

        <li class="{{ request()->is('admin/dudi*') ? 'active-page' : '' }}">
            <a href="/admin/dudi" class="{{ request()->is('admin/dudi*') ? 'active' : '' }}">
                <span>DU/DI</span>
            </a>
        </li>
    </ul>
</li>

{{-- DATA PKL end --}}
{{-- Data Sekolah --}}
      <li class="my-1">
        <a href="/admin/datasekolah" class="{{ request()->is('admin/datasekolah') ? 'active' : '' }}">
          <iconify-icon icon="teenyicons:school-outline" class="menu-icon"></iconify-icon>
          <span>Data Sekolah</span>
        </a>
      </li>
      {{-- Data Sekolah end --}}

      {{-- Managemen user --}}
      <li class="dropdown my-1
    {{ Request::is('admin/users/admin*') ||
       Request::is('admin/users/guru*') ||
       Request::is('admin/users/siswa*') ||
       Request::is('admin/users/staff*')
       ? 'active open' : '' }}">

    <a href="javascript:void(0)">
        <iconify-icon icon="solar:users-group-rounded-outline" class="menu-icon"></iconify-icon>
        <span>Manage User</span>
    </a>

    <ul class="sidebar-submenu">
        <li class="{{ request()->is('admin/users/admin*') ? 'active-page' : '' }}">
            <a href="/admin/users/admin" class="{{ request()->is('admin/users/admin*') ? 'active' : '' }}">
              <iconify-icon icon="rivet-icons:gear-solid" class="menu-icon"></iconify-icon>
                <span>Administrator</span>
            </a>
        </li>

        <li class="{{ request()->is('admin/user-siswa*') ? 'active-page' : '' }}">
            <a href="/admin/user-siswa" class="{{ request()->is('admin/user-siswa*') ? 'active' : '' }}">
              <iconify-icon icon="ph:student-bold" class="menu-icon"></iconify-icon>
                <span>Siswa</span>
            </a>
        </li>

        <li class="{{ request()->is('admin/user-guru*') ? 'active-page' : '' }}">
            <a href="/admin/user-guru" class="{{ request()->is('admin/user-guru*') ? 'active' : '' }}">
              <iconify-icon icon="fa-solid:chalkboard-teacher" class="menu-icon"></iconify-icon>
                <span>Guru</span>
            </a>
        </li>

        <li class="{{ request()->is('admin/user-staff*') ? 'active-page' : '' }}">
            <a href="/admin/user-staff" class="{{ request()->is('admin/user-staff*') ? 'active' : '' }}">
                  <iconify-icon icon="icon-park-outline:file-staff-one" class="menu-icon"></iconify-icon>
                <span>Staff</span>
            </a>
        </li>
    </ul>
</li>

      {{-- Management User --}}

      {{-- Database --}}
      <li class="dropdown my-1
    {{ Request::is('admin/backup*') ||
       Request::is('admin/data-manager*')
       ? 'active open' : '' }}">

    <a href="javascript:void(0)">
        <iconify-icon icon="solar:database-outline" class="menu-icon"></iconify-icon>
        <span>Database</span>
    </a>

    <ul class="sidebar-submenu">
        <li class="{{ request()->is('admin/backup*') ? 'active-page' : '' }}">
            <a href="/admin/backup" class="{{ request()->is('admin/backup*') ? 'active' : '' }}">
              <iconify-icon icon="mdi:backup-outline" class="menu-icon"></iconify-icon>
                <span>Backup</span>
            </a>
        </li>

        <li class="{{ request()->is('admin/data-manager*') ? 'active-page' : '' }}">
            <a href="/admin/data-manager" class="{{ request()->is('admin/data-manager*') ? 'active' : '' }}">
              <iconify-icon icon="tdesign:data" class="menu-icon"></iconify-icon>
                <span>Data Manager</span>
            </a>
        </li>
    </ul>
</li>

      {{-- Database End --}}
    </ul>
  </div>
</aside>