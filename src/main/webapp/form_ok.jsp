<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html lang="en">
<%@ include file="bootstrap.jsp" %>

<body class="container py-4">

<h2>Form Result</h2>

<div class="card p-4 shadow-sm">

    <p><strong>Name:</strong> <%= request.getParameter("name") %></p>
    <p><strong>Age:</strong> <%= request.getParameter("age") %></p>
    <p><strong>Student ID:</strong> <%= request.getParameter("std_id") %></p>
    <p><strong>Email:</strong> <%= request.getParameter("email") %></p>
    <p><strong>Content:</strong> <%= request.getParameter("content") %></p>

</div>

<a class="btn btn-secondary mt-3" href="form.html">Back</a>

</body>
</html>
