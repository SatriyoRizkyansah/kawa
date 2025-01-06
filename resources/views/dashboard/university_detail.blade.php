<x-app-layout>
            <!-- Main Content -->
        <div id="content">

          <!-- Begin Page Content -->
          <div class="container-fluid">
            <!-- Page Heading -->
            <div class="d-sm-flex align-items-center justify-content-between mb-4">
              <h1 class="h3 mb-0 text-gray-800">{{ $university->university_name }}</h1>
              <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i> Generate Report</a>
            </div>

            <!-- CCTV Grid -->
            <div class="row">

                @foreach ($buildings as $building)
                    <!-- Gedung Card -->
                    <div class="col-md-4 mb-3">
                    <div class="card h-100 border-0 shadow rounded-3">
                        <div class="card-header rounded-2 d-flex justify-content-between align-items-center mb-0">
                        <!-- icon -->
                        <div class="camera d-flex">
                            <i class="bx bxs-buildings fa-fw mr-2"></i>
                            <a href="{{ route('cameras.by.building', ['id' => Crypt::encryptString($building->id . '|' . now()->timestamp)]) }}" class="text-decoration-none text-dark">
                            <h6 class="card-title mb-0">{{ $building->building_name }}</h6>
                            </a>
                        </div>
                        <div class="time">
                            <div id="timestamp" class="timestamp small text-muted"></div>
                        </div>
                        </div>
                        <!-- Menggunakan ratio untuk membuat video responsif -->
                        <div class="px-3 pt-1 bg-gray-100">
                        <div class="row">
                            @foreach ($building->floors as $floor)
                                <div class="col-12 d-flex justify-content-between bg-white pb-1 mb-1 rounded text-dark">
                                    <a href="{{ route('cameras.by.floor', ['id' => Crypt::encryptString($floor->id . '|' . now()->timestamp)]) }}" class=" text-dark">
                                        <div class="lantai">{{ $floor->floor_name }}</div>
                                    </a>
                                <div class="status">
                                    <span class="badge bg-success text-white">43 / 50</span>
                                </div>
                                </div>
                            @endforeach
                        </div>
                        </div>
                        <div class="card-body py-2">
                        <small class="text-muted"> <i class="fas fa-clock"></i> Last update: 3s ago </small>
                        </div>
                    </div>
                    </div>
                @endforeach

            </div>
          </div>
          <!-- /.container-fluid -->
        </div>
        <!-- End of Main Content -->
</x-app-layout>