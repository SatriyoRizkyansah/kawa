<x-app-layout>

    <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">
            <!-- Main Content -->
            <div id="content">

            <!-- Begin Page Content -->
            <div class="container-fluid">
                <!-- Page Heading -->
                {{-- <h1 class="h3 mb-2 text-gray-800">Manage Data Kamera</h1> --}}

                <!-- DataTales Example -->
                <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Manage Data Kamera</h6>
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

                    <a href="{{ route('camera.create') }}">
                        <button class="btn btn-primary mb-4">
                            Tambah data 
                        </button>
                    </a>
                    
                    <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">

                        <thead>
                        <tr>
                            <th>No</th>
                            <th>Nama Kamera</th>
                            <th>Link</th>
                            <th>Universitas</th>
                            <th>Gedung</th>
                            <th>Lantai</th>
                            <th>Action</th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach($cameras as $camera)
                                <tr>
                                    <td class="border px-4 py-2">{{ $loop->iteration }}</td>
                                    <td class="border px-4 py-2">{{ $camera->nama_kamera }}</td>
                                    <td class="border px-4 py-2"><a href="{{ $camera->rtsp }}" class="text-blue-500 hover:underline">{{ $camera->rtsp }}</a></td>
                                    <td class="border px-4 py-2">{{ $camera->university->university_name }}</td>
                                    <td class="border px-4 py-2">{{ $camera->building->building_name }}</td>
                                    <td class="border px-4 py-2">{{ $camera->floor->floor_name }}</td>
                                    <td class="border px-4 py-2 fs-5">
                                        <a href="{{ route('camera.detail', ['id' => $camera->id]) }}" class="text-blue-500 hover:underline text-decoration-none">
                                            <i class="bi bi-eye text-success fs-5"></i>
                                        </a>

                                        <a href="{{ route('camera.edit', ['id' => $camera->id]) }}" class="text-blue-500 hover:underline text-decoration-none">
                                            <i class="bi bi-pencil-square"></i>
                                        </a>

                                        <a href="javascript:void(0)" onclick="if(confirm('Are you sure you want to delete this camera?')) { document.getElementById('delete-form-{{ $camera->id }}').submit(); }" class="text-red-500 hover:underline">
                                            <i class="bi bi-trash text-danger"></i>
                                        </a>

                                        <form id="delete-form-{{ $camera->id }}" action="{{ route('camera.delete', ['id' => $camera->id]) }}" method="POST" style="display: none;">
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


<!-- Bootstrap core JavaScript -->
<script src="{{ asset('vendor/jquery/jquery.min.js') }}"></script>
<script src="{{ asset('vendor/bootstrap/js/bootstrap.bundle.min.js') }}"></script>

<!-- Core plugin JavaScript -->
<script src="{{ asset('vendor/jquery-easing/jquery.easing.min.js') }}"></script>

<!-- Custom scripts for all pages -->
<script src="{{ asset('js/sb-admin-2.min.js') }}"></script>

<!-- DataTables JS -->
<script src="{{ asset('vendor/datatables/jquery.dataTables.min.js') }}"></script>
<script src="{{ asset('vendor/datatables/dataTables.bootstrap4.min.js') }}"></script>

<!-- DataTables Initialization Script -->
<script>
    $(document).ready(function () {
        $('#dataTable').DataTable();
    });
</script>


</x-app-layout>




