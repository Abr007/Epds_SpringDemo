<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="../admin/css/css/style.css" type="text/css" media="all" />
 <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css"> 
<script type="text/javascript" src="../admin/js/js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="../admin/js/js/jquery.jcarousel.js"></script>
<script type="text/javascript" src="../admin/js/js/MyriadPro.font.js"></script>
<script type="text/javascript" src="../admin/js/js/ArialBold.font.js"></script>
 <script type="text/javascript" src="../admin/js/js/cufon-yui.js"></script>
<script type="text/javascript" src="../admin/js/js/jquery-func.js"></script>
<link rel="shortcut icon" type="image/x-icon" href="../admin/css/css/images/favicon.ico" />
<style>
.dropul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

.dropli {
  float: left;
}

.dropli  a, .dropbtn {
  display: inline-block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

.dropli  a:hover, .dropdown:hover .dropbtn {
  /* background-color: red; */
}

.dropli .dropdown {
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  top:65px;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {background-color: #f1f1f1;}

.dropdown:hover .dropdown-content {
  display: block;
}
</style>
<title>ePDS</title>
</head>
<body>
<div id="header">
  <div class="shell">
    <h1 id="logo"><a href="#">WCSST 37</a></h1>
    <div id="navigation">
      <ul>
        <li><a href="#" class="active">HOME</a></li>
        <!-- <li><a href="../admin/adminLogin.jsp">ADMIN LOGIN</a></li>
        <li><a href="../shopkeeper/shopkeeperlogin.jsp">SHOPKEEPER LOGIN</a></li>
        <li><a href="../admin/adminLogin.jsp">CUSTOMER LOGIN</a></li> -->
        <li><a href="customerReg.jsp">NEW REGISTRATION</a></li>
        <li><a href="http://localhost:4200/add">QUERIES</a></li>
        <li><a href="http://localhost:8086/spring_mvc_employee/index.jsp">CHECK AADHAR</a></li>
        <li class="dropdown">
    <a class="dropbtn">LOGIN</a>
    <div class="dropdown-content">
      <a href="../admin/adminLogin.jsp">ADMIN LOGIN</a>
      <a href="../shopkeeper/shopkeeperlogin.jsp">SHOPKEEPER LOGIN</a>
      <a href="../customer/customerLogin.jsp">CUSTOMER LOGIN</a>
      
    </div>
  </li>
      </ul>
    </div>
  </div>
</div>
<div id="intro">
  <div class="shell">
    <div class="slider-holder">
      <ul>
        <li>
          <div class="offer-image"> <img src="../admin/./css/css/images/slide3.png" alt="" /> </div>
        </li>
        <li>
          <div class="offer-image"> <img src="../admin/./css/css/images/slide1.jpg" alt="" /> </div>
        </li>
        <li>
          <div class="offer-image"> <img src="../admin/./css/css/images/slide2.jpg" alt="" /> </div>
        </li>
        <li>
          <div class="offer-image"> <img src="../admin/./css/css/images/slide4.jpg" alt="" /> </div>
        </li>
        <li>
          <div class="offer-image"> <img src="../admin/./css/css/images/slide5.jpg" alt="" /> </div>
        </li>
      </ul>
    </div>
    <div class="slider-navigation">
      <ul>
        <li><a href="#">1</a></li>
        <li><a href="#">2</a></li>
        <li><a href="#">3</a></li>
        <li><a href="#">4</a></li>
        <li><a href="#">5</a></li>
      </ul>
    </div>
  </div>
</div>
<div id="main">
  <div class="shell" style="width: 900px;">
    <div class="box">
    <img src="../admin/./css/css/images/welcomekerala.png">
    </div>
    <div class="box" style="padding-left: 25px;width: 515px;">
      <h2>About Us</h2>
      <div class="entry">
        <div class="news">
          <ul>
            <li>
              <div class="post-data"style="width: 100%;">
                <p style="font-size: 16px;font-weight: 600;line-height: 25px;text-align: justify;">The Civil Supplies Department discharges the important responsibilities of Public Distribution, enforcement of markets discipline and promotion of consumer awareness and protection of their interest. In the 60s and 70s it won many accolades for the pioneering achievements in the implementation of Universal Rationing System.</p>
              <p style="font-size: 16px;font-weight: 600;line-height: 25px;margin-top: 20px;text-align: justify;">The Department of Civil Supplies functions under the Department of Food, Civil Supplies and Consumer Affairs of the Government of Kerala.</p>
              </div>
            </li>
          </ul>
        </div>
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
</body>
</html>