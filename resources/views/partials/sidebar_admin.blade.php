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
          <iconify-icon icon="mage:home" class="menu-icon"></iconify-icon>
          <span>Dashboard</span>
        </a>
      </li>
      <li class="dropdown my-1
    {{ Request::is('admin/tahun-pelajaran*') ||

       Request::is('admin/mapel*') ||
       Request::is('admin/guru*') ||
       Request::is('admin/kelas*') ||
       Request::is('admin/siswa*')
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

    </ul>

</li>
    
    </ul>
  </div>
</aside>