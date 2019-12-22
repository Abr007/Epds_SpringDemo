<%@page import="com.bl.SupplyBl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.dto.SupplyProduct" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="../admin/css/css/bootstrap.min.css" type="text/css" />
    <link rel="stylesheet" href="../admin/css/css/customshop.css" type="text/css" media="all" />
    <script type="text/javascript" src="../admin/js/js/jquery-3.4.1.js"></script>
    <script type="text/javascript" src="../admin/js/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../admin/js/js/popper.min.js"></script>
<title>Supply Product</title>
</head>
<body class="supplyproduct_body">
<%
if(session.getAttribute("shopkeeper")!=null)
{
%>
<h1 class="supplyproduct_head">Supply Products</h1>
<%
SupplyProduct st=null;
st=new SupplyProduct();
st=(SupplyProduct)session.getAttribute("cdetails");
%>
<table class="supplyproduct_table"  border="1">
<tr>
<th>Card number</th>
<th>Date</th>
<th>Rice</th>
<th>Wheat</th>
<th>Sugar</th>
</tr>
<tr>
<td><%=st.getCardNo() %></td>
<td><%=st.getDate() %></td>
<td><%=st.getRiceqty() %></td>
<td><%=st.getWheatqty() %></td>
<td><%=st.getSugarqty() %></td>
</tr>
</table>
<form action="">
<div style="width: 100%;text-align: center;">
<button class="supplyproduct_table_submit" name="allot" type="submit">Allot</button>
<button class="supplyproduct_table_submit"><a style="text-decoration: none;color:yellowgreen" href="shopkeeperHome.jsp">Back</a></button>
</div>
<%
if(request.getParameter("allot")!=null){
	
	int r=SupplyBl.product_insert(st);
	if(r==0){
		%>
		<h1 style="color: wheat;position: absolute;left: 800px;top: 200px;font-size: 22px;">Already alloted for this month</h1>
		<% 
	}
	else{
		response.sendRedirect("shopkeeperHome.jsp");
	}
}
%>
</form>
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