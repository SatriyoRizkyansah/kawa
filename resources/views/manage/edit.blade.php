<x-app-layout>
    
    <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">
            <!-- Main Content -->
            <div id="content">
            <!-- Begin Page Content -->
            <div class="container-fluid">

                <!-- DataTales Example -->
                <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Edit Data Kamera</h6>
                </div>
                <div class="card-body">
                    <form method="POST">
                        @csrf
                        <div class="mb-4">
                        <label for="nama_kamera">Nama Kamera</label>
                        <input type="text" value="{{ $camera->nama_kamera }}" id="nama_kamera" name="nama_kamera" class="form-control" required>
                    </div>
                    <div class="mb-4">
                        <label for="rtsp">Link RTSP / Video Stream</label>
                        <input type="url" value="{{ $camera->rtsp }}" id="rtsp" name="rtsp" class="form-control" required>
                    </div>
                    <div class="mb-4">
                        <label for="gedung">Gedung</label>
                        <select id="gedung" name="gedung" class="form-control" required>

                            @foreach ($buildings as $building)
                                <option value="{{ $building->id }}">{{ $building->building_name }}</option>
                            @endforeach
                  
                        </select>
                    </div>
                    <div class="mb-4">
                        <label for="lantai">Lantai</label>
                        <select id="lantai" name="lantai" class="form-control" required>

                            @foreach ($floors as $floor)
                                <option value="{{ $floor->id }}">{{ $floor->floor_name }}</option>
                            @endforeach

                        </select>
                    </div>
                    <button type="submit" name="submit" class="btn btn-primary">
                    Update Kamera
                    </button>
                        </form>
                </div>
            </div>
            <!-- /.container-fluid -->
            </div>
        </div>
    <!-- End of Main Content -->

</x-app-layout>