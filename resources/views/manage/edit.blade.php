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
                        <label for="description">Deskripsi</label>
                        <input type="text" value="{{ $camera->description }}" id="description" name="description" class="form-control" required>
                    </div>
                    <div class="mb-4">
                        <label for="device_color">Warna perangkat</label>
                        <input type="text" value="{{ $camera->device_color }}" id="device_color" name="device_color" class="form-control" required>
                    </div>
                    <div class="mb-4">
                        <label for="ip">IP perangkat</label>
                        <input type="text" value="{{ $camera->ip }}" id="ip" name="ip" class="form-control" required>
                    </div>
                    <div class="mb-4">
                        <label for="type">Tipe perangkat</label>
                        <input type="text" value="{{ $camera->type }}" id="type" name="type" class="form-control" required>
                    </div>
                    <div class="mb-4">
                        <label for="brand">Brand</label>
                        <input type="text" value="{{ $camera->brand }}" id="brand" name="brand" class="form-control" required>
                    </div>
                    <div class="mb-4">
                        <label for="version_model">Versi model</label>
                        <input type="text" value="{{ $camera->version_model }}" id="version_model" name="version_model" class="form-control" required>
                    </div>
                    <div class="mb-4">
                        <label for="installation_date">Tanggal Installasi</label>
                        <input type="date" value="{{ $camera->installation_date }}" id="installation_date" name="installation_date" class="form-control" required>
                    </div>

                    <div class="mb-4">
                        <label for="university">Universitas</label>
                        <select id="university" name="university" class="form-control" required>
                            @foreach ($universities as $university)
                                <option value="{{ $university->id }}" {{ $camera->university_id == $university->id ? 'selected' : '' }}>
                                    {{ $university->university_name }}
                                </option>
                            @endforeach
                        </select>
                    </div>

                    <div class="mb-4">
                        <label for="gedung">Gedung</label>
                        <select id="gedung" name="gedung" class="form-control" required>
                            @foreach ($buildings as $building)
                                <option value="{{ $building->id }}" {{ $camera->building_id == $building->id ? 'selected' : '' }}>
                                    {{ $building->building_name }}
                                </option>
                            @endforeach
                        </select>
                    </div>

                    <div class="mb-4">
                        <label for="lantai">Lantai</label>
                        <select id="lantai" name="lantai" class="form-control" required>
                            @foreach ($floors as $floor)
                                <option value="{{ $floor->id }}" {{ $camera->floor_id == $floor->id ? 'selected' : '' }}>
                                    {{ $floor->floor_name }}
                                </option>
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