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
                        <h6 class="m-0 font-weight-bold text-primary">Edit Data Lantai</h6>
                    </div>
                    <div class="card-body">
                        <form method="POST">
                            @csrf

                            <div class="mb-4">
                                <input type="text" id="id" name="id" value="{{ $floor->id  }}" class="form-control" hidden>
                            </div>

                            <!-- Universitas Dropdown -->
                            <div class="mb-4">
                                <label for="university">Universitas</label>
                                <select id="university" name="university" class="form-control" required>
                                    <option value="">Pilih Universitas</option>
                                    @foreach ($universities as $university)
                                        <option value="{{ $university->id }}" {{ $floor->university_id == $university->id ? 'selected' : '' }}>
                                            {{ $university->university_name }}
                                        </option>
                                    @endforeach
                                </select>
                            </div>

                            <!-- Gedung Dropdown -->
                            <div class="mb-4">
                                <label for="gedung">Gedung</label>
                                <select id="gedung" name="building" class="form-control" required>
                                    <option value="">Pilih Gedung</option>
                                </select>
                            </div>

                            <!-- Nama Lantai -->
                            <div class="mb-4">
                                <label for="floor_name">Nama Lantai</label>
                                <input type="text" value="{{ $floor->floor_name }}" id="floor_name" name="floor_name" class="form-control" required>
                            </div>

                            <!-- Slug -->
                            <div class="mb-4">
                                <label for="slug">Slug</label>
                                <input type="text" value="{{ $floor->slug }}" id="slug" name="slug" class="form-control" required>
                            </div>

                            <button type="submit" name="submit" class="bg-blue-500 hover:bg-blue-600 text-black px-4 py-2 rounded-md shadow-md hover:shadow-lg border border-blue-500 font-bold">
                                Simpan
                            </button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End of Main Content -->

    <script>
        // Slug otomatis
        const floorName = document.querySelector('#floor_name');
        const slug = document.querySelector('#slug');

        floorName.addEventListener("keyup", function() {
            let preslug = floorName.value;
            preslug = preslug.replace(/ /g, "-");
            slug.value = preslug.toLowerCase();
        });

        // Dropdown Gedung berdasarkan Universitas
        document.addEventListener('DOMContentLoaded', function () {
            const universityDropdown = document.getElementById('university');
            const gedungDropdown = document.getElementById('gedung');
            const selectedBuildingId = '{{ $floor->building_id }}'; // ID Gedung yang sudah dipilih sebelumnya

            function loadBuildings(universityId, preselectedBuilding = null) {
                gedungDropdown.innerHTML = '<option value="">Pilih Gedung</option>';
                gedungDropdown.disabled = true;

                if (universityId) {
                    fetch(`/manage/floor/create/get-gedung/${universityId}`)
                        .then(response => response.json())
                        .then(data => {
                            data.forEach(item => {
                                let option = document.createElement('option');
                                option.value = item.id;
                                option.textContent = item.building_name;
                                if (preselectedBuilding && item.id == preselectedBuilding) {
                                    option.selected = true;
                                }
                                gedungDropdown.appendChild(option);
                            });
                            gedungDropdown.disabled = false;
                        });
                }
            }

            // Panggil saat halaman pertama kali dimuat
            loadBuildings(universityDropdown.value, selectedBuildingId);

            // Panggil saat universitas diubah
            universityDropdown.addEventListener('change', function () {
                loadBuildings(this.value);
            });
        });
    </script>
</x-app-layout>
