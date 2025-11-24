<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.example.project22.dao.BoardDAO" %>
<%@ page import="com.example.project22.vo.BoardVO" %>

<%
    request.setCharacterEncoding("UTF-8");

    BoardVO vo = new BoardVO();
    vo.setTitle(request.getParameter("title"));
    vo.setWriter(request.getParameter("writer"));
    vo.setContent(request.getParameter("content"));

    BoardDAO dao = new BoardDAO();
    dao.insert(vo);

    response.sendRedirect("list.jsp");
%>
