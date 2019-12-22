package com.dao;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.dto.HistoryDto;
public class HistoryDao {
	public static ArrayList<HistoryDto> getHistorys() {
		ArrayList<HistoryDto> historyList=null;
		Connection con=null;
		Statement statement=null;
		ResultSet resultSet;
		try
		{
			historyList=new ArrayList<HistoryDto>();
			String sql="select * from CUSTOMERPURCHASED order by PURCHASEID";
			con=DBHelper.getConnection();
			statement =con.createStatement();
			resultSet=statement.executeQuery(sql);
			while(resultSet.next())
			{
				HistoryDto history = new HistoryDto();
				history.setPurchaseid(resultSet.getString("purchaseid"));
				history.setCardno(resultSet.getString("cardno"));
				history.setPurchasedate(resultSet.getString("purchasedate"));
				history.setRiceqty(resultSet.getString("riceqty"));
				history.setWheatqty(resultSet.getString("wheatqty"));
				history.setSugarqty(resultSet.getString("sugarqty"));
				historyList.add(history);
			}
			resultSet.close() ;
	        statement.close();
	        con.close();
	}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return historyList;
	}
}
