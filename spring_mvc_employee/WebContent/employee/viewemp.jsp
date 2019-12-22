



   <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
  <style>
  
  * {
	padding:0;
	margin:0;
	outline:0;
}
body {
	font-size:12px;
	font-family:Arial, "Trebuchet MS", sans-serif;
	color:#565656;
	background:#212121;
left bottom repeat-x;
}
a {
	color:#565656;
	text-decoration:underline;
}
a:hover {
	text-decoration:none;
}
.cl, .clear {
	display:block;
	height:0;
	font-size:0;
	line-height:0;
	text-indent:-4000px;
	clear:both;
}
.shell {
	width:960px;
	margin:0 auto;
	position:relative;
}
h2 {
	padding-bottom:4px;
	background:url(${pageContext.request.contextPath}/resources/images/h2.gif) left bottom repeat-x;
	margin-bottom:9px;
	font-family:"Trebuchet MS", Arial, Sans-Serif;
	font-size:27px;
	color:#272728;
}
h3 {
	color:#fff;
	font-size:20px;
	padding-bottom:10px;
}
h5 {
	font-size:10px;
	color:#4062b7;
	font-weight:normal;
	padding-bottom:2px;
}
h5 a {
	color:#4062b7;
	text-decoration:none;
}
h5 a:hover {
	color:#4062b7;
	text-decoration:underline;
}
.button {
	font-size:11px;
	color:#2a2b22;
	font-weight:bold;
	text-decoration:none;
}
.button span {
	font-size:11px;
	color:#2a2b22;
	font-weight:bold;
	cursor:pointer;
}
#header {
 background:url(${pageContext.request.contextPath}/resources/images/header.jpg) left top repeat-x; 
	height:75px;
}
#logo {
	float:left;
	width:201px;
	height:75px;
	text-align:left;
}
#logo a {
	float:left;
	width:201px;
	height:75px;
	font-size:0;
	line-height:0;
	text-indent:-4000px;
	background:url(${pageContext.request.contextPath}/resources/images/logo-epds.png);
	background-repeat: round;
}
#navigation {
	float:right;
	padding-top:5px;
	 background:url(${pageContext.request.contextPath}/resources/images/navigation-separator.jpg) right 1px no-repeat; 
}
#navigation ul {
	list-style:none;
	padding-right:1px;
}
#navigation ul li {
	float:left;
	padding-left:1px;
	background:url(${pageContext.request.contextPath}/resources/images/navigation-separator.jpg) left 1px no-repeat; 
}
#navigation ul li a {
	float:left;
	padding:0 16px 0 15px;
	height:64px;
	line-height:64px;
	font-weight:bold;
	font-size:13px;
	color:#272727;
	text-decoration:none;
}
#navigation ul li a .active {
	 background:url(${pageContext.request.contextPath}/resources/images/navigation-active.jpg); 
	color:#fff;
}
#navigation ul li a span {
	float:left;
}
#intro {
	background:url(${pageContext.request.contextPath}/resources/images/intro.gif) left top repeat-x;
	height:418px;
	padding-top:22px;
}
#intro .slider-holder {
	width:960px;
	height:353px;
	position:relative;
	overflow:hidden;
}
#intro .slider-holder ul, .jcarousel-clip {
	list-style:none;
	width:960px;
	height:353px;
	position:relative;
	overflow:hidden;
}
#intro .slider-holder ul li {
	float:left;
	position:relative;
	width:960px;
	height:353px;
	list-style:none;
}
#intro .slider-holder .offer-image {
	position:absolute;
	top:0;
	left:0;
	width:100%;
	height:100%;
}
#intro .slider-holder .offer-image img {
	border:1px solid #a7a0a0;
	width: 100%;
	height: 100%;
}
#intro .slider-holder .offer-data {
	position:absolute;
	top:1px;
	right:1px;
	height:100%;
	width:30%;
	background:url(${pageContext.request.contextPath}/resources/images/semi-transparent.png);
	padding:34px 20px 0 25px;
}
#intro .slider-holder .offer-data .entry {
	height:212px;
}
#intro .slider-holder .offer-data p {
	color:#dfd5d5;
	line-height:18px;
	padding-bottom:18px;
	text-align:justify;
}
#intro .slider-holder .offer-data p a {
	color:#dfd5d5;
}
#intro .slider-holder .offer-data .buttons {
	padding-right:4px;
}
#intro .slider-holder .offer-data .buttons .button, #intro .slider-holder .offer-data .buttons .button span {
	height:29px;
	line-height:29px;
	float:left;
}
#intro .slider-holder .offer-data .buttons .button {
	float:right;
	background:url(${pageContext.request.contextPath}/resources/images/intro-button.jpg) left top repeat-x;
	border:1px solid #434340;
	padding:0 8px;
}
#intro .slider-holder .offer-data .buttons .button span {
	background:url(${pageContext.request.contextPath}/resources/images/intro-button-span.jpg) left top no-repeat;
	padding-left:7px;
}
#intro .slider-navigation {
	height:24px;
	background:url(${pageContext.request.contextPath}/resources/images/intro-shadow.jpg) left top no-repeat;
	padding-top:36px;
}
#intro .slider-navigation ul {
	list-style:none;
	margin-left:420px;
}
#intro .slider-navigation ul li {
	float:left;
}
#intro .slider-navigation ul li a {
	background:url(${pageContext.request.contextPath}/resources/images/slider-navigation-normal.jpg);
	width:19px;
	height:20px;
	display:block;
	font-size:0;
	line-height:0;
	text-indent:-4000px;
	text-decoration:none;
}
#intro .slider-navigation ul li a.active, #intro .slider-navigation ul li a:hover {
	background:url(${pageContext.request.contextPath}/resources/images/slider-navigation-active.jpg);
}
#main {
	background:#f8f8f8 url(${pageContext.request.contextPath}/resources/images/main.jpg) left top repeat-x;
}
#main .shell {
	padding:25px 0;
}
#main p {
	padding-bottom:10px;
	line-height:17px;
}
.box {
	float:left;
	width:306px;
	padding:0 19px 0 0;
}
.last-box {
	padding-right:0;
}
.box .entry {
	height:217px;
	padding-left:2px;
}
.box .big-image {
	padding:4px 0 10px 0;
}
.box .big-image img {
	border:2px solid #fff;
	width: 100%;
}
.box .buttons .button, .box .buttons .button span {
	background:url(${pageContext.request.contextPath}/resources/images/main-button.jpg) repeat-x;
	height:29px;
	line-height:29px;
	float:right;
	display:inline;
	border:1px solid #bfbebe;
	padding:0 8px;
}
.box .buttons .button span {
	float:left;
	border:0;
	background:url(${pageContext.request.contextPath}/resources/images/main-button-span.jpg) left top no-repeat;
	padding:0 0 0 7px;
}
#main .news {
}
#main .news ul {
	list-style:none;
}
#main .news ul li {
	border-bottom:1px dotted #e8d0d2;
	padding-bottom:7px;
	margin-bottom:15px;
}
#main .news ul li.last {
	border-bottom:0;
	padding-bottom:0;
	margin-bottom:0;
}
#main .news ul li .post-image {
	float:left;
	width:76px;
	padding:3px 10px 0 0;
}
#main .news ul li .post-image img {
	border:2px solid #fff;
	width: 100%;
}
#main .news ul li .post-data {
	float:left;
	width:203px;
}
#main .news ul li .post-data p {
	color:#413f3f;
	line-height:18px;
	padding-bottom:0;
}
#main .news ul li .post-data a {
	color:#4062b7;
}
.bullet-list ul {
	list-style:none;
	padding-top:1px;
}
.bullet-list ul li {
	line-height:12px;
	background:url(${pageContext.request.contextPath}/resources/images/ul-bullet.gif) left 5px no-repeat;
	padding:0 0 14px 10px;
}
.bullet-list ul li a {
	color:#4062b7;
}
.footer {
	background:url(${pageContext.request.contextPath}/resources/images/footer.jpg) left top repeat-x;
	color:#b3adad;
	padding:24px 4px;
	font-size:10px;
	font-family:Verdana, Arial, Sans-Serif;
}
.footer, .footer a {
	color:#b3adad;
	text-decoration:none;
}
.footer p {
	margin:0;
	padding:0;
	line-height:normal;
}
.footer .lf {
	float:left;
}
.footer .rf {
	float:right;
}
/* Admin loginpage css */
.clear{
	clear: both;
}
.Adminlogin_header{
	text-align: center;
	margin-top: 80px;
}
.Adminlogin_header_head{
	width: 500px;
    margin: 0 auto;
}
.Adminlogin_header_head h1{
	    font-size: 48px;
    color: aliceblue;
}
.admin_body{
	width: 900px;
	margin: 0 auto;
	margin-top: 100px;
	margin-bottom: 80px;
	text-align: center;
	height: 420px;
}
.admin_body_table{
	margin: 0 auto;
	margin-top: 80px;
}
.admin_body_table_contents{
	font-size: 21px;
	color:yellowgreen;
	font-weight: 600;
	padding-left: 20px;
}
.admin_body_table_input{
	height: 40px;
	background-color: #d8d3d3;
	border: 3px solid yellowgreen;
	color: rgb(28, 73, 71);
	font-weight: 500;
	font-size: 18px;
}
.admin_body_table_col_left{
	float: right;
	padding-right: 20px;
}
.admin_body_table_col_right{
	float: left;
	padding-left: 20px;
}
.admin_body_table .row{
	margin-bottom: 30px;
}
.admin_login_button{
	margin-top: 30px;
    background: none;
    padding: 7px 25px;
    margin-left: 400px;
    border: 3px solid yellowgreen;
    color: rgb(204, 204, 204);
    font-size: 20px;
    font-weight: 600;
}

  
  </style>
 
  <body>
  <div id="header">
  <div class="shell">
    <h1 id="logo"><a href="#">WCSST 37</a></h1>
    <div id="navigation">
      <ul>
        <li><a href="http://localhost:8086/epds/homePage/homePage.jsp" class="active">HOME</a></li>
        <!-- <li><a href="../admin/adminLogin.jsp">ADMIN LOGIN</a></li>
        <li><a href="../shopkeeper/shopkeeperlogin.jsp">SHOPKEEPER LOGIN</a></li>
        <li><a href="../admin/adminLogin.jsp">CUSTOMER LOGIN</a></li> -->
     <!--    <li><a href="customerReg.jsp">NEW REGISTRATION</a></li>
        <li class="dropdown">
    <a class="dropbtn">LOGIN</a>
    <div class="dropdown-content">
      <a href="../admin/adminLogin.jsp">ADMIN LOGIN</a>
      <a href="../shopkeeper/shopkeeperlogin.jsp">SHOPKEEPER LOGIN</a>
      <a href="../customer/customerLogin.jsp">CUSTOMER LOGIN</a>
      
    </div> 
  </li>-->
      </ul>
    </div>
  </div>
