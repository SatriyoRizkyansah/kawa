
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
                    <h6 class="m-0 font-weight-bold text-primary">Edit Data Universitas</h6>
                </div>
                <div class="card-body">
                    <form method="POST" enctype="multipart/form-data">
                        @csrf

                        <div class="mb-4">
                            <input type="text" id="id" name="id" value="{{ $university->id }}" class="form-control" hidden>
                        </div>

                        <div class="mb-4">
                            <label for="university_name">Nama Universitas</label>
                            <input type="text" value="{{ $university->university_name }}" id="title" name="university_name" class="form-control" required>
                        </div>

                        <div class="mb-4">
                            <label for="slug">Slug</label>
                            <input type="text" value="{{ $university->slug }}" id="slug" name="slug" class="form-control" required>
                        </div>

                        <div class="mb-4">
                            <label class="form-label" for="img">Gambar:</label>
                            <input type="file" class="form-control" id="img" name="img">
                            @if($university->img)
                                <div class="mt-2">
                                    <img src="{{ asset('storage/images/university/' . $university->img) }}" alt="Gambar Lama" style="width: 200px; height: auto;">
                                </div>
                            @endif
                        </div>

                        <div class="mb-4">
                            <label for="description">Deskripsi</label>
                            <input type="text" id="description" value="{{ $university->description }}" name="description" class="form-control" required>
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


