<x-app-layout>
                <!-- Main Content -->
            <div id="content">
                <!-- Begin Page Content -->
                <div class="container-fluid">
                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">{{ $title }}</h1>
                        {{-- <div class="dropdown mb-4">
                            <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-stairs me-2"></i> Pilih Lantai
                            </button>
                            <div class="dropdown-menu animated--fade-in" aria-labelledby="dropdownMenuButton" style="">
                                <a class="dropdown-item" href="#">Lantai 1</a>
                                <a class="dropdown-item" href="#">Lantai 2</a>
                                <a class="dropdown-item" href="#">Lantai 3</a>

                                <a class="dropdown-item" href="#">Lantai 4</a>
                                <a class="dropdown-item" href="#">Lantai 5</a>
                                <a class="dropdown-item" href="#">Lantai 6</a>

                                <a class="dropdown-item" href="#">Lantai 7</a>
                                <a class="dropdown-item" href="#">Lantai 8</a>
                                <a class="dropdown-item" href="#">Lantai 9</a>

                                <a class="dropdown-item" href="#">Lantai 10</a>
                                <a class="dropdown-item" href="#">Lantai 11</a>
                                <a class="dropdown-item" href="#">Lantai 12</a>
                            </div>
                        </div> --}}
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
                                                <a href="{{ route('camera.detail', ['id' => $cam->id]) }}" class="text-dark">
                                                    <h6 class="card-title mb-0">{{ $cam->nama_kamera }}</h6>
                                                </a>
                                        </div>
                                        <div class="time">
                                            <div id="timestamp" class="timestamp small text-muted"></div>
                                        </div>
                                    </div>
                                    <!-- Menggunakan ratio untuk membuat video responsif -->
                                    <div class="ratio ratio-4x3 border-0 px-1 pt-1 mb-0">
                                        <iframe src="https://www.youtube.com/embed/6dp-bvQ7RWo"
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