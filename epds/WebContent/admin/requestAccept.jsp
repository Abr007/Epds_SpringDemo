<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="com.dto.CustomerRegister"  %>
     <%@ page import="com.bl.ShopBl"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
if(session.getAttribute("user")!=null)
{

String cardno=request.getParameter("cardno");
String area=request.getParameter("area");
String income=request.getParameter("income");
String email=request.getParameter("email");
String name=request.getParameter("name");
CustomerRegister cr1=new CustomerRegister();
out.print(cardno);
cr1.setCardNo(cardno);
cr1.setArea(area);
cr1.setIncome(income);
cr1.setEmail(email);
cr1.setName(name);
ShopBl.newRegister(cr1);
response.sendRedirect("adminHome.jsp");

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