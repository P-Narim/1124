<%--
  Created by IntelliJ IDEA.
  User: panri
  Date: 25. 11. 16.
  Time: 오후 9:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html lang="en">
<%@ include file="bootstrap.jsp" %>

<body class="container py-4">

<h2>Edited</h2>

<div class="card p-4 shadow-sm">
    <p><strong>Title:</strong> <%= request.getParameter("title") %></p>
    <p><strong>Writer:</strong> <%= request.getParameter("writer") %></p>
    <p><strong>Content:</strong> <%= request.getParameter("content") %></p>
</div>

<a class="btn btn-secondary mt-3" href="list.jsp">Return to List</a>

</body>
</html>


