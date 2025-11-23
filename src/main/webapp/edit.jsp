<%--
  Created by IntelliJ IDEA.
  User: panri
  Date: 25. 11. 16.
  Time: 오후 7:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html lang="en">
<%@ include file="bootstrap.jsp" %>

<body class="container py-4">

<h2>Edit Post</h2>

<form action="edit_ok.jsp" method="post" class="card p-4 shadow-sm">

    <input type="hidden" name="id" value="<%= request.getParameter("id") %>">

    <div class="mb-3">
        <label class="form-label">Title</label>
        <input type="text" name="title" value="<%= request.getParameter("title") %>" class="form-control">
    </div>

    <div class="mb-3">
        <label class="form-label">Writer</label>
        <input type="text" name="writer" value="<%= request.getParameter("writer") %>" class="form-control">
    </div>

    <div class="mb-3">
        <label class="form-label">Content</label>
        <textarea name="content" class="form-control"><%= request.getParameter("content") %></textarea>
    </div>

    <button class="btn btn-primary">Save</button>

</form>

</body>
</html>


