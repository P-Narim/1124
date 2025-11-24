<%--
  Created by IntelliJ IDEA.
  User: panri
  Date: 2025-11-24
  Time: 오전 10:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form method="post" action="fileupload.jsp" enctype="multipart/form-data">
    <input type = "text", name = "title" />
    <input type = "file", name = "filename" />
    <input type = "submit", name = "upload" />
</form>

</body>
</html>
