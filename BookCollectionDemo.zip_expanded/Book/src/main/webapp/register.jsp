<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>注册</title>
    <link rel="stylesheet" href="assets/css/style.css">
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            font-size: 16px;
            background-color: #f0f0f0;
        }
        .register-container {
            background-color: white;
            border-radius: 15px;
            padding: 30px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            text-align: center;
        }
        .register-container h1 {
            margin-bottom: 20px;
        }
        .register-container form {
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        .register-container input {
            margin: 10px 0;
            padding: 10px;
            border-radius: 10px;
            border: 1px solid #ccc;
            width: 100%;
            max-width: 300px;
        }
        .register-container button {
            padding: 10px 20px;
            border-radius: 10px;
            border: none;
            background-color: #007BFF;
            color: white;
            cursor: pointer;
        }
        .register-container button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="register-container">
        <h1>ZBook 注册</h1>
        <form action="register" method="post">
            <input type="text" name="username" placeholder="用户名" required>
            <input type="email" name="email" placeholder="邮箱" required>
            <input type="password" name="password" placeholder="密码" required>
            <input type="password" name="confirmPassword" placeholder="确认密码" required>
            <button type="submit">注册</button>
        </form>
    </div>
</body>
</html>
