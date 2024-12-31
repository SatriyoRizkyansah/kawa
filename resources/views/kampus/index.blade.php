<x-app-layout>

                <!-- Main Content -->
            <div id="content">

                <!-- Begin Page Content -->
                <div class="container-fluid">
                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">{{ $university->university_name }}</h1>
                        <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                                class="fas fa-download fa-sm text-white-50"></i> Generate Report</a>
                    </div>

                    <!-- Filters -->
                    <div class="mb-3 d-flex">
                        <!-- Filter Gedung -->
                        <div class="dropdown mb-4 mr-2">
                            <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownBuilding"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-building me-2"></i> Pilih Gedung
                            </button>
                            <div class="dropdown-menu animated--fade-in" aria-labelledby="dropdownBuilding">
                                @foreach ($buildings as $building)
                                    <a class="dropdown-item" href="{{ route('kampus.view', ['id' => $university->id, 'building_id' => $building->id]) }}">
                                        {{ $building->building_name }}
                                    </a>
                                @endforeach
                            </div>
                        </div>

                        <!-- Filter Lantai -->
                        <div class="dropdown mb-4">
                            <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownFloor"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-stairs me-2"></i> Pilih Lantai
                            </button>
                            <div class="dropdown-menu animated--fade-in" aria-labelledby="dropdownFloor">
                                @foreach ($floors as $floor)
                                    <a class="dropdown-item" href="{{ route('kampus.view', ['id' => $university->id, 'building_id' => request('building_id'), 'floor_id' => $floor->id]) }}">
                                        {{ $floor->floor_name }}
                                    </a>
                                @endforeach
                            </div>
                        </div>
                    </div>


                    <!-- CCTV Grid -->
                    <div class="row">
                        @foreach ($cameras as $cam)
                            <!-- CCTV Card 1 -->
                            <div class="col-md-4 mb-3">
                                <div class="card h-100 border-0 shadow rounded-3">
                                    <div
                                        class="card-header rounded-2 d-flex justify-content-between align-items-center mb-0">
                                        <!-- icon -->
                                        <div class="camera d-flex">
                                            <i class='bx bxs-webcam mr-2'></i>
                                                <a href="{{ url('/camera_detail/' . $cam->id) }}" class="text-dark">
                                                    <h6 class="card-title mb-0">{{ $cam->nama_kamera }}</h6>
                                                </a>
                                        </div>
                                        <div class="time">
                                            <div id="timestamp" class="timestamp small text-muted"></div>
                                        </div>
                                    </div>
                                    <!-- Menggunakan ratio untuk membuat video responsif -->
                                    <div class="ratio ratio-4x3 border-0 px-1 pt-1 mb-0">
                                        {{-- <iframe src="https://www.youtube.com/embed/6dp-bvQ7RWo" --}}
                                            class="w-100 rounded border-0" title="CCTV Feed" allowfullscreen></iframe>
                                    </div>
                                    <div class="card-body">
                                        <!-- Informasi kamera -->
                                        <div class="d-flex justify-content-between align-items-center mb-2">
                                            <h5 class="card-title mb-0">{{ $cam->description }}</h5>
                                            <span class="badge bg-danger text-white"><i class="fas fa-circle me-1"></i>
                                                LIVE</span>
                                        </div>
                                        <!-- Details Section -->
                                        <div class="d-flex justify-content-between align-items-center">
                                            <small class="text-muted">
                                                <i class="fas fa-clock me-1"></i> Last update: 3s ago
                                            </small>
                                            <span class="badge bg-primary text-white">
                                                <i class="fas fa-building me-1"></i> {{ $cam->building->building_name }} - {{ $cam->floor->floor_name }}
                                            </span>
                                        </div>
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