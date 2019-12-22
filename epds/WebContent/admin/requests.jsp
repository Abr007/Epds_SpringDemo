<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.dto.CustomerRegister"  %>
    <%@ page import="com.bl.AdminBl"  %>
    <%@ page import="com.bl.ShopBl"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/css/bootstrap.min.css" type="text/css" />
    <link rel="stylesheet" href="css/css/customadmin.css" type="text/css" media="all" />
    <link rel="stylesheet" href="css/css/style.css" type="text/css" media="all" />
    <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico" />
    <script type="text/javascript" src="js/js/jquery-3.4.1.js"></script>
    <script type="text/javascript" src="js/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/js/popper.min.js"></script>
    <script type="text/javascript" src="js/js/cufon-yui.js"></script>
    <script type="text/javascript" src="js/js/MyriadPro.font.js"></script>
<script type="text/javascript" src="js/js/ArialBold.font.js"></script>
<title>New Requests</title>
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
         <li><a href="#" class="active">REQUEST</a></li>
          <li><a href="festiveSeason.jsp">FESTIVE SEASON</a></li>
          <li><a href="addShop.jsp">ADD SHOP</a></li>
          <li><a href="allotProduct.jsp">ALLOT PRODUCT</a></li>
          <li><a href="viewAllotedStock.jsp">SHOP DETAILS</a></li>
          <li><a href="logout.jsp">LOGOUT</a></li>
        </ul>
      </div>
    </div>
  </div>
  <h1 class="request_head">New Requests</h1>
  <form>
    <% 
  ArrayList<CustomerRegister> cmreg= null;
  cmreg=AdminBl.newCustomerReg();
  if(cmreg!=null && (cmreg.size()>0)){
	  for(CustomerRegister cr:cmreg){
  %>
  <table class="request_table" border="1">
  <tr>
  <th>Name</th>
  <th>Area</th>
  <th>City</th>
  <th>No of Members</th>
  <th>Income</th>
  <th>Email</th>
  <th>Phone Number </th>
  <th>Pincode</th>
  <th>Accept</th>
  </tr>
  <tr>
  <td><%=cr.getName() %></td>
  <td><%=cr.getArea() %></td>
  <td><%=cr.getCity() %></td>
  <td><%=cr.getNoofmembers() %></td>
  <td><%=cr.getIncome() %></td>
  <td><%=cr.getEmail() %></td>
  <td><%=cr.getPhoneNumber() %></td>
  <td><%=cr.getPincode() %></td>
  <td><button  class="request_approve"><a href="requestAccept.jsp?cardno=<%=cr.getCardNo()%>&area=<%=cr.getArea()%>&income=<%=cr.getIncome()%>&email=<%= cr.getEmail()%>&name=<%=cr.getName()%>">Approve</a></button>
  </td>
  </tr>
	  <% 	  
  }
	 %> 

     </table>
     <%
 }
 else{
  %>
  <h1 style="text-align: center;color: yellow;font-size: 32px;margin-top: 60px;font-weight: 700;">No Records Found</h1>
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