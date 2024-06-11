<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>下载图书资源</title>
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
        <h2>下载图书资源</h2>
        <div class="download-list">
            <c:forEach var="book" items="${books}">
                <div class="download-item">
                    <div>
                        <img src="${book.filePath}" alt="书籍封面" width="100">
                    </div>
                    <div>
                        <h3>${book.title}</h3>
                        <p>作者: ${book.author}</p>
                        <p>出版社: ${book.publisher}</p>
                        <p>出版日期: ${book.pubDate}</p>
                        <a href="${book.filePath}">下载</a>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</body>
</html>
