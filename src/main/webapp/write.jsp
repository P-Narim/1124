<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="header.jsp" />

<h3>New Post</h3>

<form action="write_ok.jsp" method="post">
    Title: <input type="text" name="title" class="form-control"><br>
    Writer: <input type="text" name="writer" class="form-control"><br>
    Content: <textarea name="content" class="form-control" rows="6"></textarea><br>
    <button type="submit" class="btn btn-primary">POST</button>
    <a href="list.jsp" class="btn btn-secondary">LIST</a>
</form>

<jsp:include page="footer.jsp" />