</div>
<h1 style="color: white;margin-top: 60px;text-align: center;">Aadhar Card List</h1>  
<table border="1"  style="width: 1200px;margin:0 auto;color: white;border: 3px solid white;margin-top: 50px; ">  
<tr style="text-align: center;font-size: 21px; font-weight: 600;color: yellow"><th style="height: 50px;">Id</th><th style="height: 50px;">Card Number</th><th style="height: 50px;">Aadhar Number</th><th style="height: 50px;">Name</th><th style="height: 50px;">Edit</th><th style="height: 50px;">Delete</th></tr>  
   <c:forEach var="emp" items="${list}">   
   <tr style="height: 40px;text-align: center;font-size: 17px;font-weight: 500;">  
   <td>${emp.id}</td>  
   <td>${emp.cardno}</td>  
   <td>${emp.aadharno}</td>  
   <td>${emp.name}</td>  
   <td><a style="color: green;font-size:16px; font-weight: 600;" href="editemp/${emp.id}">Edit</a></td>  
   <td><a style="color: green;font-size:16px;font-weight: 600;" href="deleteemp/${emp.id}">Delete</a></td>  
   </tr>  
   </c:forEach>  
   </table>  
   <br/>  
   <div style="width: 100%;text-align: center;">
   <button style="background: none;border: 3px solid yellowgreen;padding: 8px 15px;margin: 0 auto;margin-top: 40px;"><a style="text-decoration: none;font-size: 18px;font-weight: 600;color: yellowgreen;" href="http://localhost:8086/epds/homePage/homePage.jsp">Back</a></button>
</div>

  <div class="footer" style="position: fixed;bottom: 0;width:100%;">
  <div class="shell">
    <p class="lf">Copyright &copy; 2019 <a href="#">ePDS</a> - All Rights Reserved</p>
    <p class="rf"><a href="#">ePDS</a> by <a href="#" target="_blank">Pioneers</a></p>
    <div style="clear:both;"></div>
  </div>
</div>
</body>