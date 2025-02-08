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

                    @if(session('success'))
                    <div class="alert alert-success alert-dismissible fade show" role="alert">
                        {{ session('success') }}
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                    </div>
                @endif

                @if(session('error'))
                    <div class="alert alert-danger alert-dismissible fade show" role="alert">
                        {{ session('error') }}
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                    </div>
                @endif

                @if ($errors->any())
                    <div class="alert alert-danger alert-dismissible fade show" role="alert">
                        <ul class="mb-0">
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                    </div>
                @endif

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
                                            <td>Status</td>
                                            <td>:</td>
                                            <td>
                                                <span class="badge 
                                                    {{ $student_data->status === 'approved' ? 'bg-success' : 
                                                    ($student_data->status === 'rejected' ? 'bg-danger' : 'bg-warning text-dark') }}">
                                                    {{ ucfirst($student_data->status) }}
                                                </span>
                                            </td>
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
                            <form action="{{ route('photos.delete') }}" method="POST">
                                @csrf
                                <div class="d-flex justify-content-between mb-2">
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-info btn-sm dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                                            Status Foto
                                        </button>
                                        <ul class="dropdown-menu">
                                            <li><a class="dropdown-item" href="#">Status</a></li>
                                            <li><a class="dropdown-item" href="#">Another action</a></li>
                                            <li><a class="dropdown-item" href="#">Something else here</a></li>
                                            <li><hr class="dropdown-divider"></li>
                                            <li><a class="dropdown-item" href="#">Separated link</a></li>
                                        </ul>
                                    </div>
                                    
                                    <div class="form-check form-switch">
                                        <input class="form-check-input" type="checkbox" role="switch" id="selectAll" onclick="toggleSelectAll()">
                                        <label class="form-check-label mr-3" for="selectAll" style="font-size: 0.9rem">Select All </label>
                                    </div>
                                </div>

                                <div class="row" id="photoContainer">
                                    @foreach ($datas as $data)
                                        <div class="col-md-3 mb-3">
                                            <div class="card border-0 shadow rounded position-relative" style="height: 250px; width: 13rem;">
                                                <input class="form-check-input position-absolute top-0 start-0 m-2 photo-checkbox" 
                                                    type="checkbox" 
                                                    name="photo_ids[]" 
                                                    value="{{ $data->id }}">
                                                <img src="{{ asset('storage/images/student_media/' . $data->student->nim) . '/' . $data->file_name  }}"
                                                    class="card-img-top rounded"
                                                    style="height: 100%; width: 100%; object-fit: cover;" alt="Foto" />
                                            </div>
                                        </div>
                                    @endforeach
                                </div>
                                
                                <div class="d-flex justify-content-end mr-3">
                                    <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Apakah Anda yakin ingin menghapus foto yang dipilih?')">
                                        Delete Selected <i class="bi bi-trash"></i>
                                    </button>

                                    <button type="submit" class="ml-3 btn btn-primary btn-sm" style="width: 6rem">Save</button>
                                </div>
                            </form>
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

</script>
</x-app-layout>
