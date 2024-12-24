<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Kamera Pengawasan</title>
    <style>
        /* CSS Embed */
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background: linear-gradient(rgba(255, 0, 0, 0.7), rgba(255, 0, 0, 0.7)), url('unpam-vv.jpeg') no-repeat center center fixed;
            background-size: cover;
            color: white;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .login-container {
            background: white;
            border-radius: 10px;
            padding: 30px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            width: 480px;
            text-align: center;
        }

        .login-container img {
            max-width: 100px;
            margin-bottom: 20px;
        }

        .login-container h2 {
            color: #333;
            margin-bottom: 20px;
            margin-top: -30px;
        }

        .form-control {
            width: 100%;
            padding: 10px;
            margin: 10px -10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 14px;
        }

        .btn-login {
            width: 100%;
            padding: 10px;
            background-color:red;
            border: none;
            border-radius: 5px;
            color: white;
            font-size: 16px;
            cursor: pointer;
            margin-top: 10px;
        }

        .btn-login:hover {
            background-color:rgba(255, 0, 0, 0.7);
        }

        .footer {
            font-size: 12px;
            margin-top: 15px;
            color: gray;
        }

        .register-link {
            margin-top: 15px;
            font-size: 14px;
            text-align: center;
            
        }

        .register-link:hover {
            color: blue;
            text-decoration: none;
        }

        .register-link a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <img src="kawa.png" alt="Logo">
        <h2>MASUK</h2>
        <form action="/login" method="POST">
            @csrf
            <input type="text" name="username" class="form-control" placeholder="Username *" required>
            <input type="password" name="password" class="form-control" placeholder="Password *" required>
            <button type="submit" class="btn-login">LOGIN</button>
        </form>
        <div class="register-link">
        <p style="color: black;">Belum punya akun? <a href="/register">Daftar di sini</a></p>
        </div>
        <div class="footer">
            &copy; 2024 Kamera Pengawasan Kode Etik Mahasiswa
        </div>
    </div>
</body>
</html>
