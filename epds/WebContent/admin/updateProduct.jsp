<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.dao.DBHelper.*" %>
    <%@ page import="com.dao.AllotpDao" %>
    <%@ page import= "java.util.ArrayList" %>
    <%@ page import="com.dto.AllotProduct" %>
    <%@ page import="com.dto.AllotProduct" %>
    <%@ page import="com.bl.AllotBl" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script type="text/javascript" src="../admin/js/validation.js"></script>
<link rel="stylesheet" href="css/css/bootstrap.min.css" type="text/css" />
<link rel="stylesheet" href="css/css/customadmin.css" type="text/css" media="all" />
<script type="text/javascript" src="js/js/jquery-3.4.1.js"></script>
<script type="text/javascript" src="js/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/js/popper.min.js"></script>
<title>Update Product</title>
</head>
<body class="updateProduct_body">
<%
if(session.getAttribute("user")!=null)
{
%>
<% 
String shopNo=request.getParameter("shno");
String whqty=request.getParameter("whqty");
String riceqty=request.getParameter("riceqty");
String sugarqty=request.getParameter("sugarqty");
%>
<h1>ShopID :<%=shopNo %></h1>
<form   method="post" action="" onsubmit="return validate1()">
<input type="hidden" name="txtshopno" value="<%=shopNo %>" >

<table class="updateProduct_body_table" border="1">

<tr>
<th>Product</th>
<th>Quantity</th>
<th>Weight</th>
</tr>
<tr>
<td>Rice</td>
<td><input type="text" name="txtrice" id="txtrice" value="<%=riceqty%>" ></td>
<span id="etxtrice" style="color:red; visibility:hidden"></span>

<td>kg</td>
</tr>
<tr>
<td>Wheat</td>
<td><input type="text" name="txtwheat"  id="txtwheat" value="<%=whqty%>"></td>

<td>kg</td></tr>
<tr><td>sugar</td>
<td><input type="text" name="txtsugar"  id="txtsugar" value="<%=sugarqty%>" ></td>

<td>kg</td></tr>
</table>
<input class="updateProduct_body_allot" type="submit" name="submit" value="Allot">
</form>
<%
if(request.getParameter("submit")!=null)
{
String shopno=request.getParameter("txtshopno");
String rice=request.getParameter("txtrice");
String wheat=request.getParameter("txtwheat");
String sugar=request.getParameter("txtsugar");
try
{
	int result=0;
	AllotProduct product=new AllotProduct();
	product.setProductNo(shopno);
	product.setRiceQty(rice);
	product.setWheatQty(wheat);
	product.setSugarQty(sugar);
	result=AllotBl.product_update(product);
	if(result>0)
	{
		%>
		<!-- <script>
		alert(updated successfully);
		</script> -->
		<% 
		response.sendRedirect("viewAllotedStock.jsp");
	 }
	else
	{
		out.println("failed");
	}	
}
catch(Exception e)
{
	e.printStackTrace();
}
}
%>
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