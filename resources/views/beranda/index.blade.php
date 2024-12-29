{{-- <x-app-layout>

<style>
    .row {
        display: flex;
        flex-wrap: wrap;
        gap: 20px;
        justify-content: center;
    }

    .col {
        background-color: #8B0000;
        color: white;
        text-align: center;
        padding: 15px;
        flex: 1 1 calc(25% - 20px);
        box-sizing: border-box;
        max-width: 500px;
        border-radius: 8px;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    }

    .col video {
        width: 100%;
        height: auto;
        max-height: 280px;
        border-radius: 4px;
    }

    .col p {
        margin-top: 10px;
        font-size: 16px;
        line-height: 1.5;
    }

    @media (max-width: 768px) {
        .col {
            flex: 1 1 calc(50% - 20px);
        }
    }

    @media (max-width: 480px) {
        .col {
            flex: 1 1 100%;
        }
    }
</style>

<div class="py-12">
    <div class="container">
        <div class="row">
            @foreach($datas as $data)
                <div class="col">
                    <video id="video{{ $data->id }}" muted></video>
                    <p style="font-size: 13px">{{ $data->nama_kamera }} |   <a href="/dashboard/building/{{ $data->building->id }}" class="text-decoration-none text-white">Gedung {{ $data->building->building_name }}</a>  - <a href="/dashboard/floor/{{ $data->floor->id }}" class="text-decoration-none text-white">({{ $data->floor->floor_name }})</a></p>
                </div>
            @endforeach
        </div>
    </div>
</div>

</x-app-layout>

<script src="https://cdn.jsdelivr.net/npm/hls.js@latest"></script>
<script>
    function initializeVideo(videoId, videoUrl) {
        const videoElement = document.getElementById(videoId);

        if (Hls.isSupported()) {
            const hls = new Hls({
                maxBufferLength: 10,
                maxMaxBufferLength: 30,
                initialLiveManifestSize: 1,
                liveSyncDurationCount: 3,
            });

            hls.loadSource(videoUrl);
            hls.attachMedia(videoElement);

            hls.on(Hls.Events.MEDIA_ATTACHED, function () {
                videoElement.play();
            });
        } else if (videoElement.canPlayType('application/vnd.apple.mpegurl')) {
            videoElement.src = videoUrl;
            videoElement.addEventListener('loadedmetadata', function () {
                videoElement.play();
            });
        } else {
            console.error('HLS is not supported in this browser.');
        }
    }

     @foreach($datas as $data)
    //   render_vid("video{{ $data->id }}", "{{ $data->rtsp }}"); 
      initializeVideo("video{{ $data->id }}", "https://stream-akamai.castr.com/5b9352dbda7b8c769937e459/live_2361c920455111ea85db6911fe397b9e/index.fmp4.m3u8");
  @endforeach
</script> --}}

