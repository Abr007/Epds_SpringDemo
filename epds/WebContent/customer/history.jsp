<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.dto.HistoryDto" %>
     <%@page import="java.util.ArrayList" %>
       <%@page import="com.bl.HistoryBl" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
</style>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="../admin/css/css/bootstrap.min.css" type="text/css" />
    <link rel="stylesheet" href="../admin/css/css/customadmin.css" type="text/css" media="all" />
    <link rel="stylesheet" href="../admin/css/css/style.css" type="text/css" media="all" />
    <link rel="shortcut icon" type="../admin/image/x-icon" href="images/favicon.ico" />
    <script type="text/javascript" src="../admin/js/js/jquery-3.4.1.js"></script>
    <script type="text/javascript" src="../admin/js/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../admin/js/js/popper.min.js"></script>
    <script type="text/javascript" src="../admin/js/js/cufon-yui.js"></script>
    <script type="text/javascript" src="../admin/js/js/MyriadPro.font.js"></script>
<script type="text/javascript" src="../admin/js/js/ArialBold.font.js"></script>
<title>History</title>
<style>
th{
text-align: center;
font-size: 22px;
font-weight: 600;
color: cornsilk;
width: 200px;
height: 50px;
}
td{
text-align: center;
font-size: 18px;
font-weight: 500;
height: 40px;
color: burlywood;
}
</style>
</head>
<body>
<%
if(session.getAttribute("customer")!=null)
{
%>
<div id="header">
    <div class="shell">
      <h1 id="logo"><a href="#">WCSST 37</a></h1>
      <div id="navigation">
        <ul>
          <li><a href="customerHome.jsp" >HOME</a></li>
          <li><a href="history.jsp" class="active">PURCHASE HISTORY</a></li>
          <li><a href="../admin/logout.jsp">LOGOUT</a></li>
        </ul>
      </div>
    </div>
  </div>
<h3 style="font-size: 42px;text-align: center;margin-top: 50px;">Purchase History</h3>
<table border="1" style="margin: 0 auto;border: 3px solid antiquewhite;" >
<tr><th>Product Number</th><th>Card Number</<th><th>Purchase date</th><th>Rice</<th><th>Wheat</th><th>Sugar</th></tr>
 <%
 ArrayList<HistoryDto> historyList=HistoryBl.getHistory();
 for(HistoryDto history : historyList)
{
	 
%>
<tr>
<td ><%=history.getPurchaseid() %></td>
<td ><%=history.getCardno() %></td>
<td ><%=history.getPurchasedate() %></td>
<td ><%=history.getRiceqty() %></td>
<td ><%=history.getWheatqty() %></td>
<td ><%=history.getSugarqty() %></td>
 </tr>
 <%
 }
 %>
</table>
  <div class="footer">
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