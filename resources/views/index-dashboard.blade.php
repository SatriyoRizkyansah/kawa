<x-app-layout>

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
</script>