<x-app-layout>
            <!-- Main Content -->
        <div id="content">

          <!-- Begin Page Content -->
          <div class="container-fluid">
            <!-- Page Heading -->
            <div class="d-sm-flex align-items-center justify-content-between mb-4">
              <h1 class="h3 mb-0 text-gray-800">Kampus Viktor</h1>
              <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i> Generate Report</a>
            </div>

            <!-- CCTV Grid -->
            <div class="row">
              <!-- Gedung Card 1 -->
              <div class="col-md-4 mb-3">
                <div class="card h-100 border-0 shadow rounded-3">
                  <div class="card-header rounded-2 d-flex justify-content-between align-items-center mb-0">
                    <!-- icon -->
                    <div class="camera d-flex">
                      <i class="bx bxs-buildings fa-fw mr-2"></i>
                      <a href="Kamera.html" class="text-decoration-none text-dark">
                        <h6 class="card-title mb-0">Gedung A</h6>
                      </a>
                    </div>
                    <div class="time">
                      <div id="timestamp" class="timestamp small text-muted"></div>
                    </div>
                  </div>
                  <!-- Menggunakan ratio untuk membuat video responsif -->
                  <div class="px-3 pt-1 bg-gray-100">
                    <div class="row">
                      <div class="col-12 d-flex justify-content-between bg-white pb-1 mb-1 rounded text-dark">
                        <div class="lantai">Lantai 1</div>
                        <div class="status">
                          <span class="badge bg-success text-white">43 / 50</span>
                        </div>
                      </div>
                      <div class="col-12 d-flex justify-content-between bg-white pb-1 mb-1 rounded text-dark">
                        <div class="lantai">Lantai 2</div>
                        <div class="status">
                          <span class="badge bg-success text-white">49 / 50</span>
                        </div>
                      </div>
                      <div class="col-12 d-flex justify-content-between bg-white pb-1 mb-1 rounded text-dark">
                        <div class="lantai">Lantai 3</div>
                        <div class="status">
                          <span class="badge bg-success text-white">50 / 50</span>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="card-body py-2">
                    <small class="text-muted"> <i class="fas fa-clock"></i> Last update: 3s ago </small>
                  </div>
                </div>
              </div>

              <!-- Gedung Card 2 -->
              <div class="col-md-4 mb-3">
                <div class="card h-100 border-0 shadow rounded-3">
                  <div class="card-header rounded-2 d-flex justify-content-between align-items-center mb-0">
                    <!-- icon -->
                    <div class="camera d-flex">     
                      <i class="bx bxs-buildings fa-fw mr-2"></i>
                      <a href="Kamera.html" class="text-decoration-none text-dark">
                        <h6 class="card-title mb-0">Gedung B</h6>
                      </a>
                    </div>
                    <div class="time">
                      <div id="timestamp" class="timestamp small text-muted"></div>
                    </div>
                  </div>
                  <!-- Menggunakan ratio untuk membuat video responsif -->
                  <div class="px-3 pt-1 bg-gray-100">
                    <div class="row">
                      <div class="col-12 d-flex justify-content-between bg-white pb-1 mb-1 rounded text-dark">
                        <div class="lantai">Lantai 1</div>
                        <div class="status">
                          <span class="badge bg-success text-white">43 / 50</span>
                        </div>
                      </div>
                      <div class="col-12 d-flex justify-content-between bg-white pb-1 mb-1 rounded text-dark">
                        <div class="lantai">Lantai 2</div>
                        <div class="status">
                          <span class="badge bg-success text-white">49 / 50</span>
                        </div>
                      </div>
                      <div class="col-12 d-flex justify-content-between bg-white pb-1 mb-1 rounded text-dark">
                        <div class="lantai">Lantai 3</div>
                        <div class="status">
                          <span class="badge bg-success text-white">50 / 50</span>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="card-body py-2">
                    <small class="text-muted"> <i class="fas fa-clock"></i> Last update: 3s ago </small>
                  </div>
                </div>
              </div>

              <!-- Gedung Card 3 -->
              <div class="col-md-4 mb-3">
                <div class="card h-100 border-0 shadow rounded-3">
                  <div class="card-header rounded-2 d-flex justify-content-between align-items-center mb-0">
                    <!-- icon -->
                    <div class="camera d-flex">
                      <i class="bx bxs-buildings fa-fw mr-2"></i>
                      <a href="Kamera.html" class="text-decoration-none text-dark">
                        <h6 class="card-title mb-0">Gedung C</h6>
                      </a>
                    </div>
                    <div class="time">
                      <div id="timestamp" class="timestamp small text-muted"></div>
                    </div>
                  </div>
                  <!-- Menggunakan ratio untuk membuat video responsif -->
                  <div class="px-3 pt-1 bg-gray-100">
                    <div class="row">
                      <div class="col-12 d-flex justify-content-between bg-white pb-1 mb-1 rounded text-dark">
                        <div class="lantai">Lantai 1</div>
                        <div class="status">
                          <span class="badge bg-success text-white">43 / 50</span>
                        </div>
                      </div>
                      <div class="col-12 d-flex justify-content-between bg-white pb-1 mb-1 rounded text-dark">
                        <div class="lantai">Lantai 2</div>
                        <div class="status">
                          <span class="badge bg-success text-white">49 / 50</span>
                        </div>
                      </div>
                      <div class="col-12 d-flex justify-content-between bg-white pb-1 mb-1 rounded text-dark">
                        <div class="lantai">Lantai 3</div>
                        <div class="status">
                          <span class="badge bg-success text-white">50 / 50</span>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="card-body py-2">
                    <small class="text-muted"> <i class="fas fa-clock"></i> Last update: 3s ago </small>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- /.container-fluid -->
        </div>
        <!-- End of Main Content -->
</x-app-layout>
