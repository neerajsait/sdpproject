<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Arial', sans-serif;
        }

        body {
            background-color: #f0f2f5;
        }

        /* Navbar styles */
        .navbar {
            background-color: #1E3264;
            padding: 15px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .navbar h1 {
            color: white;
            font-size: 24px;
            font-weight: bold;
            margin-left: 20px;
        }

        .navbar a {
            color: white;
            margin-right: 20px;
            text-decoration: none;
            font-size: 14px;
        }

        .container {
            height: calc(100vh - 60px); /* Adjusting for navbar height */
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: #f0f2f5;
        }

        .register-box {
            background-color: white;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 400px;
        }

        .register-box h2 {
            margin-bottom: 20px;
            font-size: 24px;
            font-weight: bold;
        }

        .input-group {
            margin-bottom: 15px;
            text-align: left;
        }

        .input-group label {
            font-size: 14px;
            font-weight: bold;
            margin-bottom: 5px;
            display: block;
        }

        .input-group input {
            width: 100%;
            padding: 10px;
            font-size: 14px;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-top: 5px;
        }

        button {
            width: 100%;
            padding: 10px;
            background-color: #1E3264;
            color: white;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 15px;
        }

        button:hover {
            background-color: #14254B;
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <div class="navbar">
        <h1>Career Stream</h1>
        <a href="rereg1">Login</a>
    </div>

    <!-- Registration Box -->
    <div class="container">
        <div class="register-box">
            <h2>Register</h2>
            <form action="/" method="POST">
                <div class="input-group">
                    <label for="name">Name</label>
                    <input type="text" id="name" placeholder="Enter your name" required>
                </div>
                <div class="input-group">
                    <label for="email">Email</label>
                    <input type="email" id="email" placeholder="Enter your email" required>
                </div>
                <div class="input-group">
                    <label for="password">Password</label>
                    <input type="password" id="password" placeholder="Enter your password" required>
                </div>
                <div class="input-group">
                    <label for="confirm-password">Confirm Password</label>
                    <input type="password" id="confirm-password" placeholder="Confirm your password" required>
                </div>
                <button type="submit">Register</button>
            </form>
        </div>
    </div>
</body>
</html>
