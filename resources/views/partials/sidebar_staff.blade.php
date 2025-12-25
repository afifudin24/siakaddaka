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
      <li  class="{{ request()->is('staff/dashboard') ? 'active-page' : '' }}">
        <a href="/staff/dashboard" class="{{ request()->is('staff/dashboard') ? 'active' : '' }}">
          <iconify-icon icon="mage:home" class="menu-icon"></iconify-icon>
          <span>Dashboard</span>
        </a>
      </li>
      @if(auth()->user()->staff->jabatan == 'Staff Keuangan')
      <!-- List Tagihan -->
        <li class="{{ request()->is('staff/jenistagihan*') ? 'active-page' : '' }} ">
        <a href="/staff/jenistagihan" class="{{ request()->is('staff/jenistagihan*') ? 'active' : '' }}">
         <iconify-icon icon="mdi:receipt-outline" class="menu-icon"></iconify-icon>
          <span>Jenis Tagihan</span>
        </a>
      </li>
        <li class="{{ request()->is('staff/tagihan*') ? 'active-page active' : '' }}">
        <a href="/staff/tagihan" class="{{ request()->is('staff/tagihan*') ? 'active-page  active' : '' }}">
         <iconify-icon icon="mdi:cash" class="menu-icon"></iconify-icon>
          <span>Tagihan</span>
        </a>
      </li>
        <li class="{{ request()->is('staff/kaskeluar*') ? 'active-page active' : '' }}">
        <a href="/staff/kaskeluar" class="{{ request()->is('staff/kaskeluar*') ? 'active-page  active' : '' }}">
     <iconify-icon icon="mdi:cash-minus" class="menu-icon"></iconify-icon>

          <span>Kas Keluar</span>
        </a>
      </li>

       <li class="dropdown my-1
    {{ Request::is('staff/cetakmassal/riwayatpembayaran*') ||

       Request::is('staff/cetakmassal/tagihan*') 
      
       ? 'active active-page open' : '' }}">

    <a href="javascript:void(0)">
        <iconify-icon icon="solar:printer-linear" class="menu-icon"></iconify-icon>
        <span>Cetak Massal</span>
    </a>

    <ul class="sidebar-submenu">

        {{-- Tahun Pelajaran --}}
        <li class="{{Request::is('staff/cetakmassal/tagihan*') ? 'active-page' : ''}} ">
            <a href="/staff/cetakmassal/tagihan"
               class="{{ Request::is('staff/cetakmassal/tagihan*') ? 'active' : '' }}">
               <iconify-icon icon="mdi:file-multiple-outline" class="menu-icon"></iconify-icon>

                <span>Tagihan</span>
            </a>
        </li>
        <li class="{{Request::is('staff/cetakmassal/riwayatpembayaran*') ? 'active-page' : ''}} ">
            <a href="/staff/cetakmassal/riwayatpembayaran"
               class="{{ Request::is('staff/cetakmassal/tagihan*') ? 'active' : '' }}">
          <iconify-icon icon="mdi:cash-multiple" class="menu-icon"></iconify-icon>


                <span>Riwayat Pembayaran</span>
            </a>
        </li>

       
    

    </ul>

</li>
  <li class="{{ request()->is('staff/laporankeuangan*') ? 'active-page active' : '' }}">
        <a href="/staff/laporankeuangan" class="{{ request()->is('staff/laporankeuangan*') ? 'active-page  active' : '' }}">
     <iconify-icon icon="mdi:finance" class="menu-icon"></iconify-icon>

          <span>Laporan Keuangan</span>
        </a>
      </li>
      @endif
    
    </ul>
  </div>
</aside>