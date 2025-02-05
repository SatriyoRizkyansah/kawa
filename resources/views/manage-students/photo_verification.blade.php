<x-app-layout>

    <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">
            <!-- Main Content -->
            <div id="content">

                <!-- Begin Page Content -->
            <div class="container-fluid">
                <!-- Page Heading -->

                <!-- DataTales Example -->
                <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Data Mahasiswa</h6>
                </div>
                <div class="card-body">

                    {{-- Alert error --}}
                    @if (session('loginError'))
                        <div class="alert alert-danger alert-dismissible fade show my-3" role="alert">
                        {{ session('loginError') }}
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                        </button>
                        </div>
                    @endif

                    {{-- Alert sukses --}}
                    @if (session('success'))
                        <div class="alert alert-success alert-dismissible fade show my-3" role="alert">
                        {{ session('success') }}
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                        </button>
                        </div>
                    @endif

                    <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                        <tr>
                            <th>No</th>
                            <th>Nama Mahasiswa</th>
                            <th>Nim</th>
                            <th>Program Studi</th>
                            <th>Status Foto</th>
                            <th>Action</th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach($datas as $data)
                            <tr>
                                <td class="border px-4 py-2">{{ $loop->iteration }}</td>

                                {{-- <td class="border px-4 py-2">
                                    <a href="{{ route('buildingByUniversity', ['id' => $faculty->id]) }}" class="text-decoration-none">{{ $faculty->university_name }}</a>
                                </td> --}}

                                <td class="border px-4 py-2">{{ $data->student->name }}</td>
                                <td class="border px-4 py-2">{{ $data->student->nim }}</td>
                                <td class="border px-4 py-2">{{ $data->student->academic_program->program_name }}</td>
                                <td class="border px-4 py-2">
                                    <span class="badge 
                                        {{ $data->status === 'approved' ? 'bg-success' : 
                                        ($data->status === 'rejected' ? 'bg-danger' : 'bg-warning text-dark') }}">
                                        {{ ucfirst($data->status) }}
                                    </span>
                                </td>
                                <td class="text-center">
                                    <a href="{{ route('camera.detail', ['id' => $data->id]) }}" class="text-blue-500 hover:underline text-decoration-none">
                                        <i class="bi bi-eye text-success fs-5"></i>
                                    </a>
                                </td>
                            </tr>
                        @endforeach
                        </tbody>
                    </table>
                    </div>
                </div>
                </div>
            </div>
            <!-- /.container-fluid -->
            </div>
        </div>
    <!-- End of Main Content -->
</x-app-layout>


<!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="js/demo/datatables-demo.js"></script>

