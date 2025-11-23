<%--
  Created by IntelliJ IDEA.
  User: panri
  Date: 25. 11. 16.
  Time: 오후 11:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<meta charset="UTF-8">
<html lang="en">
<!DOCTYPE html>
<%@ include file="bootstrap.jsp" %>

<body class="container py-4">

<h2>View Post</h2>

<div class="card p-4 shadow-sm">
    <p><strong>ID:</strong> <%= request.getParameter("id") %></p>
    <p><strong>Title:</strong> <%= request.getParameter("title") %></p>
    <p><strong>Writer:</strong> <%= request.getParameter("writer") %></p>
    <p><strong>Content:</strong> <%= request.getParameter("content") %></p>
</div>

<a href="list.jsp" class="btn btn-secondary mt-3">Back</a>

</body>
</html>


