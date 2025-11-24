<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.example.project22.dao.BoardDAO" %>
<%@ page import="com.example.project22.vo.BoardVO" %>

<jsp:include page="header.jsp" />

<%
    BoardDAO dao = new BoardDAO();
    java.util.ArrayList<BoardVO> list = dao.getList();
%>

<h3>List</h3>

<a href="write.jsp" class="btn btn-success mt-2 mb-3">Write</a>

<table class="table table-bordered">
    <thead>
    <tr>
        <th>Num</th><th>Title</th><th>Writer</th><th>Views</th><th>Date</th>
    </tr>
    </thead>
    <tbody>
    <% for(BoardVO vo : list){ %>
    <tr>
        <td><%=vo.getNum()%></td>
        <td><a href="view.jsp?num=<%=vo.getNum()%>"><%=vo.getTitle()%></a></td>
        <td><%=vo.getWriter()%></td>
        <td><%=vo.getHit()%></td>
        <td><%=vo.getRegdate()%></td>
    </tr>
    <% } %>
    </tbody>
</table>

<jsp:include page="footer.jsp" />
