<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import="example.*" %>
<%@ page import="java.util.Date"%>
<%
    HelloWorld h=new HelloWorld();
%>
<html>
    <head>
        <%@ page import = "java.util.Date"%>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
        <script>
            window.open("popup/popup1.jsp","popup","width=365,height=250,left=0,top=0")
        </script>
    </head>
    <title>Welcome</title>
    <body> <%-- jsp 주석 처리 --%>
        <%@ include file="top_banner.jsp"%>
        <%@ include file="top_menu.jsp"%>
        <%@ include file="body_main.jsp"%>
        <%@ include file="footer.jsp"%>
        <%-- CLASS는 스타일 적용시에 사용되는 이름, 중첩 가능 --%>
        <div class="container">
            <div class="text-center">
                <h3>
                    <%=tagline%>
                </h3>
            </div>
            <hr>
        </div>
    </body>
</html>