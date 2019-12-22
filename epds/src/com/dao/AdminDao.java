package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import com.dto.AdminLogin;
import com.dto.CustomerRegister;
import com.dto.MonthSelect;
import com.dto.ShopAdd;
import com.dto.SupplyProduct;
import com.dao.DBHelper;

public class AdminDao {
	public static AdminLogin validateAdmin(AdminLogin user1)
	{
		Connection con=null;
		ResultSet resultSet=null;
		AdminLogin user2=null;
		
		try
		{
			
			
			String sql = "SELECT * FROM ADMINLOGIN WHERE USERNAME=? AND PASSWORD=?";
	        con=DBHelper.getConnection();
	       PreparedStatement ps=null;
	    	ps=con.prepareStatement(sql);
	
			ps.setString(1,user1.getUserName());
			ps.setString(2,user1.getPassword());
			System.out.println(user1.getUserName());
			System.out.println(user1.getPassword());
			  resultSet =ps.executeQuery();
		
	         if(resultSet.next()) {
	        	 
	        	 user2= new AdminLogin();
	        	 user2.setUserName(resultSet.getString("userName"));
	        	 user2.setPassword(resultSet.getString("password"));
	        	 
	         }
	         con.close();
	         ps.close();
	        
		}
		catch(Exception e)
		{
			System.out.println("**Error** AdminDL:validateAdmin "+e.getMessage());
		}
		
	return user2;
	}
	public static int month_update(MonthSelect month) {
		int result=0;
		String query;
		PreparedStatement ps=null;
		Connection con=null;
		try {
			con=DBHelper.getConnection();
			query="update FESTIVALMONTH set MONTH=?";
			ps=con.prepareStatement(query);
			ps.setString(1, month.getMonthvalue());
			result =ps.executeUpdate();
			ps.close();
			con.close();
		}
		catch(Exception e) {
			System.out.print("Error: AdminDao :month_update"+e.getMessage());
		}
		return result;
	}
	public static MonthSelect month_select()
	{
	Connection con=null;
	Statement statement =null;
	ResultSet resultSet=null;
	MonthSelect mn=null;
	try
	{


	String sql = "select MONTH from FESTIVALMONTH";
	       con=DBHelper.getConnection();
	       statement = con.createStatement();
	       resultSet = statement.executeQuery(sql);
	        if(resultSet.next()) {
	        mn = new MonthSelect();
	        mn.setMonthvalue((resultSet.getString("MONTH")));
	        con.close();
	        }
	        
	}
	catch(Exception e)
	{
	System.out.println("**Error** StudentDL:getStudent "+e.getMessage());
	}

	return mn;
	}
	public static ArrayList<CustomerRegister> newCustomerReg()
	{
	Connection con=null;
	Statement statement =null;
	ResultSet resultSet=null;
	ArrayList<CustomerRegister> cr=null;

	try
	{

cr=new ArrayList<CustomerRegister>();
	String sql = "SELECT * FROM CUSTOMERDETAILS WHERE STATUS=0";
	       con=DBHelper.getConnection();
	       statement = con.createStatement();
	       resultSet = statement.executeQuery(sql);
	        while(resultSet.next()) {
	        CustomerRegister customerReg=new CustomerRegister();
	        customerReg.setName(resultSet.getString("NAME"));
	        customerReg.setNoofmembers(resultSet.getString("NOOFMEMBERS"));
	        customerReg.setCity(resultSet.getString("CITY"));
	        customerReg.setState(resultSet.getString("STATE"));
	        customerReg.setPincode(resultSet.getString("PINCODE"));
	        customerReg.setIncome(resultSet.getString("INCOME"));
	        customerReg.setEmail(resultSet.getString("EMAIL"));
	        customerReg.setPhoneNumber(resultSet.getString("PHONENUMBER"));
	        customerReg.setArea(resultSet.getString("AREA"));
	        customerReg.setCardNo(resultSet.getString("CARDNO"));
	        cr.add(customerReg);
	        }
	       
			con.close();
	}
	catch(Exception e)
	{
	System.out.println("**Error** AdminDao:newCustomerReg "+e.getMessage());
	}

	return cr;
	}

}
