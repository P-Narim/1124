<%--
  Created by IntelliJ IDEA.
  User: panri
  Date: 25. 11. 16.
  Time: 오후 5:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>List</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
</head>
<body>

<h1>List</h1>

<table border="1" cellpadding="8" cellspacing="0">
    <tr>
        <th>ID</th>
        <th>Title</th>
        <th>Writer</th>
        <th>Management</th>
    </tr>

    <tr>
        <td>1</td>
        <td><a href="view.jsp?id=1">첫글</a></td>
        <td>박나림</td>
        <td>
            <a href="edit.jsp?id=1">Edit</a> |
            <a href="delete_ok.jsp?id=1">Delete</a>
        </td>
    </tr>

    <tr>
        <td colspan="4" style="text-align:center">
            <a href="write.html">Write</a>
        </td>
    </tr>
</table>

</body>
</html>
