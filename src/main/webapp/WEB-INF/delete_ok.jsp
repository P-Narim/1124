<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="com.example.project22.dao.BoardDAO" %>

<%
    request.setCharacterEncoding("UTF-8");

    int num = Integer.parseInt(request.getParameter("num"));

    BoardDAO dao = new BoardDAO();
    dao.delete(num);

    response.sendRedirect("list.jsp");
%>

