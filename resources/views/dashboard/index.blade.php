<x-app-layout>


              {{-- Alert sukses --}}
      @if (session('success'))
            <div class="alert alert-success alert-dismissible fade show mx-3" role="alert">
            {{ session('success') }}
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
      @endif

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
              {{-- @include('partials.sidebar', ['universities' => $universities]) --}}
              @foreach ($universities as $university)
                <div class="col-md-6">
                  <div class="card shadow mb-4">
                    <!-- Card Header - Dropdown -->
                    <div class="card-header d-flex flex-row align-items-center justify-content-between">

                      <a href="{{ route('detail.university', ['id' => $university->id]) }}">
                          <h6 class="m-0 font-weight-bold text-primary">
                              <i class="fa-solid fa-building-columns"></i> {{ $university->university_name }}
                          </h6>
                      </a>

                      <div class="badge bg-success text-white rounded-pill"><i class="bx bxs-webcam mr-1"></i>12 / 13</div>
                    </div>
                    <!-- Card Body -->
                    <div class="card-body">
                      <a href="{{ route('detail.university', ['id' => $university->id]) }}">
                        <img src="{{ asset('storage/images/university/' . $university->img) }}" alt="Image Cover" class="rounded" style="aspect-ratio: 19/6; width: 100%; object-fit: cover" />
                      </a>
                    </div>
                  </div>
                </div>
              @endforeach

            </div>
          </div>
          <!-- /.container-fluid -->
        </div>

</x-app-layout>
