package com.concept.employee.dao;

import java.sql.ResultSet;    
import java.sql.SQLException;    
import java.util.List;    
import org.springframework.jdbc.core.BeanPropertyRowMapper;    
import org.springframework.jdbc.core.JdbcTemplate;    
import org.springframework.jdbc.core.RowMapper;    
import com.concept.employee.bean.Emp;    

public class EmpDao
{
	JdbcTemplate template;    
    
	public void setTemplate(JdbcTemplate template) {    
	    this.template = template;    
	}    

	/*
	 * public int save(Emp p){ String
	 * sql="insert into Emp99(name,salary,designation) values('"+p.getName()+"',"+p.
	 * getSalary()+",'"+p.getDesignation()+"')"; return template.update(sql); }
	 */   
	public int update(Emp p){    
	    String sql="update AADHAR set AADHARNO='"+p.getAadharno()+"' where id="+p.getId()+"";    
	    return template.update(sql);    
	}    
	public int delete(int id){    
	    String sql="delete from AADHAR where id="+id+"";    
	    return template.update(sql);    
	}    
	public Emp getEmpById(int id){    
	    String sql="select * from AADHAR where id=?";    
	    return template.queryForObject(sql, new Object[]{id},new BeanPropertyRowMapper<Emp>(Emp.class));    
	}    
	public List<Emp> getEmployees(){    
	    return template.query("select * from AADHAR",new RowMapper<Emp>(){    
	        public Emp mapRow(ResultSet rs, int row) throws SQLException {    
	            Emp e=new Emp();    
	            e.setId(rs.getInt(1));    
	            e.setCardno(rs.getString(2));
	            e.setAadharno(rs.getString(3));
	            e.setName(rs.getString(4));    
	                
	                
	            return e;    
	        }    
	    });    
	}    

}
