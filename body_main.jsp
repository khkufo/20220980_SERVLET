<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "dto.Product" %>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />
<%! String greeting="현재 페이지는 VGA 그래픽 카드 상품 목록입니다.";
            String tagline="하단 페이지:확인";%>
                <div class="container">
                    <div class="row" align="center">
                        <%
                            for (int i=0; i<listOfProducts.size(); i++){
                                Product product = listOfProducts.get(i);
                        %>
                        <div class="col-md-4">
                            <h3><%=product.getPname()%></h3>
                            <p><%=product.getDescription()%>
                            <p><%=product.getUnitPrice()%>원
                        </div>
                        <%
                            }
                        
                        %>
                    </div>
                    <hr>
        </div>
<%
        ArrayList<Product> listOfProducts = productDAO.getAllProducts(); //리스트에 상품 전체 정보를 얻어온다.
%>