package com.msc.dao;

import  java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.msc.dbo.Employeedb;

public class Employeedao {

	public int registeremployee(Employeedb employee) throws ClassNotFoundException{
		 
		String Insert_SQL= "INSERT INTO public.employee"+"(name, empid, dept) VALUES"+
		"(?,?,?);";
		
		int result=0;
		
		Class.forName("org.postgresql.Driver");
		
		try(Connection ObCon = DriverManager.getConnection("jdbc:postgresql://localhost:5434/employee_java","postgres", "admin");
				PreparedStatement preparedStmt = ObCon.prepareStatement(Insert_SQL))
				{
		
			preparedStmt.setString(1,employee.getName() );
			preparedStmt.setInt(2,employee.getEmpid() );
			preparedStmt.setString(3,employee.getDept());
			
			
			System.out.println(preparedStmt);
			
			result=preparedStmt.executeUpdate();
			
				}
			catch(SQLException e)
			{
				e.printStackTrace();
				
			}
		
		return result;
		

		
		
	}
	

}
