<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.example.project22.dao.BoardDAO" %>
<%@ page import="com.example.project22.vo.BoardVO" %>

<jsp:include page="header.jsp" />

<%
    request.setCharacterEncoding("UTF-8");

    String q = request.getParameter("q");
    BoardDAO dao = new BoardDAO();
    java.util.ArrayList<BoardVO> list;

    if (q != null && !q.trim().equals("")) {
        list = dao.search(q);
    } else {
        list = dao.getList();
        q = "";
    }
%>

<h3>List</h3>

<!-- 검색기능 구현 -->
<form action="list.jsp" method="get" class="row g-2 mb-3">
    <div class="col-auto">
        <input type="text" name="q" value="<%= q %>" class="form-control" placeholder="Search title or content">
    </div>
    <div class="col-auto">
        <button type="submit" class="btn btn-outline-primary">Search</button>
        <a href="list.jsp" class="btn btn-outline-secondary">Reset</a>
    </div>
</form>

<a href="write.jsp" class="btn btn-success mt-2 mb-3">Write</a>

<table class="table table-bordered">
    <thead>
    <tr>
        <th>Num</th>
        <th>Title</th>
        <th>Writer</th>
        <th>Views</th>
        <th>Date</th>
    </tr>
    </thead>
    <tbody>
    <% if (list.size() == 0) { %>
    <tr>
        <td colspan="5" class="text-center">No posts found.</td>
    </tr>
    <% } else {
        for (BoardVO vo : list) { %>
    <tr>
        <td><%= vo.getNum() %></td>
        <td><a href="view.jsp?num=<%= vo.getNum() %>"><%= vo.getTitle() %></a></td>
        <td><%= vo.getWriter() %></td>
        <td><%= vo.getHit() %></td>
        <td><%= vo.getRegdate() %></td>
    </tr>
    <%   }
    } %>
    </tbody>
</table>

<jsp:include page="footer.jsp" />
