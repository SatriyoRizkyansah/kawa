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
                    <h6 class="m-0 font-weight-bold text-primary">Data Lantai</h6>
                </div>
                <div class="card-body">

                    <a href="{{ route('floor.create') }}">
                        <button class="btn btn-primary mb-4">
                            Tambah data 
                        </button>
                    </a>
                    

                    <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                        <tr>
                            <th>No</th>
                            <th>Lantai</th>
                            <th>Universitas</th>
                            <th>Gedung</th>
                            <th>Universitas</th>
                            <th>Action</th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach($floors as $floor)
                                <tr>
                                    <td class="border px-4 py-2">{{ $loop->iteration }}</td>
                                    <td class="border px-4 py-2">{{ $floor->floor_name }}</td>
                                    <td class="border px-4 py-2">{{ $floor->university->university_name }}</td>
                                    <td class="border px-4 py-2">{{ $floor->building->building_name }}</td>
                                    <td class="border px-4 py-2">{{ $floor->building->university->university_name }}</td>
                                    <td class="border px-4 py-2 fs-5">

                                        <a href="{{ route('cameras.by.floor', ['id' => Crypt::encryptString($floor->id . '|' . now()->timestamp)]) }}" class="text-blue-500 hover:underline text-decoration-none">
                                            <i class="bi bi-eye text-success fs-5"></i>
                                        </a>

                                        <a href="{{ route('floor.edit', ['id' => Crypt::encryptString($floor->id . '|' . now()->timestamp)]) }}" class="text-blue-500 hover:underline text-decoration-none">
                                            <i class="bi bi-pencil-square"></i>
                                        </a>

                                        <a href="javascript:void(0)" onclick="if(confirm('Are you sure you want to delete this camera?')) { document.getElementById('delete-form-{{ $floor->id }}').submit(); }" class="text-red-500 hover:underline">
                                            <i class="bi bi-trash text-danger"></i>
                                        </a>

                                        <form id="delete-form-{{ $floor->id }}" action="{{ route('floor.delete' , ['id' => $floor->id]) }}" method="POST" style="display: none;">
                                            @csrf
                                            @method('DELETE')
                                        </form>
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

