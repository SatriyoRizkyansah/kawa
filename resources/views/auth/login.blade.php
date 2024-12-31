<x-guest-layout>
    <!-- Session Status -->
    <x-auth-session-status class="mb-4" :status="session('status')" />

    <style>
      body {
        background-image: url("images/bg.png");
        /* Ganti dengan URL gambar Anda */
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        height: 100vh;
        position: relative;
      }

      /* Menambahkan overlay transparan */
      body::before {
        content: "";
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background: rgba(0, 123, 255, 0.812);
        /* Transparansi 50% */
        z-index: 1;
      }

      .container-fluid {
        position: relative;
        z-index: 2;
        /* Agar konten muncul di atas overlay */
      }
    </style>

        <div class="container-fluid vh-100 d-flex justify-content-center align-items-center">
      <div class="card o-hidden border-0 shadow-lg" style="width: 400px">
        <div class="card-body p-0">
          <div class="p-4">
            <div class="text-center d-flex justify-content-between align-items-center mb-3 px-3">
              <img src="images/sasmita.png" width="50" height="50" alt="" />
              <h4 class="text-gray-900 font-weight-bold mb-0">LOGIN</h4>
              <img src="images/logo-unpam.png" width="50" height="50" alt="" />
            </div>
            <form class="user" method="POST" action="{{ route('login')}}" >
              @csrf
              <div class="form-group">
                <input type="email" name="email" class="form-control form-control-user rounded" id="exampleInputEmail" aria-describedby="emailHelp" placeholder="Enter Email Address..." />
              </div>
              <div class="form-group">
                <input type="password" name="password" class="form-control form-control-user rounded" id="exampleInputPassword" placeholder="Password" />
              </div>
              <div class="form-group">
                <div class="custom-control custom-checkbox small">
                  <input type="checkbox" class="custom-control-input" id="customCheck" name="remember_me"/>
                  <label class="custom-control-label" for="customCheck">Remember Me</label>
                </div>
                </div>
              <button type="submit" class="btn btn-primary btn-user btn-block rounded"> Login </button>
            </form>
          </div>
        </div>
      </div>
    </div>


</x-guest-layout>
