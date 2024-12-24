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
                    <h6 class="m-0 font-weight-bold text-primary">Edit Data Lantai</h6>
                </div>
                <div class="card-body">
                    <form method="POST">
                        @csrf
                        <div class="mb-4">
                        <label for="floor_name">Nama lantai</label>
                        <input type="text" id="floor_name" name="floor_name" class="form-control" required>
                    </div>
                    <div class="mb-4">
                        <label for="slug">Slug</label>
                        <input type="text" id="slug" name="slug" class="form-control" required>
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