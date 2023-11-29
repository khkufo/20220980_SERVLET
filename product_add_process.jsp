<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.sql.*"%>
<%@ include file="../db/db_conn.jsp" %>

<%
	request.setCharacterEncoding("UTF-8");

	String filename = "";
	String realFolder = request.getServletContext().getRealPath("image/product"); //웹 어플리케이션상의 절대 경로
	String encType = "utf-8"; //인코딩 타입
	int maxSize = 5 * 1024 * 1024; //최대 업로드될 파일의 크기5Mb

    Enumeration files = multi.getFileNames();
    String fname = (Sting) files.nextElement();
    String fileName = multi.getFilesystemName(fname);

    String sql = "insert into product values(?.?.?.?.?.?.?.?.?)";
    pstmt = conn.prepareStatement(sql); //쿼리문 몸체만 넣기
    pstmt.setString(1,productld); //각 필드 설정 - ?순서대로
    pstmt.setString(2,name);
    pstmt.setString(3,unitPrice);
    pstmt.setString(4,description);
    pstmt.setString(5,manufacturer);
    pstmt.setString(6,category);
    pstmt.setString(7,unitsInStock);
    pstmt.setString(8,condition);
    pstmt.setString(9,fileName);
    pstmt.executeUpate(); //최종 sql 쿼리 실행
    if(pstmt != null)
        pstmt.close();
    if(conn != null)
        conn.close();

    response.sendRedirect("index_ad.jsp");
%>