<x-app-layout>

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">
            <!-- Main Content -->
            <div id="content">
                <!-- Begin Page Content -->
                <div class="container-fluid">
                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                    <h1 class="h3 mb-0 text-gray-800">Detail Mahasiswa</h1>
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
                                        <b>Identitas Mahasiswa</b>
                                        </div>
                                    </div>
                                <div class="card-body">
                                <div class="table-responsive" style="height: 175px; overflow-y: scroll;">
                                    <table class="table border-bottom w-100">
                                        <tr>
                                            <td>Nama</td>
                                            <td>:</td>
                                            <td>{{ $student_data->student->name }}</td>
                                        </tr>
                                        <tr>
                                            <td>Nim</td>
                                            <td>:</td>
                                            <td>{{ $student_data->student->nim }}</td>
                                        </tr>
                                        <tr>
                                            <td>Kelas</td>
                                            <td>:</td>
                                            <td>{{ $student_data->student->class }}</td>
                                        </tr>
                                        <tr>
                                            <td>Regular</td>
                                            <td>:</td>
                                            <td>{{ $student_data->student->reg }}</td>
                                        </tr>
                                        {{-- <tr>
                                            <td>Fakultas</td>
                                            <td>:</td>
                                            <td>{{ $student_data->student->faculty }}</td>
                                        </tr> --}}
                                        <tr>
                                            <td>Program Studi</td>
                                            <td>:</td>
                                            <td>{{ $student_data->student->academic_program->program_name }}</td>
                                        </tr>
                                        <tr>
                                            <td>Semester</td>
                                            <td>:</td>
                                            <td>{{ $student_data->student->semester }}</td>
                                        </tr>
                                    </table>
                                    </div>
                                </div>
                            </div>                            
                        </div>
                    </div>
                    <div class="card shadow mb-4">
                        
                    <div class="container p-3">
                        
                        <div class="d-flex justify-content-between mb-2 ml-4">
                            <div>
                                <input class="form-check-input" type="checkbox" id="selectAll" onclick="toggleSelectAll()">
                                <label class="form-check-label" for="selectAll">Select All</label>
                            </div>
                            <button class="btn btn-danger" onclick="deleteSelected()">Delete Selected</button>
                        </div>

                        <div class="row" id="photoContainer">
                            <div class="col-md-3 mb-3">
                                <div class="card border-0 shadow rounded position-relative" style="height: 250px; width: 13rem;">
                                    <input class="form-check-input position-absolute top-0 start-0 m-2 photo-checkbox" type="checkbox">
                                    <img src="https://i.pinimg.com/736x/76/17/ee/7617eeb25a0080cb69b1de1770dd32e9.jpg"
                                        class="card-img-top rounded"
                                        style="height: 100%; width: 100%; object-fit: cover;" alt="Foto" />
                                </div>
                            </div>

                            <div class="col-md-3 mb-3">
                                <div class="card border-0 shadow rounded position-relative" style="height: 250px; width: 13rem;">
                                    <input class="form-check-input position-absolute top-0 start-0 m-2 photo-checkbox" type="checkbox">
                                    <img src="https://i.pinimg.com/736x/76/17/ee/7617eeb25a0080cb69b1de1770dd32e9.jpg"
                                        class="card-img-top rounded"
                                        style="height: 100%; width: 100%; object-fit: cover;" alt="Foto" />
                                </div>
                            </div>

                            <div class="col-md-3 mb-3">
                                <div class="card border-0 shadow rounded position-relative" style="height: 250px; width: 13rem;">
                                    <input class="form-check-input position-absolute top-0 start-0 m-2 photo-checkbox" type="checkbox">
                                    <img src="https://i.pinimg.com/736x/76/17/ee/7617eeb25a0080cb69b1de1770dd32e9.jpg"
                                        class="card-img-top rounded"
                                        style="height: 100%; width: 100%; object-fit: cover;" alt="Foto" />
                                </div>
                            </div>

                            <div class="col-md-3 mb-3">
                                <div class="card border-0 shadow rounded position-relative" style="height: 250px; width: 13rem;">
                                    <input class="form-check-input position-absolute top-0 start-0 m-2 photo-checkbox" type="checkbox">
                                    <img src="https://i.pinimg.com/736x/76/17/ee/7617eeb25a0080cb69b1de1770dd32e9.jpg"
                                        class="card-img-top rounded"
                                        style="height: 100%; width: 100%; object-fit: cover;" alt="Foto" />
                                </div>
                            </div>
                        </div>
                    </div>




                </div>
        </div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<script>
    function toggleSelectAll() {
        const checkboxes = document.querySelectorAll('.photo-checkbox');
        const selectAll = document.getElementById('selectAll');
        checkboxes.forEach(cb => cb.checked = selectAll.checked);
    }

    function deleteSelected() {
        const selectedPhotos = document.querySelectorAll('.photo-checkbox:checked');
        if (selectedPhotos.length === 0) {
            alert("Pilih setidaknya satu foto untuk dihapus.");
            return;
        }

        if (confirm("Apakah Anda yakin ingin menghapus foto yang dipilih?")) {
            selectedPhotos.forEach(photo => {
                photo.closest('.col-md-3').remove();
            });
        }
    }
</script>
</x-app-layout>
