<x-app-layout>
    <style>
        .video-container {
            position: relative;
            padding-bottom: 56.25%;
            /* 16:9 aspect ratio */
            height: 0;
            overflow: hidden;
        }

        .video-container video {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
        }

        .custom-controls {
            position: absolute;
            bottom: 0;
            left: 0;
            right: 0;
            background-color: rgba(0, 0, 0, 0.5);
            padding: 10px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .playlist-item {
            cursor: pointer;
        }

        .playlist-item:hover {
            background-color: #f8f9fa;
        }
    </style>

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">
            <!-- Main Content -->
            <div id="content">
                <!-- Begin Page Content -->
                <div class="container-fluid">
                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                    <h1 class="h3 mb-0 text-gray-800">Detail Pelanggaran</h1>
                    </div>

                    <!-- CCTV Grid -->
                    <div class="row">
                        <!-- CCTV Card 1 -->
                            <div class="col-md-3 mb-3">
                                <div class="card border-0 shadow rounded-3 mb-3">
                                    <!-- Foto mahasiswa -->
                                    <div class="col-md-12 my-2">
                                        <div class="card border-0 shadow rounded" style="height: 250px;">
                                        <img src="https://i.pinimg.com/736x/5f/40/6a/5f406ab25e8942cbe0da6485afd26b71.jpg"
                                        class="card-img-top rounded"
                                        style="height: 100%; width: 100%; object-fit: cover;" alt="..." />
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-9 mb-3">
                                <div class="card border-0 shadow">
                                    <div class="card-header">
                                        <div class="card-title mb-0 text-primary">
                                        <b>Identitas Mahasiswa Terlanggar</b>
                                        </div>
                                    </div>
                                <div class="card-body">
                                <div class="table-responsive" style="height: 175px; overflow-y: scroll;">
                                    <table class="table border-bottom w-100">
                                        <tr>
                                            <td>Nama</td>
                                            <td>:</td>
                                            <td>{{ $student->name }}</td>
                                        </tr>
                                        <tr>
                                            <td>Nim</td>
                                            <td>:</td>
                                            <td>{{ $student->nim }}</td>
                                        </tr>
                                        <tr>
                                            <td>Kelas</td>
                                            <td>:</td>
                                            <td>{{ $student->class }}</td>
                                        </tr>
                                        <tr>
                                            <td>Regular</td>
                                            <td>:</td>
                                            <td>{{ $student->reg }}</td>
                                        </tr>
                                        <tr>
                                            <td>Program Studi</td>
                                            <td>:</td>
                                            <td>{{ $student->academic_program->program_name }}</td>
                                        </tr>
                                        <tr>
                                            <td>Semester</td>
                                            <td>:</td>
                                            <td>{{ $student->semester }}</td>
                                        </tr>
                                    </table>
                                    </div>
                                </div>
                                
                                
                            </div>
                        </div>
                    </div>

                    <div class="card shadow mb-4">

                    {{-- Detail pelanggaran --}}
                        <div class="card border-0 shadow">
                                    <div class="card-header">
                                        <div class="card-title mb-0">
                                            <b>Detail Pelanggaran</b>
                                        </div>
                                    </div>
                                <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table border-bottom w-100">
                                        <tr>
                                            <td>Tipe Pelanggaran</td>
                                            <td>:</td>
                                            <td>{{ $violation->violation_type }}</td>
                                        </tr>
                                        <tr>
                                            <td>Deskripsi</td>
                                            <td>:</td>
                                            <td>{{ $violation->description }}</td>
                                        </tr>
                                        <tr>
                                            <td>Tanggal</td>
                                            <td>:</td>
                                            <td>{{ $violation->date }}</td>
                                        </tr>
                                        <tr>
                                            <td>Waktu</td>
                                            <td>:</td>
                                            <td>{{ $violation->time }}</td>
                                        </tr>
                                    </table>
                                    </div>
                                </div>
                        </div>
                        
                        {{-- Bukti foto pelanggaran --}}
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-danger">Bukti Pelanggaran (Foto)</h6>
                        </div>
                        <div class="card-body">
                            <div class="row justify-content-center">

                                @foreach ($evidences as $evidence)
                                    
                                <!-- Foto Muka 1 -->
                                <div class="col-md-3 my-1">
                                    <div class="card border-0 shadow rounded" style="height: 250px;">
                                    <img src="{{ asset('storage/images/evidences/' . $student->nim) . '/' . $evidence->file_path  }}"
                                        class="card-img-top rounded"
                                        style="height: 100%; width: 100%; object-fit: cover;" alt="..." />

                                    </div>
                                </div>

                                @endforeach

                            </div>
                        </div>

                        {{-- Bukti Video pelanggaran --}}
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-danger">Bukti Pelanggaran (Video)</h6>
                        </div>
                        <div class="card-body">
                            <div class="row justify-content-center mb-3">
                                <!-- Video 1 -->
                                <div class="col-md-12">
                                    <div>
                                        {{-- <img src="https://i.pinimg.com/736x/41/6f/4e/416f4e6077fe57cb51a12171b7c4c22a.jpg"
                                            class="card-img-top rounded"
                                            style="height: 100%; width: 100%; object-fit: cover;" alt="..." /> --}}

                                        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css" rel="stylesheet">

                                        <div class="video-container mb-4">
                                            <video id="videoPlayer" poster="https://media.gettyimages.com/id/612578598/video/beautiful-girl-smoking.jpg?s=640x640&k=20&c=dUigsZR1GbwENtndJT7OtDRw-lTwQHrSC2QdnuE42Ko=">
                                            <source src="https://media.gettyimages.com/id/612578598/video/beautiful-girl-smoking.mp4?s=mp4-640x640-gi&k=20&c=93G7oOoG5kYOg1uvLkQeoyit__jC-Q056z8ZUwIgruU=" type="video/mp4">
                                                Your browser does not support the video tag.
                                            </video>
                                            <div class="custom-controls">
                                                <button class="btn btn-light btn-sm" id="playPauseBtn"><i class="bi bi-play-fill"></i></button>

                                                <input type="range" class="form-range m-2" id="progressBar" min="0" max="100" step="1" value="0">
                                                
                                                <button class="btn btn-light btn-sm m-2" id="muteBtn"><i class="bi bi-volume-up-fill"></i></button>
                                                
                                                <button class="btn btn-light btn-sm" id="fullscreenBtn"><i class="bi bi-fullscreen"></i></button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                        </div>
                </div>
        </div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script>
    const video = document.getElementById('videoPlayer');
        const playPauseBtn = document.getElementById('playPauseBtn');
        const progressBar = document.getElementById('progressBar');
        const muteBtn = document.getElementById('muteBtn');
        const fullscreenBtn = document.getElementById('fullscreenBtn');

        playPauseBtn.addEventListener('click', () => {
            if (video.paused) {
                video.play();
                playPauseBtn.innerHTML = '<i class="bi bi-pause-fill"></i>';
            } else {
                video.pause();
                playPauseBtn.innerHTML = '<i class="bi bi-play-fill"></i>';
            }
        });

        video.addEventListener('timeupdate', () => {
            const progress = (video.currentTime / video.duration) * 100;
            progressBar.value = progress;
        });

        progressBar.addEventListener('input', () => {
            const time = (progressBar.value / 100) * video.duration;
            video.currentTime = time;
        });

        muteBtn.addEventListener('click', () => {
            video.muted = !video.muted;
            muteBtn.innerHTML = video.muted ? '<i class="bi bi-volume-mute-fill"></i>' : '<i class="bi bi-volume-up-fill"></i>';
        });

        fullscreenBtn.addEventListener('click', () => {
            if (video.requestFullscreen) {
                video.requestFullscreen();
            } else if (video.mozRequestFullScreen) {
                video.mozRequestFullScreen();
            } else if (video.webkitRequestFullscreen) {
                video.webkitRequestFullscreen();
            } else if (video.msRequestFullscreen) {
                video.msRequestFullscreen();
            }
        });
</script>
</x-app-layout>
