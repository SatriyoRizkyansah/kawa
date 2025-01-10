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
                    <h6 class="m-0 font-weight-bold text-primary">Data Gedung</h6>
                </div>
                <div class="card-body">

                <a href="{{ route('building.create') }}" class="btn btn-primary mb-4">
                    Tambah data
                </a>

                    <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                        <tr>
                            <th>No</th>
                            <th>Nama Gedung</th>
                            <th>Universitas</th>
                            <th>Action</th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach($buildings as $building)
                                <tr>
                                    {{-- <td>{{ $building->id }}</td> --}}
                                    <td class="border px-4 py-2">{{ $loop->iteration }}</td>
                                    <td class="border px-4 py-2">
                                        <a href="{{ route('floorByBuilding', ['id' => $building->id]) }}" class="text-decoration-none">{{ $building->building_name }}</a>
                                    </td>

                                    <td class="border px-4 py-2">{{ $building->university->university_name }}</td>
                                    <td class="border px-4 py-2 fs-5">
                                        <a href="{{ route('cameras.by.building', ['id' => $building->id]) }}" class="text-blue-500 hover:underline text-decoration-none">
                                            <i class="bi bi-eye text-success fs-5"></i>
                                        </a>

                                        <a href="{{ route('building.edit', ['id' => $building->id]) }}" class="text-blue-500 hover:underline text-decoration-none">
                                            <i class="bi bi-pencil-square"></i>
                                        </a>

                                        <a href="javascript:void(0)" onclick="if(confirm('Are you sure you want to delete this camera?')) { document.getElementById('delete-form-{{ $building->id }}').submit(); }" class="text-red-500 hover:underline">
                                            <i class="bi bi-trash text-danger"></i>
                                        </a>

                                        <form id="delete-form-{{ $building->id }}" action="{{ route('building.delete', ['id' => $building->id]) }}" method="POST" style="display: none;">
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
    
    <!-- Bootstrap core JavaScript-->
        <!-- jQuery -->
<script src="{{ asset('vendor/jquery/jquery.min.js') }}"></script>

<!-- Bootstrap Bundle -->
<script src="{{ asset('vendor/bootstrap/js/bootstrap.bundle.min.js') }}"></script>

<!-- Core Plugin jQuery Easing -->
<script src="{{ asset('vendor/jquery-easing/jquery.easing.min.js') }}"></script>

<!-- SB Admin 2 Core Script -->
<script src="{{ asset('js/sb-admin-2.min.js') }}"></script>

<!-- DataTables Plugin -->
<script src="{{ asset('vendor/datatables/jquery.dataTables.min.js') }}"></script>
<script src="{{ asset('vendor/datatables/dataTables.bootstrap4.min.js') }}"></script>

<!-- DataTables Custom Script -->
<script src="{{ asset('js/demo/datatables-demo.js') }}"></script>

</x-app-layout>



