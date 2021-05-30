package com.msc.Servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
//import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegisterVerifydb
 */
@WebServlet("/RegisterVerifydb")
public class RegisterVerifydb extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterVerifydb() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{ 
		Connection ObCon = null;
		Statement ObStmt = null;
		ResultSet ObjRes = null;
		
		try
		{
		//String strname = request.getParameter("name");
		//String strrollno = request.getParameter("rollno");
		//String strcontact = request.getParameter("contactno");
		//String strdob = request.getParameter("dob");
		//String struname = request.getParameter("email");
		//String strpwd = request.getParameter("pwd");
		//String strcpwd = request.getParameter("Cpwd");
		
		Class.forName("org.postgresql.Driver");
		ObCon = DriverManager.getConnection("jdbc:postgresql://localhost:5434/postgres","postgres", "admin");
		ObStmt = ObCon.createStatement();
		String strQuery = "SELECT * FROM db_java";

		/*objStmt = objConnect.prepareStatement(strQuery);
		objStmt.setInt(1, rollno);
		objStmt.setString(2, strfname);
		objStmt.setString(3, strlname);
		objStmt.setString(4, strDOB);
		objStmt.setString(5, strUname);
		objStmt.setInt(6, iPwd);
		objStmt.setInt(7, iCPwd);*/
		
		ObjRes = ObStmt.executeQuery(strQuery);

		//objResSt = objStmt.executeQuery(strQuery);
		while (ObjRes.next())
		{

			System.out.println(" Name : " + ObjRes.getString(1)+"  "+"Rollno : " + ObjRes.getLong(2) + "   " + "Contact_no : "
					+ ObjRes.getLong(3) + "  "+ " DOB : " + ObjRes.getString(4)+"  "+"Email_ID : " + ObjRes.getString(5) + "   "+"Password : " + ObjRes.getString(6) + "   "
					+"Confirm_PWD: " + ObjRes.getString(7));

		}
		}
		catch (Exception e)
		{

			e.printStackTrace();
		}
		

}
}