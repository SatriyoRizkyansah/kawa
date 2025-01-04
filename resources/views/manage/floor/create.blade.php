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
                    <h6 class="m-0 font-weight-bold text-primary">Tambah Data Lantai</h6>
                </div>
                <div class="card-body">
                    <form method="POST">
                        @csrf
                        <div class="mb-4">
                        <label for="floor_name">Nama lantai</label>
                        <input type="text" id="title" name="floor_name" class="form-control" required>
                    </div>
                    <div class="mb-4">
                        <label for="slug">Slug</label>
                        <input type="text" id="slug" name="slug" class="form-control" required>
                    </div>
                    <div class="mb-4">
                            <label for="building">Gedung</label>
                            <select id="building" name="building" class="form-control" required>
                    
                                @foreach ($buildings as $building)
                                    <option value="{{ $building->id }}">{{ $building->building_name }} | {{ $building->university->university_name }}</option>
                                @endforeach
                    
                            </select>
                    </div>
                    <button type="submit" name="submit" class="bg-blue-500 hover:bg-blue-600 text-black px-4 py-2 rounded-md shadow-md hover:shadow-lg border border-blue-500 font-bold">
                    Simpan
                    </button>
                        </form>
                </div>
            </div>
            <!-- /.container-fluid -->
            </div>
        </div>
    <!-- End of Main Content -->

</x-app-layout>

<script>
    // Slug otomatis
    const title = document.querySelector('#title');
    const slug = document.querySelector('#slug');

    title.addEventListener("keyup", function() {
            let preslug = title.value;
            preslug = preslug.replace(/ /g,"-");
            slug.value = preslug.toLowerCase();
        });

    document.addEventListener('trix-file-accept', function(e){
        e.preventDefault();
    })
</script>