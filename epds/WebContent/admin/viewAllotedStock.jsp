<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.dto.AllotProduct" %>
    <%@ page import="com.bl.AllotBl" %>
    <%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/css/bootstrap.min.css" type="text/css" />
    <link rel="stylesheet" href="css/css/style.css" type="text/css" media="all" />
    <link rel="stylesheet" href="css/css/customadmin.css" type="text/css" media="all" />
    <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico" />
    <script type="text/javascript" src="js/js/jquery-3.4.1.js"></script>
    <script type="text/javascript" src="js/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/js/popper.min.js"></script>
    <script type="text/javascript" src="js/js/cufon-yui.js"></script>
    <script type="text/javascript" src="js/js/MyriadPro.font.js"></script>
<script type="text/javascript" src="js/js/ArialBold.font.js"></script>
<title>View Stock</title>
</head>
<body>
<%
if(session.getAttribute("user")!=null)
{
%>
<div id="header">
    <div class="shell">
      <h1 id="logo"><a href="#">WCSST 37</a></h1>
      <div id="navigation">
        <ul>
          <li><a href="adminHome.jsp">HOME</a></li>
          <li><a href="festiveSeason.jsp">FESTIVE SEASON</a></li>
          <li><a href="addShop.jsp">ADD SHOP</a></li>
          <li><a href="allotProduct.jsp">ALLOT PRODUCT</a></li>
          <li><a href="#" class="active">STOCK DETAILS</a></li>
          <li><a href="logout.jsp">LOGOUT</a></li>
        </ul>
      </div>
    </div>
  </div>
  <h1 class="viewallotedstock_head">View Stock Details</h1>
  <form id="form1" name="form1" method="post">
    <table border="1" class="viewallotedstock_table">
      <tbody>
        <tr>
          <th>ShopId</th>
          <th>city</th>
          <th>Area</th>
          <th>Rice</th>
          <th>wheat</th>
          <th>Sugar</th>
          <th>Update</th>
          </tr>
          <%
          ArrayList<AllotProduct> products=null; 
          products=AllotBl.getProducts();
          if(products!=null && (products.size()>0)){
        	  for(AllotProduct product:products){ 
          %>
        <tr>
          <td><%=product.getShopNo() %></td>
          <td><%=product.getCity() %></td>
          <td><%=product.getArea() %></td>
          <td><%=product.getRiceQty() %></td>
          <td><%=product.getWheatQty() %></td>
          <td><%=product.getSugarQty() %></td>
          <td><a class="viewallotedstock_table_update" href="updateProduct.jsp?shno=<%=product.getShopNo()%>&whqty=<%=product.getWheatQty() %>&riceqty=<%=product.getRiceQty() %>&sugarqty=<%=product.getSugarQty() %>">update</a></td>
          </tr>
          
          <%
        	  }
        	  %>
        	  </tbody>
              </table>
              <%
          }
          else{
        	  %>
        	  <h1 style="text-align: center;color: yellow;font-size: 48px;font-weight: 700;">No Records Found</h1>
        	  <% 
          }
          %>
  </form>
   <div class="footer festive_footer">
  <div class="shell">
    <p class="lf">Copyright &copy; 2019 <a href="#">ePDS</a> - All Rights Reserved</p>
    <p class="rf"><a href="#">ePDS</a> by <a href="#">Pioneers</a></p>
    <div style="clear:both;"></div>
  </div>
</div>
<%
}
else{
	%>
	<h1 style="text-align: center;font-size: 38px;color: yellow;">Redirecting to Homepage</h1>
	<% 
	response.setHeader("Refresh","2;url=../homePage/homePage.jsp");
}
%>
</body>
</html>