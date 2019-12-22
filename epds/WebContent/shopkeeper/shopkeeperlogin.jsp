<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.dto.ShopkeeperLogin" %>
    <%@ page import="com.bl.*" %>
    <%@ page import="com.dao.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
     <script type="text/javascript" src="../admin/js/validation.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="../admin/css/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="../admin/css/css/style.css" type="text/css" media="all" />
    <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico" />
    <script type="text/javascript" src="../admin/js/js/jquery-3.4.1.js"></script>
    <script type="text/javascript" src="../admin/js/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../admin/js/js/popper.min.js"></script>
    <script type="text/javascript" src="../admin/js/js/cufon-yui.js"></script>
    <script type="text/javascript" src="../admin/js/js/MyriadPro.font.js"></script>
<script type="text/javascript" src="../admin/js/js/ArialBold.font.js"></script>
    <title>Shopkeeper Login</title>
</head>
<body>

    <!-- START PAGE SOURCE -->
    <div id="header">
    <div class="shell">
      <h1 id="logo"><a href="#">WCSST 37</a></h1>
      <div id="navigation" class="custom_navigation">
        <ul>
          <li><a href="../homePage/homePage.jsp" class="active">HOME</a></li>
        </ul>
      </div>
    </div>
  </div>
  <div class="Adminlogin_header">
    <div class="Adminlogin_header_head"><h1>Shopkeeper Login</h1></div>
    <hr class="Adminlogin_header_hr">
  </div>
  <div class="admin_body">
    <form method="post" action="" onsubmit="return validate2()">
      <div class="admin_body_table">
        <div class="row">
          <div class="col">
              <label class="admin_body_table_contents admin_body_table_col_left">UserName:</label>
          </div>
          <div class="col">
              <input placeholder="username" type="text" name="txtuname" id="txtuname" value="" class="admin_body_table_input admin_body_table_col_right"><span id="etxtuname" style="top: 7px;
        color: red;
        width:240px;
    font-size: 17px;
    position: absolute;
    left: 271px; visibility:hidden;">username should not be null</span>
          </div>
          <div class="clear"></div>
        </div>
        <div class="row">
            <div class="col">
                <label class="admin_body_table_contents admin_body_table_col_left">Password:</label>
            </div>
            <div class="col">
                <input placeholder="password" type="text"  name="txtpass" id="txtpass" value="" class="admin_body_table_input admin_body_table_col_right"><span id="etxtpass" style="top: 7px;
        color: red;
    font-size: 17px;
    width:240px;
    position: absolute;
    left: 271px; visibility:hidden">password should not be null</span>
            </div>
            <div class="clear"></div>
          </div>
          <button type="submit" name="submit" id="submit" class="admin_login_button">Submit</button>
      </div>    
       <%
				
                  if(request.getParameter("submit")!=null)
                  {
              
                		  
                			  String message=""; 
                              String username="";
                              String password="";
                              ShopkeeperLogin user1=null;
                              ShopkeeperLogin user2=null;

                        	   message="";
                        	   
                        	  username=request.getParameter("txtuname");
                        	  password=request.getParameter("txtpass");
                        	  
                        	  user1= new ShopkeeperLogin();
                        	  user1.setUshopid(username);
                        	  user1.setPshopid(password);
                        	  
                        	  user2=ShoploginBl.validateAdmin(user1);
                        	  
                        	 // out.println(user2.getSUser_ID());
                        	  
                        	  if(user2!=null)
                        	  {
                        		  session.setAttribute("shopkeeper", user2);
                        		  /* System.out.println("success"); */
                        		  response.sendRedirect("shopkeeperHome.jsp");
                        	  }
                        	  else
                        	  {
                        		  message="wrong user id or password";
                        		 // System.out.println("wrong");
                        		%>
                        		<h1 style="top: 233px;
								  color: red;
								  position: absolute;
								  left: 883px;
								  font-size: 24px;">Wrong Shopid</h1>
                        	 <% 
                        	 }
                       	}
                  
                   
                  
                  %>     
    </form>
  </div>
</body>
</html>