
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<style>
.error{color:red;}

</style>
  
        <h1>Add New Employee</h1>  
       <form:form method="post" action="save" modelAttribute="emp">    
        <table >    
         <tr>    
          <td>Card Number : </td>   
          <td><form:input path="name"  />
          <form:errors path="CARDNO" cssClass="error"/><br><br>  
          </td>  
         </tr>    
         <tr>    
          <td>Aadhar Number :</td>    
          <td><form:input path="AADHARNO" /></td>  
         </tr>   
         <tr>    
          <td>Name :</td>    
          <td><form:input path="name" /></td>  
         </tr>   
         <tr>    
          <td> </td>    
          <td><input type="submit" value="Save" /></td>    
         </tr>    
        </table>    
       </form:form>    

