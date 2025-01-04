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
                    <h6 class="m-0 font-weight-bold text-primary">Tambah Data Kamera</h6>
                </div>
                <div class="card-body">
                    <form method="POST">
                    @csrf

                    <div class="mb-4">
                                <label for="university">Universitas</label>
                                <select id="university" name="university" class="form-control" required>
                                    <option value="">Pilih Universitas</option>
                                    @foreach ($universities as $university)
                                        <option value="{{ $university->id }}">{{ $university->university_name }}</option>
                                    @endforeach
                                </select>
                        </div>

                       <div class="mb-4">
                           <label for="gedung">Gedung</label>
                           <select id="gedung" name="gedung" class="form-control" disabled required>
                               <option value="">Pilih Gedung</option>
                           </select>
                       </div>
                       
                       <div class="mb-4">
                           <label for="lantai">Lantai</label>
                           <select id="lantai" name="lantai" class="form-control" disabled required>
                               <option value="">Pilih Lantai</option>
                           </select>
                        </div>
                        
                        <div class="mb-4">
                            <label for="nama_kamera">Nama Kamera</label>
                            <input type="text" id="nama_kamera" name="nama_kamera" class="form-control" required>
                        </div>
                        <div class="mb-4">
                            <label for="rtsp">Link RTSP / HLS (Video Stream)</label>
                            <input type="url" id="rtsp" name="rtsp" class="form-control" required>
                        </div>
                        <div class="mb-4">
                            <label for="description">Deskripsi</label>
                            <input type="text" id="description" name="description" class="form-control" required>
                        </div>
                        <div class="mb-4">
                            <label for="device_color">Warna perangkat</label>
                            <input type="text" id="device_color" name="device_color" class="form-control" required>
                        </div>
                        <div class="mb-4">
                            <label for="ip">IP perangkat</label>
                            <input type="text" id="ip" name="ip" class="form-control" required>
                        </div>
                        <div class="mb-4">
                            <label for="type">Tipe perangkat</label>
                            <input type="text" id="type" name="type" class="form-control" required>
                        </div>
                        <div class="mb-4">
                            <label for="brand">Brand</label>
                            <input type="text" id="brand" name="brand" class="form-control" required>
                        </div>
                        <div class="mb-4">
                            <label for="version_model">Versi model</label>
                            <input type="text" id="version_model" name="version_model" class="form-control" required>
                        </div>
                        <div class="mb-4">
                            <label for="installation_date">Tanggal Installasi</label>
                            <input type="date" id="installation_date" name="installation_date" class="form-control" required>
                        </div>
                        
                        
                        <button type="submit" name="submit" class="btn btn-primary">
                        Simpan Kamera
                        </button>
                    </form>
                </div>
            </div>
            <!-- /.container-fluid -->
            </div>
        </div>
    <!-- End of Main Content -->

      <!-- JavaScript for Dynamic Dropdown -->
    <script>
        document.getElementById('university').addEventListener('change', function () {
            let universityId = this.value;
            let gedungDropdown = document.getElementById('gedung');
            let lantaiDropdown = document.getElementById('lantai');

            // Reset Gedung dan Lantai
            gedungDropdown.innerHTML = '<option value="">Pilih Gedung</option>';
            lantaiDropdown.innerHTML = '<option value="">Pilih Lantai</option>';
            lantaiDropdown.disabled = true;

            if (universityId) {
                fetch(`/api/get-gedung/${universityId}`)
                    .then(response => response.json())
                    .then(data => {
                        gedungDropdown.innerHTML = '<option value="">Pilih Gedung</option>';
                        data.forEach(item => {
                            gedungDropdown.innerHTML += `<option value="${item.id}">${item.building_name}</option>`;
                        });
                        gedungDropdown.disabled = false;
                    });
            } else {
                gedungDropdown.disabled = true;
            }
        });

        document.getElementById('gedung').addEventListener('change', function () {
            let gedungId = this.value;
            let lantaiDropdown = document.getElementById('lantai');

            // Reset Lantai
            lantaiDropdown.innerHTML = '<option value="">Pilih Lantai</option>';

            if (gedungId) {
                fetch(`/api/get-lantai/${gedungId}`)
                    .then(response => response.json())
                    .then(data => {
                        data.forEach(item => {
                            lantaiDropdown.innerHTML += `<option value="${item.id}">${item.floor_name}</option>`;
                        });
                        lantaiDropdown.disabled = false;
                    });
            } else {
                lantaiDropdown.disabled = true;
            }
        });
    </script>
</x-app-layout>
