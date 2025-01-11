      <!-- Sidebar -->
      <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
        <!-- Sidebar - Brand -->
        <a class="sidebar-brand d-flex align-items-center justify-content-center" href="{{ route('dashboard') }}">
          <div class="sidebar-brand-icon">
            <img src="{{ asset('images/logo-unpam.png') }}" alt="" style="width: 40px">
          </div>
          <div class="sidebar-brand-text mx-3">KAWA AI </div>
        </a>

        <!-- Divider -->
        <hr class="sidebar-divider my-0" />

        <!-- Nav Item - Dashboard -->
        <li class="nav-item {{ Request::is('admin/dashboard') ? 'active' : '' }}">
          <a class="nav-link" href="{{ route('dashboard') }}">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>Dashboard</span></a
          >
        </li>
        
        <!-- Divider -->
        <hr class="sidebar-divider" />

        <li class="nav-item {{ Request::is('admin/user_information') ? 'active' : '' }}">
          <a class="nav-link" href="{{ route('user_info') }}">
            <i class="bi bi-person-fill"></i>
            <span>Data Pribadi</span></a
          >
        </li>

        {{-- Kampus --}}
        <li class="nav-item {{ Request::is('admin/university_detail*') ? 'active' : '' }}">
          <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#kampus" aria-expanded="true" aria-controls="kampus">
            <i class="bi bi-buildings-fill"></i>
            <span>Kampus</span>
          </a>
          <div id="kampus" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
              {{-- <h6 class="collapse-header">Custom Components:</h6> --}}
              <a class="collapse-item" href="{{ route('detail.university', ['id' => '2c8c664d47f9e7da2029564f643c68bd']) }}">Pusat</a>
              <a class="collapse-item" href="{{ route('detail.university', ['id' => '500355ff113af906897df026a565cb23']) }}">Viktor</a>
              <a class="collapse-item" href="{{ route('detail.university', ['id' => '98f1ceee608d0cd290463e1b68005c2e']) }}">Witana</a>
              <a class="collapse-item" href="{{ route('detail.university', ['id' => 'e86ad641bae43dc317a7e0916fd82063']) }}">Serang</a>
            </div>
          </div>
        </li>

        <!-- Divider -->
        <hr class="sidebar-divider" />

        {{-- <li class="nav-item active">
          <a class="nav-link" href="/beranda">
           <i class="bi bi-houses-fill"></i>
            <span>Beranda</span></a
          >
        </li> --}}

        <!-- Heading -->
        {{-- <div class="sidebar-heading">Interface</div> --}}

        <!-- Nav Item - Pages Manage Menu -->

        <div class="sidebar-heading">Control</div>

       <li class="nav-item {{ Request::is('admin/manage/*') ? 'active' : '' }}">
          <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
            <i class="fas fa-fw fa-cog"></i>
            <span>Manage / Pengaturan</span>
          </a>
          <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
              {{-- <h6 class="collapse-header">Custom Components:</h6> --}}
              <a class="collapse-item" href="{{ route('camera') }}">Manage Kamera</a>
              <a class="collapse-item" href="{{ route('university') }}">Universitas</a>
              <a class="collapse-item" href="{{ route('building') }}">Gedung</a>
              <a class="collapse-item" href="{{ route('floor') }}">Lantai</a>
            </div>
          </div>
        </li>


        <!-- Divider -->
        <hr class="sidebar-divider" />

        <!-- Heading -->
        {{-- <div class="sidebar-heading">Addons</div> --}}


        <!-- Divider -->
        <hr class="sidebar-divider d-none d-md-block" />

        <!-- Sidebar Toggler (Sidebar) -->
        <div class="text-center d-none d-md-inline">
          <button class="rounded-circle border-0" id="sidebarToggle"></button>
        </div>

      </ul>
      <!-- End of Sidebar -->

      