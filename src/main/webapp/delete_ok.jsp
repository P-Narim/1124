<%--
  Created by IntelliJ IDEA.
  User: panri
  Date: 25. 11. 16.
  Time: 오후 9:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@ include file="bootstrap.jsp" %>

<body class="container py-4">

<h2>Deleted</h2>

<div class="alert alert-danger">
    The item with ID <strong><%= request.getParameter("id") %></strong> has been deleted.
</div>

<a class="btn btn-secondary" href="list.jsp">Back</a>

</body>
</html>
