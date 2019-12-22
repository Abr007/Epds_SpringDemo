<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.dto.SupplyProduct" %>
    <%@ page import="java.util.ArrayList" %>
    <%@ page import="com.bl.SupplyBl" %>
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
<link rel="stylesheet" href="../admin/css/css/bootstrap.min.css" type="text/css" />
    <link rel="stylesheet" href="../admin/css/css/customshop.css" type="text/css" media="all" />
    <link rel="stylesheet" href="../admin/css/css/style.css" type="text/css" media="all" />
    <link rel="shortcut icon" type="../admin/image/x-icon" href="images/favicon.ico" />
    <script type="text/javascript" src="../admin/js/js/jquery-3.4.1.js"></script>
    <script type="text/javascript" src="../admin/js/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../admin/js/js/popper.min.js"></script>
    <script type="text/javascript" src="../admin/js/js/cufon-yui.js"></script>
    <script type="text/javascript" src="../admin/js/js/MyriadPro.font.js"></script>
<script type="text/javascript" src="../admin/js/js/ArialBold.font.js"></script>
<title>Customer Detail</title>
</head>
<body>
<%
if(session.getAttribute("shopkeeper")!=null)
{
%>
<div id="header">
    <div class="shell">
      <h1 id="logo"><a href="#">WCSST 37</a></h1>
      <div id="navigation">
        <ul>
          <li><a href="shopkeeperHome.jsp" >HOME</a></li>
          <li><a href="#" class="active">CUSTOMER DETAILS</a></li>
          <li><a href="../admin/logout.jsp">LOGOUT</a></li>
        </ul>
      </div>
    </div>
  </div>
  <h1 class="customerdetail_head">Customer Details</h1>
<form action="" onsubmit="return validate4()">
<div class="customerdetail_body">
<h4 class="customerdetail_body_text">Enter Card No :</h4><input class="customerdetail_body_input" type="text" name="cno" id="cno">
<span id="ecno" style="color:red; visibility:hidden"></span>
</div>
<%String cadn=request.getParameter("cno");
%>
<input class="customerdetail_body_submit" type="submit" name="view">
<%
if(request.getParameter("view")!=null)
{
SupplyProduct st=null;
String s1=request.getParameter("cno");
st= SupplyBl.getProducts(s1);
if(st!=null )
{
%>
<h1 class="customerdetail_head">Card Details</h1>

<table class="customerdetail_table" border="1">
<tr>
<th>ShopNo</th>
<th>CardNo</th>
<th>Name</th>
<th>No:of family members</th>
<th>City</th>
<th>State</th>
<th>Pincode</th>
<th>Income</th>
<th>Category</th>
</tr>
<tr>
 <td height="30"><%=st.getShopNo()%></td>
 <td><%=st.getCardNo() %></td>
 <td><%=st.getName() %></td>
 <td><%=st.getNoofmembers() %></td>
 <td><%=st.getCity()%></td>
 <td><%=st.getState() %></td>
 <td><%=st.getPincode() %></td>
 <td><%=st.getIncome() %></td>
 <td><%=st.getCategory() %></td>
</tr>
</table>
 <%
session.setAttribute("cdetails",st); 
 %>
 <button class="customerdetail_table_allot"><a href="supplyProduct.jsp">Allot Products</a></button>
 <%  
}
else
 {
 %>
 <h1>there is no record</h1>
 <%
 }
}
%>
</form>
  <div class="footer customerdetail_footer">
  <div class="shell">
    <p class="lf">Copyright &copy; 2019 <a href="#">ePDS</a> - All Rights Reserved</p>
    <p class="rf"><a href="#">ePDS</a> by <a href="#" target="_blank">Pioneers</a></p>
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