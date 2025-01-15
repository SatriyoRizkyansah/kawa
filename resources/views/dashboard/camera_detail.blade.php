
<x-app-layout>

    <style>
      .custom-height {
        height: 400px;
      }
    </style>
        <!-- Main Content -->
        <div id="content">

          <!-- Begin Page Content -->
          <div class="container-fluid">
            <!-- Page Heading -->
            <div class="d-sm-flex align-items-center justify-content-between mb-4">
              <h1 class="h3 mb-0 text-gray-800">Detail Kamera</h1>
              <div class="dropdown mb-4">
                <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="bx bxs-webcam mr-2"></i> Pilih Kamera</button>
                <div class="dropdown-menu animated--fade-in" aria-labelledby="dropdownMenuButton" style="">
                  <a class="dropdown-item" href="#">Camera 1</a>
                  <a class="dropdown-item" href="#">Camera 2</a>
                  <a class="dropdown-item" href="#">Camera 3</a>
                  <a class="dropdown-item" href="#">Camera 4</a>
                  <a class="dropdown-item" href="#">Camera 5</a>
                  <a class="dropdown-item" href="#">Camera 6</a>
                  <a class="dropdown-item" href="#">Camera 7</a>
                  <a class="dropdown-item" href="#">Camera 8</a>
                </div>
              </div>
            </div>

            <!-- CCTV Grid -->
            <div class="row">
              <!-- CCTV Card 1 -->
              <div class="col-md-6 mb-3">
                <div class="col-12 mb-3">
                  <div class="card border-0 shadow rounded-3">
                    <div class="card-header rounded-2 d-flex justify-content-between align-items-center mb-0">
                      <!-- icon -->
                      <div class="camera d-flex">
                        <i class="bx bxs-webcam mr-2"></i>
                        {{-- <a href="detail-kamera" class="text-decoration-none"> --}}
                          <h6 class="card-title mb-0">{{ $camera->nama_kamera }}</h6>
                        {{-- </a> --}}
                      </div>
                      <div class="time">
                        <div id="timestamp" class="timestamp small text-muted"></div>
                      </div>
                    </div>
                    <div class="border-0 px-1 pt-1 mb-0">
                      <iframe src="https://www.youtube.com/embed/6dp-bvQ7RWo" class="w-100 rounded border-0 custom-height" title="CCTV Feed"></iframe>
                    </div>
                  </div>
                </div>
                <div class="col-12 mb-3">
                  <div class="card border-0 shadow">
                    <div class="card-header">
                      <div class="card-title mb-0">
                        <b>Aktivitas Terbaru</b>
                      </div>
                    </div>
                    <!-- Aktivitas Pelanggaran yang dilakukan mahasiswa di lingkungan kampus Terbaru -->
                    <table class="table border-bottom text-wrap ">
                      <thead>
                        <tr>
                          <th>Tanggal</th>
                          <th>Waktu</th>
                          <th>Jenis Pelanggaran</th>
                          <th>Detail</th>
                        </tr>
                      </thead>
                      <tbody>
                        <!-- Data pelanggaran yang terbaru -->
                        <tr>
                          @foreach ($violations as $violation)    
                            <td>{{ $violation->date }}</td>
                            <td>{{ $violation->time }}</td>
                            <td>{{ $violation->violation_type }}</td>
                            <td>                          <a href="#" class="text-center text-blue-500 hover:underline text-decoration-none">
                              <i class="bi bi-eye text-success fs-5"></i>
                              </a>
                            </td>
                          @endforeach
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
              <div class="col-md-6 mb-3">
                <div class="card border-0 shadow">
                  <div class="card-header">
                    <div class="card-title mb-0">
                      <b>Detail Kamera</b>
                    </div>
                  </div>
                  <div class="card-body">
                    <div class="table-responsive">
                      <table class="table border-bottom w-100">
                        <tr>
                          <td>Nama</td>
                          <td>:</td>
                          <td>{{ $camera->nama_kamera }}</td>
                          <td></td>
                        </tr>
                        <tr>
                          <td>ID</td>
                          <td>:</td>
                          <td>{{ $camera->id }}</td>
                          <td></td>
                        </tr>
                        <tr>
                          <td>Deskripsi</td>
                          <td>:</td>
                          <td>{{ $camera->description }}</td>
                          <td></td>
                        </tr>
                        <tr>
                          <td>Warna Perangkat</td>
                          <td>:</td>
                          <td>{{ $camera->device_color }}</td>
                          <td></td>
                        </tr>
                        <tr>
                          <td>IP</td>
                          <td>:</td>
                          <td>{{ $camera->ip }}</td>
                          <td></td>
                        </tr>
                        <tr>
                          <td>RSTP</td>
                          <td>:</td>
                          <td>{{ $camera->rtsp }}</td>
                          <td></td>
                        </tr>
                        <tr>
                          <td>HLS</td>
                          <td>:</td>
                          <td>{{ $camera->hls }}</td>
                          <td></td>
                        </tr>
                        <tr>
                          <td>Tipe Perangkat</td>
                          <td>:</td>
                          <td>{{ $camera->type }}</td>
                          <td></td>
                        </tr>
                        <tr>
                          <td>Merk</td>
                          <td>:</td>
                          <td>{{ $camera->brand }}</td>
                          <td></td>
                        </tr>
                        <tr>
                          <td>Versi Model</td>
                          <td>:</td>
                          <td>{{ $camera->version_model }}</td>
                          <td></td>
                        </tr>
                        <tr>
                          <td>Tanggal Pemasangan</td>
                          <td>:</td>
                          <td>{{ $camera->installation_date }}</td>
                          <td></td>
                        </tr>
                        <tr>
                          <td>Universitas</td>
                          <td>:</td>
                          <td>{{ $camera->university->university_name }}</td>
                          <td></td>
                        </tr>
                        <tr>
                          <td>Gedung</td>
                          <td>:</td>
                          <td>{{ $camera->building->building_name }}</td>
                          <td></td>
                        </tr>
                        <tr>
                          <td>Lantai</td>
                          <td>:</td>
                          <td>{{ $camera->floor->floor_name }}</td>
                          <td></td>
                        </tr>
                      </table>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- /.container-fluid -->
        </div>
        <!-- End of Main Content -->

</x-app-layout>