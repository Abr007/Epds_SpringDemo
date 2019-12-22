package com.bl;

import java.util.ArrayList;

import com.dao.AllotpDao;
import com.dao.CustomerReg;
import com.dao.ShopDao;
import com.dao.SupplyDao;
import com.dto.CustomerRegister;
import com.dto.ShopAdd;
public class ShopBl {
	public static int addShop(ShopAdd shopNo)
	{
		int result=0;
		try
		{
			result =ShopDao.insertShop(shopNo);
			AllotpDao.product_insert(shopNo);
		}
		catch(Exception e)
		{
			result=-1;
			System.out.println("**Error** StudentBL:addStudent "+e.getMessage());
		}
		return result;
	}
	
	public static ArrayList<ShopAdd> getShopes()
	{
		 ArrayList<ShopAdd> shopList=null;
		
		try
		{
			
			shopList=ShopDao.getShops();
			
		}
		catch(Exception e)
 		{
			System.out.println("error:  EmployeeDao:employee_getEmployee"+e.getMessage());
		}
		return shopList;
	}
	public static void newRegister(CustomerRegister cr)
	{
		try
		{
			String category=null;
			String area=cr.getArea();
			String shopno=ShopDao.getShopno(area);
			cr.setShopNo(shopno);
			String income=cr.getIncome();
			int i=Integer.parseInt(income);
			if(i>=27000) {
				category="apl";
			}
			else {
				category="bpl";
			}
			cr.setCategory(category);
			String d="10 March 2019";
			cr.setPdate(d);
			 int r=ShopDao.newRegister(cr); 
			 int re=SupplyDao.customerpurchasedrow(cr);
			 String receiverMailId=cr.getEmail();
			 String customername=cr.getName();
			 String cardno=cr.getCardNo();
			 System.out.println(receiverMailId+customername+shopno+cardno+category);
			 int r2=CustomerReg.aadharlink(cr);
			 TrialBL.generateAndSendEmail(receiverMailId, customername, shopno, cardno, category);
			
		}
		catch(Exception e)
 		{
			System.out.println("error:  newRegister"+e.getMessage());
		}
	}
}
