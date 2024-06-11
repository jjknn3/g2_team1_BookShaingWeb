<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>上传图书资源</title>
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
        <h2>上传图书资源</h2>
        <form class="upload-form" action="upload" method="post" enctype="multipart/form-data">
            <input type="text" name="title" placeholder="书名" required><br>
            <input type="text" name="author" placeholder="作者" required><br>
            <input type="text" name="publisher" placeholder="出版社" required><br>
            <input type="text" name="pubDate" placeholder="出版日期" required><br>
            <textarea name="summary" placeholder="书籍梗概" rows="10" required></textarea><br>
            <input type="file" name="file" required><br>
            <button type="submit">上传</button>
        </form>
    </div>
</body>
</html>
