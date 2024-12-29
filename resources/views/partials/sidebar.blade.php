      <!-- Sidebar -->
      <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
        <!-- Sidebar - Brand -->
        <a class="sidebar-brand d-flex align-items-center justify-content-center" href="/dashboard">
          <div class="sidebar-brand-icon">
            <img src="images/logo-unpam.png" alt="" style="width: 40px">
          </div>
          <div class="sidebar-brand-text mx-3">KAWA AI </div>
        </a>

        <!-- Divider -->
        <hr class="sidebar-divider my-0" />

        <!-- Nav Item - Dashboard -->
        <li class="nav-item active">
          <a class="nav-link" href="/dashboard">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>Dashboard</span></a
          >
        </li>
        
        <!-- Divider -->
        <hr class="sidebar-divider" />

        <li class="nav-item active">
          <a class="nav-link" href="/user_information">
            <i class="bi bi-person-fill"></i>
            <span>Data Pribadi</span></a
          >
        </li>

        <!-- Divider -->
        <hr class="sidebar-divider" />

        <li class="nav-item active">
          <a class="nav-link" href="/beranda">
           <i class="bi bi-houses-fill"></i>
            <span>Beranda</span></a
          >
        </li>

        <hr class="sidebar-divider" />


        <!-- Heading -->
        {{-- <div class="sidebar-heading">Interface</div> --}}

        <!-- Nav Item - Pages Manage Menu -->
        <li class="nav-item">
          <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
            <i class="fas fa-fw fa-cog"></i>
            <span>Manage</span>
          </a>
          <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
              {{-- <h6 class="collapse-header">Custom Components:</h6> --}}
              <a class="collapse-item" href="{{ route('manage') }}">Manage Kamera</a>
              <a class="collapse-item" href="{{ route('university') }}">Universitas</a>
              <a class="collapse-item" href="{{ route('building') }}">Gedung</a>
              <a class="collapse-item" href="{{ route('floor') }}">Lantai</a>
            </div>
          </div>
        </li>

        {{-- Kampus --}}
        <li class="nav-item">
          <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#kampus" aria-expanded="true" aria-controls="kampus">
            <i class="bi bi-buildings-fill"></i>
            <span>Kampus</span>
          </a>
          <div id="kampus" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
              {{-- <h6 class="collapse-header">Custom Components:</h6> --}}
              <a class="collapse-item" href="#">Pusat</a>
              <a class="collapse-item" href="#">Viktor</a>
              <a class="collapse-item" href="#">Witana</a>
              <a class="collapse-item" href="#">Serang</a>
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