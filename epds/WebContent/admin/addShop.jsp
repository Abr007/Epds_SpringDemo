<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.dao.ApplicationHelper" %>
    <%@page import="com.dto.ShopAdd" %>
     <%@page import="com.bl.ShopBl" %>
     <%@page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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
<title>Create Shop</title>
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
          <li><a href="adminHome.jsp">HOME</a></li>
          <li><a href="festiveSeason.jsp">FESTIVE SEASON</a></li>
          <li><a href="#" class="active">ADD SHOP</a></li>
          <li><a href="allotProduct.jsp">ALLOT PRODUCT</a></li>
          <li><a href="viewAllotedStock.jsp">STOCK DETAILS</a></li>
          <li><a href="logout.jsp">LOGOUT</a></li>
        </ul>
      </div>
    </div>
  </div>
<%!
  String sCity,sArea; 
  String sShopNo;
  String eCity,eArea,eShopNo;
  boolean ErrorFlag=false;
  boolean sErrorFlag=false;
  int result=0;
  ArrayList<ShopAdd> shopList=ShopBl.getShopes();
%>
<%
sShopNo=ApplicationHelper.generateShopNumber();
if(request.getParameter("submit")==null){
	sCity="";
	 sArea="";
	 eCity="";
	 eArea="";
	 eShopNo="";
}
if(request.getParameter("submit")!=null)
{
	 sCity="";
	 sArea="";
	 sShopNo="";
	 eCity="";
	 eArea="";
	 eShopNo="";
	 try
	 {
		 sShopNo=request.getParameter("txtshopNo");
		 sCity=request.getParameter("txtcity");
		 sArea=request.getParameter("txtarea");
		  if( sShopNo.equals(""))
		 {
			 eShopNo="ID should not be empty";
			 sErrorFlag=true;
			 
		 }
		 if( sCity.equals(""))
		 {
			 eCity="City field should not be empty";
			 sErrorFlag=true;
			 
		 }
		 if( sArea.equals(""))
		 {
			 eArea="Area field should not be empty";
			 sErrorFlag=true;
			 
		 } 
		 if(!sErrorFlag)
		 {
			 
			 ShopAdd shopadd=null;
			 shopadd=new ShopAdd();
			 shopadd.setShopNo(sShopNo);
			 shopadd.setCity(sCity);
			 shopadd.setArea(sArea);
			 
			 result=ShopBl.addShop(shopadd);
			 
			 if(result>0)
			 {
				 session.setAttribute("message", "Shop details added");
				%>
				<script>
				alert("successfully added");
				</script>
			 <% 
			 response.sendRedirect("adminHome.jsp");
			 }
			 else{
				 System.out.print("fail");
			 }
			 
		 }
		 
	 }
	 catch(Exception e)
	 {
		 
		 out.println("error");
		 e.printStackTrace(); 
	 }
}
%>
<form name="form1" id="form1" method="post">
<h1 class="addShop_head">Shop Number :<%=sShopNo %></h1><br>
<input type="hidden" name="txtshopNo" value="<%=sShopNo%>">
<div class="addShop_body">
<div class="row">
<div class="col" style="text-align:right;"><h4>City:</h4></div>
<div class="col"><input type="text" name="txtcity" value=""> <span><%=eCity %></span></div>
</div>
<div class="row">
<div class="col" style="text-align:right;"><h4>Area:</h4></div>
<div class="col"><input type="text" name="txtarea" value=""><span><%=eArea %></span></div>
</div>
</div>
<div class="addShop_buttons">
<button type="submit" name="submit" style="margin-right: 20px;">Create</button>
<button type="reset" name="reset">Clear</button>
</div>
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