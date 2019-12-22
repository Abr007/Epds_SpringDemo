<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.dto.*" %>
    <%@ page import="com.bl.*" %>
    <%@ page import="com.dao.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
<script type="text/javascript" src="../admin/js/validation.js"></script>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
     <link rel="stylesheet" href="../admin/css/css/bootstrap.min.css" type="text/css"> 
        <link rel="stylesheet" href="../admin/css/css/style.css" type="text/css" media="all" />
<script type="text/javascript" src="../admin/js/js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="../admin/js/js/jquery.jcarousel.js"></script>
<script type="text/javascript" src="../admin/js/js/MyriadPro.font.js"></script>
<script type="text/javascript" src="../admin/js/js/ArialBold.font.js"></script>
 <script type="text/javascript" src="../admin/js/js/cufon-yui.js"></script>
<script type="text/javascript" src="../admin/js/js/jquery-func.js"></script>
<link rel="shortcut icon" type="image/x-icon" href="../admin/css/css/images/favicon.ico" />
    <title>Customer Login</title>
</head>
<body>
<%! 
				String euserName;
				boolean sErrorFlag=false;
				String suserName;
				
				
                %>
                
                  <%
                  if(request.getParameter("submit")==null)
                  {
                	  
                	  euserName="";
                	  suserName="";
                	 
                  }
                  if(request.getParameter("submit")!=null)
                  {
                	  
                	  euserName="";
                	 
                	  suserName="";
                	  
                	  
                	  try
                	  {
                		  suserName=request.getParameter("txtname");
                		  
                		  if(suserName.equals(""))
                		  {
                			  euserName="Card Number should not be null";
                			  //out.println(suserName);
                			  sErrorFlag=true;
                		  }
                		  
                		  if(sErrorFlag==false)
                		  {
                			  String message=""; 
                              String username;
                              CustomerLogin user1=null;
                              CustomerLogin user2=null;
                        	  
                          
                              try
                           		{
                        	   message="";
                        	   
                        	  username=request.getParameter("txtname");
                        	
                        	  
                        	  user1= new CustomerLogin();
                        	 user1.setUsername(username);
                        	  
                        	  
                        	  user2=CustomerBl.validateCustomer(user1); 
                
                        	  
                        	  if(user2!=null)
                        	  {
                        		  session.setAttribute("customer", user2);
                        		  /* System.out.println("success"); */
                        		  response.sendRedirect("customerHome.jsp");
                        	  }
                        	  else
                        	  {
                        		  message="wrong user id or password";
                        		  %>
                        		  <h2 style="    position: absolute;color: red;top: 250px;left: 875px;font-size: 21px;background: none;">Invalid Card Number</h2>
                        	  <% }
                        	   
                           
                          }
                          
                          
                          catch(Exception e)
                          {
                        	  System.out.println("login failed");
                          }
                			  
                		  }
                		  
                		  
                	  }
                	  catch(Exception e)
                	  {
                		  System.out.println("submit error");
                	  }
                  }
                   
                  
                  %>
    <!-- START PAGE SOURCE -->
<div id="header">
    <div class="shell">
      <h1 id="logo"><a href="#">WCSST 37</a></h1>
      <div id="navigation">
        <ul>
          <li><a href="../homePage/homePage.jsp" class="active">HOME</a></li>
        </ul>
      </div>
    </div>
  </div>
  <div class="Adminlogin_header">
    <div class="Adminlogin_header_head"><h1>Customer Login</h1></div>
    <hr class="Adminlogin_header_hr">
  </div>
  <div class="admin_body" style="width: 990px;">
     <form method="post" action="">
      <div class="admin_body_table">
        <div class="row">
          <div class="col">
              <label class="admin_body_table_contents admin_body_table_col_left" style="margin-bottom: 0px;margin-top: 6px;">Card Number:</label>
          </div>
          <div class="col">
              <input placeholder="card number" type="text" name="txtname"  class="admin_body_table_input admin_body_table_col_right"><span id="etxtname" style="color:red;font-size: 16px;display: inline-block;margin-top: 5px;"><%= euserName %></span>
          </div>
          <div class="clear"></div>
        </div>
        
          <button type="submit" name="submit" id="submit" class="admin_login_button" style="margin-left: 145px;">Submit</button>
      </div>      
    </form>
  </div>
  <div class="footer">
    <div class="shell">
      <p class="lf">Copyright &copy; 2010 <a href="#">SiteName</a> - All Rights Reserved</p>
      <div style="clear:both;"></div>
    </div>
  </div>
</body>
</html>