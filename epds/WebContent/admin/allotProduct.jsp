<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.dao.DBHelper" %>
    <%@ page import="com.dao.AllotpDao" %>
    <%@ page import= "java.util.ArrayList" %>
    <%@ page import="com.dto.AllotProduct" %>
    <%@ page import="com.bl.AllotBl" %>
   <%@ page import=" java.sql.Connection" %> 
	<%@ page import ="java.sql.PreparedStatement" %>
<%@ page import =" java.sql.ResultSet" %>
<%@ page import =" java.sql.Statement" %>
<%@ page import="com.dao.DBHelper" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script type="text/javascript" src="../admin/js/validation.js"></script>
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
<title>Allot Product</title>
</head>
<body class="allotProduct_body">
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
          <li><a href="#" class="active">ALLOT PRODUCT</a></li>
          <li><a href="viewAllotedStock.jsp">STOCK DETAILS</a></li>
          <li><a href="logout.jsp">LOGOUT</a></li>
        </ul>
      </div>
    </div>
  </div>
<form method="post" action="" onsubmit="return validate1()">
<div class="select_shopno_content">
<% Connection con=DBHelper.getConnection();
 Statement statement=con.createStatement();
ResultSet resultset=statement.executeQuery("select * from shopDetails"); 


%>
<h4 class="select_shopno_h4">Select shop no:</h4>
<select class="select_shopno" name="sh" id="sh">
<option value="select">choose your shop number</option>
<% while(resultset.next())
	{%>
	<option><%=resultset.getString(1) %></option>
<%} %>
</select>
<span id="esh" style="color:red;visibility:hidden;font-size: 20px;">Should select shop Number</span>
</div>
<table border="1" class="allotProduct_body_table">

<tr>
<th>Product</th>
<th>Quantity</th>
<th>Weight</th>
</tr>
<tr>
<td>Rice</td>
<td><input type="text" name="txtrice" id="txtrice">
</td>
<span id="etxtrice" style="color: red;
    visibility: visible;
    position: absolute;
    top: 323px;
    left: 1227px;
    font-size: 21px; visibility:hidden">field should not be empty</span>
<td>kg</td>
</tr>
<tr>
<td>Wheat</td>
<td><input type="text" name="txtwheat" id="txtwheat"></td>
<span id="etxtwheat" style="color: red;
    visibility: visible;
    position: absolute;
    top: 368px;
    left: 1227px;
    font-size: 21px; visibility:hidden">field should not be empty</span>

<td>kg</td></tr>
<tr><td>sugar</td>
<td><input type="text" name="txtsugar" id="txtsugar"></td>
<span id="etxtsugar" style="color: red;
    visibility: visible;
    position: absolute;
    top: 410px;
    left: 1227px;
    font-size: 21px; visibility:hidden">field should not be empty</span>
<td>kg</td></tr>
<%
if(request.getParameter("submit")!=null)
{
String pr=request.getParameter("sh");
String rice=request.getParameter("txtrice");
String wheat=request.getParameter("txtwheat");
String sugar=request.getParameter("txtsugar");
try
{
	int result=0;
	AllotProduct product=new AllotProduct();
	product.setProductNo(pr);
	product.setRiceQty(rice);
	product.setWheatQty(wheat);
	product.setSugarQty(sugar);
	result=AllotBl.product_update(product);
	if(result>0)
	{
		/* System.out.println("successfully inserted"); */
		response.sendRedirect("adminHome.jsp");
	 }
	else
	{
		System.out.println("failed");
	}
	
	
	
}
catch(Exception e)
{
	e.printStackTrace();
}
}
%>
</table>
<input type="submit" name="submit" value="Allot" class="allotproduct_submit">
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