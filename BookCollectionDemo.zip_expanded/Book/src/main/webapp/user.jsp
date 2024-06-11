<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>用户账户</title>
    <link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
    <div class="header">
        <h1>ZBook</h1>
        <nav>
            <a href="upload.jsp">上传</a>
            <a href="download.jsp">下载</a>
            <a href="user.jsp">用户账户</a>
        </nav>
    </div>
    <div class="container">
        <h2>用户账户</h2>
        <div class="user-info">
            <img src="path/to/user-avatar.jpg" alt="用户头像" width="100"><br>
            <p>名称: 用户名</p>
            <p>邮箱: user@example.com</p>
            <button onclick="logout()">退出账户</button>
            <button onclick="changeAccount()">更换账户</button>
        </div>
    </div>
    <script>
        function logout() {
            // 处理用户退出逻辑
        }

        function changeAccount() {
            // 处理更换账户逻辑
        }
    </script>
</body>
</html>
