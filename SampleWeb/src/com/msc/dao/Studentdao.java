package com.msc.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.msc.dbo.Studentdb;

public class Studentdao {
	
	public int registerstudent(Studentdb db_java) throws ClassNotFoundException {
		
		String INSERT_USERS_SQL="INSERT INTO public.db_java"+
		"(Name, Rollno, Contact_no, DOB, Email_ID, Password) VALUES"+
		" (?, ?, ?, ?, ?, ?);";
		int result=0;
		
		Class.forName("org.postgresql.Driver");
		
		try(Connection ObCon = DriverManager.getConnection("jdbc:postgresql://localhost:5434/postgres","postgres", "admin");
				PreparedStatement preparedStmt = ObCon.prepareStatement(INSERT_USERS_SQL))
				{
		
			preparedStmt.setString(1,db_java.getName() );
			preparedStmt.setLong(2,db_java.getRollno() );
			preparedStmt.setLong(3,db_java.getContactno() );
			preparedStmt.setString(4,db_java.getDob());
			preparedStmt.setString(5,db_java.getEmail());
			preparedStmt.setString(6,db_java.getPassword());
			//preparedStmt.setString(7,db_java.getConfirm_pwd());
			
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
