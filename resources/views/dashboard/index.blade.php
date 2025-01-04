<x-app-layout>
        <div id="content">

          <!-- Begin Page Content -->
          <div class="container-fluid">
            <!-- Page Heading -->
            <div class="d-sm-flex align-items-center justify-content-between mb-4">
              <h1 class="h3 mb-0 text-gray-800">Dashboard Kawa - AI</h1>
              <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i> Generate Report</a>
            </div>

            <!-- Content Row -->
            <div class="row">
              <!-- Cameras Card Example -->
              <div class="col-xl-3 col-md-6 mb-4">
                <div class="card border-left-primary shadow h-100 py-2">
                  <div class="card-body">
                    <div class="row no-gutters align-items-center">
                      <div class="col mr-2">
                        <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Cameras online</div>
                        <div class="h5 mb-0 font-weight-bold text-gray-800">
                          <div style="display: flex; align-items: center; font-size: 20px; gap: 5px">
                            <span>45</span>
                            <span style="display: inline-flex; align-items: center; justify-content: center; color: #23b61b; font-size: 10px; width: 12px; height: 12px; border-radius: 50%; background-color: #f0f0f0">
                              <i class="fas fa-circle" style="font-size: 8px"></i>
                            </span>
                            <span>/ 50</span>
                          </div>
                        </div>
                      </div>
                      <div class="col-auto">
                        <!-- <i class="fas fa-calendar fa-2x text-gray-300"></i> -->
                        <span style="font-size: 2rem">
                          <i class="bi bi-camera-video"></i>
                        </span>
                      </div>
                    </div>
                  </div>
                </div>
              </div>

              <!-- Sites Online Card Example -->
              <div class="col-xl-3 col-md-6 mb-4">
                <div class="card border-left-success shadow h-100 py-2">
                  <div class="card-body">
                    <div class="row no-gutters align-items-center">
                      <div class="col mr-2">
                        <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Sites Online</div>
                        <div class="h5 mb-0 font-weight-bold text-gray-800">5/10</div>
                      </div>
                      <div class="col-auto">
                        <!-- <i class="fas fa-dollar-sign fa-2x text-gray-300"></i> -->
                        <i class="bi bi-diagram-2" style="font-size: 30px"></i>
                      </div>
                    </div>
                  </div>
                </div>
              </div>

              <!-- Open Task Card Example -->
              <div class="col-xl-3 col-md-6 mb-4">
                <div class="card border-left-info shadow h-100 py-2">
                  <div class="card-body">
                    <div class="row no-gutters align-items-center">
                      <div class="col mr-2">
                        <div class="text-xs font-weight-bold text-info text-uppercase mb-1">Tasks</div>
                        <div class="row no-gutters align-items-center">
                          <div class="col-auto">
                            <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">50%</div>
                          </div>
                          <div class="col">
                            <div class="progress progress-sm mr-2">
                              <div class="progress-bar bg-info" role="progressbar" style="width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="col-auto">
                        <i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
                      </div>
                    </div>
                  </div>
                </div>
              </div>

              <!-- Pending Requests Card Example -->
              <div class="col-xl-3 col-md-6 mb-4">
                <div class="card border-left-warning shadow h-100 py-2">
                  <div class="card-body">
                    <div class="row no-gutters align-items-center">
                      <div class="col mr-2">
                        <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">Pending Requests</div>
                        <div class="h5 mb-0 font-weight-bold text-gray-800">18</div>
                      </div>
                      <div class="col-auto">
                        <!-- <i class="fas fa-comments fa-2x text-gray-300"></i> -->
                        <i class="bi bi-exclamation-circle" style="font-size: 25px"></i>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <!-- Content Row -->

            <div class="row">
              <!-- Kampus -->
                {{-- <div class="col-md-6">
                  <div class="card shadow mb-4">
                    <!-- Card Header - Dropdown -->
                    <div class="card-header d-flex flex-row align-items-center justify-content-between">
                      <h6 class="m-0 font-weight-bold text-primary"><i class="bi bi-buildings"></i>
                        
                         <a href="{{ url('/university_detail/' . $university->id) }}">{{ $university->university_name }}</a>
                        </h6>
                      <div class="badge bg-success text-white rounded-pill"><i class="bx bxs-webcam mr-1"></i>12 / 13</div>
                    </div>
                    <!-- Card Body -->
                    <div class="card-body">
                      <a href="gedung.html">
                        <img src="images/pusat.jpg" alt="Image Cover" class="rounded" style="aspect-ratio: 19/6; width: 100%; object-fit: cover" />
                      </a>
                    </div>
                  </div>
                </div> --}}

                <!-- Kampus 1 -->
              <div class="col-md-6">
                <div class="card shadow mb-4">
                  <!-- Card Header - Dropdown -->
                  <div class="card-header d-flex flex-row align-items-center justify-content-between">
                    <a href="{{ url('/university_detail/1')}}">
                      <h6 class="m-0 font-weight-bold text-primary"><i class="fa-solid fa-building-columns"></i> Kampus Pusat</h6>
                    </a>
                    <div class="badge bg-success text-white rounded-pill"><i class="bx bxs-webcam mr-1"></i>12 / 13</div>
                  </div>
                  <!-- Card Body -->
                  <div class="card-body">
                    <a href="{{ url('/university_detail/1')}}">
                      <img src="images/pusat.jpg" alt="Image Cover" class="rounded" style="aspect-ratio: 19/6; width: 100%; object-fit: cover" />
                    </a>
                  </div>
                </div>
              </div>

              <!-- Kampus 2 -->
              <div class="col-md-6">
                <div class="card shadow mb-4">
                  <!-- Card Header - Dropdown -->
                  <div class="card-header d-flex flex-row align-items-center justify-content-between">
                    <a href="{{ url('/university_detail/2')}}">
                      <h6 class="m-0 font-weight-bold text-primary"><i class="fa-solid fa-building-columns"></i> Kampus Viktor</h6>
                    </a>
                    <div class="badge bg-success text-white rounded-pill"><i class="bx bxs-webcam mr-1"></i>12 / 13</div>
                  </div>
                  <!-- Card Body -->
                  <div class="card-body">
                    <a href="{{ url('/university_detail/2')}}">
                      <img src="images/bg.png" alt="Image Cover" class="rounded" style="aspect-ratio: 19/6; width: 100%; object-fit: cover" />
                    </a>
                  </div>
                </div>
              </div>

              <!-- Kampus 3 -->
              <div class="col-md-6">
                <div class="card shadow mb-4">
                  <!-- Card Header - Dropdown -->
                  <div class="card-header d-flex flex-row align-items-center justify-content-between">
                    <a href="{{ url('/university_detail/3')}}">
                      <h6 class="m-0 font-weight-bold text-primary"><i class="fa-solid fa-building-columns"></i> Kampus Witana</h6>
                    </a>
                    <div class="badge bg-success text-white rounded-pill"><i class="bx bxs-webcam mr-1"></i>11 / 12</div>
                  </div>
                  <!-- Card Body -->
                  <div class="card-body">
                    <a href="{{ url('/university_detail/3')}}">
                      <img src="images/witana.jpg" alt="Image Cover" class="rounded" style="aspect-ratio: 19/6; width: 100%; object-fit: cover" />
                    </a>
                  </div>
                </div>
              </div>

              <!-- Kampus 4 -->
              <div class="col-md-6">
                <div class="card shadow mb-4">
                  <!-- Card Header - Dropdown -->
                  <div class="card-header d-flex flex-row align-items-center justify-content-between">
                    <a href="{{ url('/university_detail/4')}}">
                      <h6 class="m-0 font-weight-bold text-primary"><i class="fa-solid fa-building-columns"></i> Kampus Serang</h6>
                    </a>
                    <div class="badge bg-success text-white rounded-pill"><i class="bx bxs-webcam mr-1"></i>10 / 12</div>
                  </div>
                  <!-- Card Body -->
                  <div class="card-body">
                    <a href="{{ url('/university_detail/4')}}">
                      <img src="images/serang.jpg" alt="Image Cover" class="rounded" style="aspect-ratio: 19/6; width: 100%; object-fit: cover" />
                    </a>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- /.container-fluid -->
        </div>

</x-app-layout>
