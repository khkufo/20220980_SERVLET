<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import="example.*" %> 
헬로 월드 요청 결과는 <% HelloWorld h = new HelloWorld(); %> 입니다.
<html>
<body>
    message = <%=h.hello() %>
</body>	
</html>
