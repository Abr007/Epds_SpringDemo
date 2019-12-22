package com.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.sql.Connection;

import com.dto.AllotProduct;
import com.dto.CustomerRegister;
import com.dto.ShopAdd;
import com.dto.SupplyProduct;

public class ShopDao {
	public static int insertShop(ShopAdd shopadd)
	{
		int result=0;
		String query;
		PreparedStatement ps=null;
		Connection con;
		try
		{
			
			con=DBHelper.getConnection();
			query = "INSERT INTO shopDetails VALUES (?,?,?,?)";
			ps=con.prepareStatement(query);
			ps.setString(1, shopadd.getShopNo());
			ps.setString(2, shopadd.getCity());
			ps.setString(3, shopadd.getArea());
			ps.setString(4, shopadd.getShopNo());
			result = ps.executeUpdate();
			//System.out.print(result);
			ps.close();
			con.close();
			
		}
		catch(Exception e)
		{
			result=-1;
			System.out.println("**Error** UserDL:registerUser "+e.getMessage());
		}
		return result;
	}
	
	public static ArrayList<ShopAdd> getShops()
	{
		ArrayList<ShopAdd> shopList=null;
		Connection con=null;
		Statement statement=null;
		ResultSet resultSet;
		try
		{
			shopList=new ArrayList<ShopAdd>();
			String sql="select * from shopDetails order by shopno";
			con=DBHelper.getConnection();
			statement =con.createStatement();
			resultSet=statement.executeQuery(sql);
			while(resultSet.next())
			{
				ShopAdd shopadd = new ShopAdd();
				shopadd.setShopNo(resultSet.getString("shopNo"));
				shopadd.setCity(resultSet.getString("city"));
				shopadd.setArea(resultSet.getString("area"));
				shopList.add(shopadd);
			}
			resultSet.close();
	        statement.close();
	        con.close();
	}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return shopList;
	}
	public static int newRegister(CustomerRegister cr) {
		int result=0;
		String query;
		PreparedStatement ps=null;
		Connection con=null;
		String sno=cr.getShopNo();
		try {
			con=DBHelper.getConnection();
			query="update CUSTOMERDETAILS set STATUS=1,SHOPNO=?,CATEGORY=? where CARDNO=?";
			ps=con.prepareStatement(query);
			ps.setString(1, cr.getShopNo());
			ps.setString(2, cr.getCategory());
			ps.setString(3, cr.getCardNo());
			System.out.print(cr.getCardNo());
			result =ps.executeUpdate();
			ps.close();
			con.close();
		}
		catch(Exception e) {
			System.out.print("Error: ShopDao :newRegister"+e.getMessage());
		}
		return result;
	}
	public static String getShopno(String area)
	{
	Connection con=null;
	Statement statement =null;
	ResultSet resultSet=null;
	String sno = null;
	try
	{
		

	String sql = "select SHOPNO from SHOPDETAILS where AREA='"+area+"'";
	       con=DBHelper.getConnection();
	       statement = con.createStatement();
	       resultSet = statement.executeQuery(sql);
	       
	        if(resultSet.next()) 
	        {
	        sno=resultSet.getString("SHOPNO");
	        }
	        con.close();
	}
	catch(Exception e)
	{
	System.out.println("**Error** ShopDao:getShopno "+e.getMessage());
	}

	return sno;
	}
	
}

