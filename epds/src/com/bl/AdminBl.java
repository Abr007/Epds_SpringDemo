package com.bl;

import java.util.ArrayList;

import com.dao.AdminDao;
import com.dao.AllotpDao;
import com.dto.AdminLogin;
import com.dto.AllotProduct;
import com.dto.CustomerRegister;
import com.dto.MonthSelect;

public class AdminBl {
	public static AdminLogin validateAdmin(AdminLogin user1)
	{
		AdminLogin user2=null;
		
		try
		{
			user2=AdminDao.validateAdmin(user1);
			
		}
		catch(Exception e)
		{
			System.out.println("**Error** AdminBl:validateAdmin "+e.getMessage());
		}
		
	return user2;
	}
	
	public static int month_update(MonthSelect month) {
		int result=0;
		try {
			result=AdminDao.month_update(month);
		}
		catch (Exception e) {
			System.out.print("Error: AdminBl :month_update"+e.getMessage());
		}
		return result;
	}

	public static ArrayList<CustomerRegister> newCustomerReg() {
		ArrayList<CustomerRegister> cr=null;
		try {
			cr=AdminDao.newCustomerReg();
		}
		catch (Exception e) {
			System.out.print("Error: AdminBl :newCustomerReg"+e.getMessage());
		}
		return cr;
	}
}

