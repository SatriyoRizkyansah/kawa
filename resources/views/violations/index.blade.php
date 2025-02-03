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
                    <h6 class="m-0 font-weight-bold text-primary">Data Pelanggaran Kode Etik Mahasiswa</h6>
                </div>
                <div class="card-body">
                
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
                            <th>Pelanggaran</th>
                            <th>Deskripsi</th>
                            <th>Tanggal</th>
                            <th>Jam</th>
                            <th>Mahasiswa Terlanggar</th>
                            <th>Aksi</th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach($violations as $violation)
                                <tr>
                                    {{-- <td>{{ $building->id }}</td> --}}
                                    <td class="border px-4 py-2">{{ $loop->iteration }}</td>
                                    <td class="border px-4 py-2"> {{ $violation->violation_type }} </td>
                                    <td class="border px-4 py-2">{{ $violation->description }}</td>
                                    <td class="border px-4 py-2">{{ $violation->date }}</td>
                                    <td class="border px-4 py-2">{{ $violation->time }}</td>
                                    <td class="border px-4 py-2">{{ $violation->student->name }} ({{ $violation->student->nim }})</td>
                                    <td>
                                        <a href="{{ route('detail.violation', ['id' =>  $violation->id]) }}" class="text-center text-blue-500 hover:underline text-decoration-none">
                                            <i class="bi bi-eye text-success fs-5"></i>
                                        </a>
                                    </td>

                                    {{-- <td class="border px-4 py-2 fs-5">
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
                                    </td> --}}

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



