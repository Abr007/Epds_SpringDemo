package com.bl;

import com.dao.AdminDao;
import com.dao.SupplyDao;
import com.dto.MonthSelect;
import com.dto.SupplyProduct;
import java.time.LocalDate;
import java.time.Month;
import java.time.format.DateTimeFormatter;
import java.time.format.FormatStyle;
public class SupplyBl {
	public static SupplyProduct getProducts(String cardno)
	{
	SupplyProduct st=null;
	MonthSelect mn=null;
	try
	{
	 st = SupplyDao.getProducts(cardno);
	 String category=st.getCategory();
	 st.setRiceqty(Integer.toString(15));
	 st.setWheatqty(Integer.toString(15));
	 st.setSugarqty(Integer.toString(5));
	 String date=dat();
	 st.setDate(date);
	 String month[]=splitdate(date);
			  if(category.equals("bpl")) 
			  { 
			  st.setRiceqty(Double.toString((Double.parseDouble(st.getRiceqty())+(Double.parseDouble(st.getRiceqty())*45)/100)));
			  st.setWheatqty(Double.toString((Double.parseDouble(st.getWheatqty())+(Double.parseDouble(st.getWheatqty())*45)/100)));
			  st.setSugarqty(Double.toString((Double.parseDouble(st.getSugarqty())+(Double.parseDouble(st.getSugarqty())*45)/100)));
			  mn=AdminDao.month_select();
			  
			  if(month[1].equalsIgnoreCase(mn.getMonthvalue())) {
				  st.setRiceqty(Double.toString((Double.parseDouble(st.getRiceqty())+(Double.parseDouble(st.getRiceqty())*25)/100)));
				  st.setWheatqty(Double.toString((Double.parseDouble(st.getWheatqty())+(Double.parseDouble(st.getWheatqty())*25)/100)));
				  st.setSugarqty(Double.toString((Double.parseDouble(st.getSugarqty())+(Double.parseDouble(st.getSugarqty())*25)/100)));
			  }
			  }
			 
	}
	catch(Exception e)
	{
	System.out.println("**Error** SupplyBL:getProducts "+e.getMessage());
	}

	return st;
	}
	public static String dat() {
		 LocalDate currentDate = LocalDate.now();
		 String formattedDate = currentDate.format(DateTimeFormatter.ofLocalizedDate(FormatStyle.LONG));
		 return  formattedDate;
	 }
	public static String[] splitdate(String g) {
		 String[] splited = g.split("\\s+");
		 return splited; 
	 }
	public static int product_insert( SupplyProduct product)
	{
		int result=0;
		String date;
		SupplyProduct st=product;
		SupplyProduct st1;
		String cardno=product.getCardNo();
		try
		{
			date=dat();
			System.out.println("**Error**"+date);
			String mdate[]=splitdate(date);
			
			st1=SupplyDao.product_id(cardno);
			
			String pdate= st1.getPurchaseDate();
			System.out.println(pdate);
			String monthsplit[]=splitdate(pdate);
			
			if(mdate[1].equalsIgnoreCase(monthsplit[1])) {
				result=0;
			}
			else {
				st.setPurchaseDate(date);
				
				result=SupplyDao.product_insert(st);	
			}
		}
		catch(Exception e)
 		{
			System.out.println("error:  SupplyBl:product_insert"+e.getMessage());
		}
		return result;
	}
}
