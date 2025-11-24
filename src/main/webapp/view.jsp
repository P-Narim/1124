<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="com.example.project22.dao.BoardDAO" %>
<%@ page import="com.example.project22.vo.BoardVO" %>

<jsp:include page="header.jsp" />

<%
    request.setCharacterEncoding("UTF-8");

    int num = Integer.parseInt(request.getParameter("num"));

    BoardDAO dao = new BoardDAO();
    BoardVO vo = dao.getView(num);
%>

<h3>View</h3>

<table class="table table-bordered">
    <tr>
        <th style="width: 120px;">Num</th>
        <td><%= vo.getNum() %></td>
    </tr>
    <tr>
        <th>Title</th>
        <td><%= vo.getTitle() %></td>
    </tr>
    <tr>
        <th>Writer</th>
        <td><%= vo.getWriter() %></td>
    </tr>
    <tr>
        <th>Date</th>
        <td><%= vo.getRegdate() %></td>
    </tr>
    <tr>
        <th>Views</th>
        <td><%= vo.getHit() %></td>
    </tr>
    <tr>
        <th>Content</th>
        <td style="height:200px; white-space:pre-line;">
            <%= vo.getContent() %>
        </td>
    </tr>
</table>

<div class="mt-3">
    <a href="edit.jsp?num=<%= vo.getNum() %>" class="btn btn-warning">Edit</a>
    <a href="delete_ok.jsp?num=<%= vo.getNum() %>" class="btn btn-danger">Delete</a>
    <a href="list.jsp" class="btn btn-secondary">Back to List</a>
</div>

<jsp:include page="footer.jsp" />

