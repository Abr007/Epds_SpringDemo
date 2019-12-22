<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
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
    <title>Admin HomePage</title>
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
          <li><a href="requests.jsp">REQUEST</a></li>
          <li><a href="festiveSeason.jsp">FESTIVE SEASON</a></li>
          <li><a href="addShop.jsp">ADD SHOP</a></li>
          <li><a href="allotProduct.jsp">ALLOT PRODUCT</a></li>
          <li><a href="viewAllotedStock.jsp">STOCK DETAILS</a></li>
          <li><a href="logout.jsp">LOGOUT</a></li>
        </ul>
      </div>
    </div>
  </div>
  <div id="intro">
  <div class="shell">
    <div class="slider-holder">
      <ul>
        <li>
          <div class="offer-image"> <img src="./css/css/images/offer-image-1.jpg" alt="" /> </div>
        </li>
      </ul>
    </div>

  </div>
</div>
<div id="main">
  <div class="shell shell_width">
    <div class="box" style="float: none;margin: 0 auto;text-align: center;">
      <h2>Welcome Admin</h2>
      <div class="entry">
        <div class="big-image"><img src="./css/css/images/AA.jpg" alt="" /></div>
      </div>
    </div>
    <div class="cl">&nbsp;</div>
  </div>
</div>
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