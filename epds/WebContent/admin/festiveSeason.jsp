<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.dto.MonthSelect" %>
    <%@ page import="com.bl.AdminBl" %>
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
<title>Festive Season</title>
</head>
<body class="festive_season_body">
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
          <li><a href="#" class="active">FESTIVE SEASON</a></li>
          <li><a href="addShop.jsp">ADD SHOP</a></li>
          <li><a href="allotProduct.jsp">ALLOT PRODUCT</a></li>
          <li><a href="viewAllotedStock.jsp">STOCK DETAILS</a></li>
          <li><a href="logout.jsp">LOGOUT</a></li>
        </ul>
      </div>
    </div>
  </div>
  <div class="festive_body">
  <div class="festive_body_head"><h1>Festival Season</h1></div>
  <form action="" class="festive_body_form" onsubmit="return validate3()">
  <div class="festive_body_content">
  <div class="row">
  <div class="col" style="text-align:right;"><h3 class="choose_month">Choose Festive Month :</h3></div>
  <div class="col">
  <select name="months" class="select_months" id="months">
  <option value="select">Select month</option>
  <option value="January">January</option>
  <option value="February">February</option>
  <option value="March">March</option>
  <option value="April">April</option>
  <option value="May">May</option>
  <option value="June">June</option>
  <option value="July">July</option>
  <option value="August">August</option>
  <option value="September">September</option>
  <option value="October">October</option>
  <option value="November">November</option>
  <option value="December">December</option>
  </select>
  <span  id="emonths" style="color:red; visibility:hidden;font-size: 23px;">please choose one month</span>
  </div>
  </div>
  </div>
  <button type="submit" name="month_submit" class="month_button">Submit</button>
  </form>
  </div>
  <%
  if(request.getParameter("month_submit")!=null){
	  String month=request.getParameter("months");
	  MonthSelect mn=null;
	  mn=new MonthSelect();
	  mn.setMonthvalue(month);
	  int r=AdminBl.month_update(mn);
	  response.sendRedirect("adminHome.jsp");
  }
  %>
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