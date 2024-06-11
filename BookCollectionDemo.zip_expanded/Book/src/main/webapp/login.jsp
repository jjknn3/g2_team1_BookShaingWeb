<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>登录</title>
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
        .login-container {
            background-color: white;
            border-radius: 15px;
            padding: 30px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            text-align: center;
        }
        .login-container h1 {
            margin-bottom: 20px;
        }
        .login-container form {
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        .login-container input {
            margin: 10px 0;
            padding: 10px;
            border-radius: 10px;
            border: 1px solid #ccc;
            width: 100%;
            max-width: 300px;
        }
        .login-container button {
            padding: 10px 20px;
            border-radius: 10px;
            border: none;
            background-color: #007BFF;
            color: white;
            cursor: pointer;
        }
        .login-container button:hover {
            background-color: #0056b3;
        }
        .register-link {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h1>ZBook 登录</h1>
        <form action="login" method="post">
            <input type="email" name="email" placeholder="邮箱" required>
            <input type="password" name="password" placeholder="密码" required>
            <button type="submit">用户登录</button>
        </form>
        <form action="adminLogin" method="post">
            <input type="text" name="adminUsername" placeholder="管理员账号" required>
            <input type="password" name="adminPassword" placeholder="管理员密码" required>
            <button type="submit">管理员登录</button>
        </form>
        <div class="register-link">
            <a href="register.jsp">注册新用户</a>
        </div>
    </div>
</body>
</html>
