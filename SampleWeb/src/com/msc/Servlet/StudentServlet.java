package com.msc.Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.msc.dao.Studentdao;
import com.msc.dbo.Studentdb;

/**
 * Servlet implementation class StudentServlet
 */
@WebServlet("/StudentServlet")
public class StudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    private Studentdao studentdao= new Studentdao();    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		RequestDispatcher dispatcher=request.getRequestDispatcher("/jsp/RegDB.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Long strrollno =Long.parseLong( request.getParameter("rollno"));
		Long strcontact =Long.parseLong( request.getParameter("contactno"));
		String strname = request.getParameter("name");
		String strdob = request.getParameter("dob");
		String struname = request.getParameter("email");
		String strpwd = request.getParameter("pwd");
		//String strcpwd = request.getParameter("Cpwd");
		
	
		
		Studentdb db_java=new Studentdb();
		
		db_java.setName(strname);
		db_java.setRollno(strrollno);
		db_java.setContactno(strcontact);
		db_java.setDob(strdob);
		db_java.setEmail(struname);
		db_java.setPassword(strpwd);
		//db_java.setConfirm_pwd(strcpwd);
		
		try {
			studentdao.registerstudent(db_java);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		RequestDispatcher dispatcher=request.getRequestDispatcher("/jsp/RegisterDbS.jsp");
		dispatcher.forward(request, response);
		}
		
}
