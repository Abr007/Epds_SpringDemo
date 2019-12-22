<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
    <%@ page import="com.dao.DBHelper" %>
    <%@ page import=" java.sql.Connection" %> 
	<%@ page import ="java.sql.PreparedStatement" %>
   <%@ page import =" java.sql.ResultSet" %>
  <%@ page import =" java.sql.Statement" %>
  <%@ page import="com.bl.*" %>
  <%@ page import="com.dao.*" %>
  <%@ page import="com.dto.*" %>
 
<!doctype html>
<html>
<head>
<script type="text/javascript" src="../admin/js/validation.js"></script>
<link rel="stylesheet" href="../admin/css/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="../admin/css/css/style.css" type="text/css" media="all" />
    <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico" />
    <script type="text/javascript" src="../admin/js/js/jquery-3.4.1.js"></script>
    <script type="text/javascript" src="../admin/js/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../admin/js/js/popper.min.js"></script>
    <script type="text/javascript" src="../admin/js/js/cufon-yui.js"></script>
    <script type="text/javascript" src="../admin/js/js/MyriadPro.font.js"></script>
<script type="text/javascript" src="../admin/js/js/ArialBold.font.js"></script>
<meta charset="UTF-8">
<title>NEW CUSTOMER REGISTRATION</title>

<style>
tr{
height: 40px;
}
td{
font-size: 16px;
font-weight: 600;

}
</style>

</head>

<body style="background: white;">
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
<% Connection con=DBHelper.getConnection();
Statement statement=con.createStatement();
ResultSet resultset=statement.executeQuery("select * from shopDetails");
%>
					    <form method="post" action="" onsubmit="return validate()"> 
<h1 style="ont-weight: 700;margin-top: 50px;text-align: center;">NEW REGISTRATION</h1>
					    <table  border="0" style="margin: 0 auto;margin-top: 50px;">
					      <tbody>
					     
					          
					        <tr>
					          <td style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Name</td>
					           <td style="padding-left: 20px;"> <input type="text" name="txtName" id="txtName" ><span id="etxtName" style="color:red; visibility:hidden;position: absolute;left: 290px;">name should not be empty</span></td>
					          </tr>
					          
					           <tr>
					          <td  style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Email</td>
					           <td style="padding-left: 20px;"> <input type="email" name="txtEmail" id="txtEmail" ><span id="etxtEmail" style="color:red; visibility:hidden;position: absolute;left: 290px;">Email should be in format</span></td>
					          </tr>
					           
					           <tr>
					  
					          <td  style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Phone Number</td>

					          <td style="padding-left: 20px;"><input type="text" name="txtPhone" id="txtPhone" maxlength="10" ><span id="etxtPhone" style="color:red; visibility:hidden;position: absolute;left: 290px;">phone number should be 9 numbers</span></td>

					          </tr>
					          
					        <tr>
					          <td style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">No of family members</td>

					          <td style="padding-left: 20px;"><input type="text" name="txtNofam" id="txtNofam" ><span id="etxtNofam" style="color:red; visibility:hidden;position: absolute;left: 290px;">field should not be empty</span></td>
					          </tr>
					          
					          <tr>
					          <td style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">City</td>
					          <td style="padding-left: 20px;"><input type="text" name="txtcity" id="txtcity" ><span id="etxtcity" style="color:red; visibility:hidden;position: absolute;left: 290px;">field should not be empty</span></td>
					          </tr>
					          
					          <tr>
					          <td style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Area 
					          </td>
					          <td style="padding-left: 20px;"><select name="area" id="area">
					          <option value="select">choose your area</option>
					          <% while(resultset.next())
								{%>
								<option><%=resultset.getString(3) %></option>
								<%} %>
								
					          </select>	
					          <span style="color:red; visibility:hidden;position: absolute;left: 290px;" id="earea">should select one</span></td>
					          </tr>
					          
					          <tr>
					          <td style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">State </td>
					          <td style="padding-left: 20px;"><input type="text" name="txtState" id="txtState" value="kerala" readonly="readonly" ></td>
					          <%-- <td align="left" valign="middle" style="color: #F70509"><%=eStudent_name%>
					          <span id="eStudent_name" style="color:red; visibility:hidden">name should not be empty</span>
					          </td> --%>
					          </tr>
					          
					        <tr>
					          <td style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Pincode</td>
					          <td style="padding-left: 20px;"><input type="text" name="txtPincode"  id="txtPincode"><span id="etxtPincode" style="color:red; visibility:hidden;position: absolute;left: 290px;">field should not be empty</span></td>
					          </tr>
					          
					   
					          
					        <tr>
					          <td style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Family Income</td>
					          <td style="padding-left: 20px;"><input type="text" name="txtIncome" id="txtIncome" ><span id="etxtIncome" style="color:red; visibility:hidden;position: absolute;left: 290px;">field should not be empty</span></td>
					          </tr>
					          
					        <tr>
					          <td style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">&nbsp;</td>
					          <td><input type="submit" style="background: none;font-size: 20px;font-weight: 600;margin-top: 40px;border: 2px solid black;padding: 5px 15px;" name="submit" id="submit" value="Submit"></td>
					          </tr>
					          
					        </tbody>
					      </table>
						  <%
         if(request.getParameter("submit")!=null)
         {
         String n=request.getParameter("txtName");
         String em=request.getParameter("txtEmail");
        String p=request.getParameter("txtPhone");
         String meme=request.getParameter("txtNofam");
         String city=request.getParameter("txtCity");
         String ar=request.getParameter("area");
         String st=request.getParameter("txtState");
        String pin=request.getParameter("txtPincode");
         String inc=request.getParameter("txtIncome");
         
         try
         {
         int result=0;
         CustomerRegister cr=new CustomerRegister();
         cr.setName(n);
         cr.setEmail(em);
         cr.setPhoneNumber(p);
         cr.setNoofmembers(meme);
         cr.setCity(city);
         cr.setArea(ar);
         cr.setState(st);
         cr.setState(st);
        cr.setPincode(pin);
         cr.setIncome(inc);
         result=CustomerBl.customer_insert(cr);
         if(result>0)
        {
        /* System.out.println("successfully inserted"); */
        %>
        <script>
        alert("successfully inserted");
        <%
        //response.sendRedirect("adminHome.jsp");
        %>
        </script>
        <%
        }
        else
        {
        System.out.println("failed");
        }
       
       
         
         }
         catch(Exception e)
         {
         System.out.println(e);
         }
         }
         %>
						  
                      </form>
   <div class="footer" style="position: fixed;bottom:0;width: 100%;">
  <div class="shell">
    <p class="lf">Copyright &copy; 2019 <a href="#">ePDS</a> - All Rights Reserved</p>
    <p class="rf"><a href="#">ePDS</a> by <a href="#" target="_blank">Pioneers</a></p>
    <div style="clear:both;"></div>
  </div>
</div>
</body>
</html>
