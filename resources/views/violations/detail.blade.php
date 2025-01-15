<x-app-layout>

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
                                            <td>Fakultas</td>
                                            <td>:</td>
                                            <td>{{ $student->faculty }}</td>
                                        </tr>
                                        <tr>
                                            <td>Program Studi</td>
                                            <td>:</td>
                                            <td>{{ $student->program_study }}</td>
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
                        
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-danger">Bukti Pelanggaran</h6>
                        </div>
                        <div class="card-body">
                            <div class="row justify-content-center">
                                <!-- Foto Muka 1 -->
                                <div class="col-md-3">
                                    <div class="card border-0 shadow rounded" style="height: 250px;">
                                        <img src="https://i.pinimg.com/736x/a3/bb/c1/a3bbc18109f04f2ee4d447f231a205ad.jpg"
                                            class="card-img-top rounded"
                                            style="height: 100%; width: 100%; object-fit: cover;" alt="..." />
                                    </div>
                                </div>
                                <!-- Foto Muka 2 -->
                                <div class="col-md-3">
                                    <div class="card border-0 shadow rounded" style="height: 250px;">
                                        <img src="https://i.pinimg.com/736x/64/36/db/6436dbfad18caa427b41c9a30528f4f5.jpg"
                                            class="card-img-top rounded"
                                            style="height: 100%; width: 100%; object-fit: cover;" alt="..." />
                                    </div>
                                </div>
                                <!-- Foto Muka 3 -->
                                <div class="col-md-3">
                                    <div class="card border-0 shadow rounded" style="height: 250px;">
                                        <img src="https://i.pinimg.com/736x/64/36/db/6436dbfad18caa427b41c9a30528f4f5.jpg"
                                            class="card-img-top rounded"
                                            style="height: 100%; width: 100%; object-fit: cover;" alt="..." />
                                    </div>
                                </div>
                                <!-- Foto Muka 4 -->
                                <div class="col-md-3">
                                    <div class="card border-0 shadow rounded" style="height: 250px;">
                                        <img src="https://i.pinimg.com/736x/c0/cd/00/c0cd001998a09110b74c347071b96377.jpg"
                                            class="card-img-top rounded"
                                            style="height: 100%; width: 100%; object-fit: cover;" alt="..." />
                                    </div>
                                </div>
                            </div>
                            <!-- /.container-fluid -->
                        </div>

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
                        <!-- End of Main Content -->
                    </div>
            </div>
        </div>

</x-app-layout>
