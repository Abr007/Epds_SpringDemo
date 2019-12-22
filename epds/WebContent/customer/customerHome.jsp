<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
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
<title>Customer Home Page</title>
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
          <li><a href="#" class="active">HOME</a></li>
          <li><a href="history.jsp">PURCHASE HISTORY</a></li>
          <li><a href="../admin/logout.jsp">LOGOUT</a></li>
        </ul>
      </div>
    </div>
  </div>
     <div id="intro">
  <div class="shell">
    <div class="slider-holder">
      <ul>
        <li>
          <div class="offer-image"> <img src="../admin/./css/css/images/offer-image-1.jpg" alt="" /> </div>
        </li>
      </ul>
    </div>

  </div>
</div>
  <div id="main">
  <div class="shell shell_width">
    <div class="box" style="float: none;text-align: center;margin: 0 auto;">
      <h2>Welcome Customer</h2>
      <div class="entry">
        <div class="big-image"><img src="../admin/./css/css/images/shopkeeper.jpg" alt="" /></div>
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