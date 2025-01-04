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
                         <label for="university">Universitas</label>
                         <select id="university" name="university" class="form-control" required>
                             <option value="">Pilih Universitas</option>
                             @foreach ($universities as $university)
                                 <option value="{{ $university->id }}">{{ $university->university_name }}</option>
                             @endforeach
                         </select>
                 </div>

                <div class="mb-4">
                    <label for="gedung">Gedung</label>
                    <select id="gedung" name="building" class="form-control" disabled required>
                        <option value="">Pilih Gedung</option>
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

 <script>
        document.getElementById('university').addEventListener('change', function () {
            let universityId = this.value;
            let gedungDropdown = document.getElementById('gedung');

            // Reset Gedung dan Lantai
            gedungDropdown.innerHTML = '<option value="">Pilih Gedung</option>';

            if (universityId) {
                fetch(`/manage/floor/create/get-gedung/${universityId}`)
                    .then(response => response.json())
                    .then(data => {
                        gedungDropdown.innerHTML = '<option value="">Pilih Gedung</option>';
                        data.forEach(item => {
                            gedungDropdown.innerHTML += `<option value="${item.id}">${item.building_name}</option>`;
                        });
                        gedungDropdown.disabled = false;
                    });
            } else {
                gedungDropdown.disabled = true;
            }
        });
    </script>
</x-app-layout>

