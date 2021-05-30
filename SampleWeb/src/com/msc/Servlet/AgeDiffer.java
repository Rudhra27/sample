package com.msc.Servlet;

import java.io.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.time.*;





/**
 * Servlet implementation class AgeDiff
 */
@WebServlet("/AgeDiffer")
public class AgeDiffer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AgeDiffer() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		response.setContentType("text/html");
		  int year = 0 , date =0 , month =0 ;
	      PrintWriter out = response.getWriter();
	      String title = "Age Difference";
	      String Name = request.getParameter("name");
	      String d = request.getParameter("date");
	      date = Integer.parseInt(d);
	      String m = request.getParameter("month");
	      month = Integer.parseInt(m);
	      String y = request.getParameter("year");
	      year = Integer.parseInt(y);
	      
	      	LocalDate pdate = LocalDate.of(year, month,date );
	        // current date
	        LocalDate now = LocalDate.now();
	        // difference between current date and date of birth
	        Period diff = Period.between(pdate, now);
	 
	     
	      String docType =
	         "<!doctype html public \"-//w3c//dtd html 4.0 " + "transitional//en\">\n";
	         
	      out.println(docType +
	         "<html>\n" +
	            "<head><title>" + title + "</title></head>\n" +
	            "<body bgcolor = \"#f0f0f0\">\n" +
	               "<h1 align = \"center\">" + title + "</h1>\n" +
	               "<ul>\n" +
	                  "  <b>Name</b>: "+ Name + "<br>"+"\n<br>"
	                  + "  <li><b>Date Of Birth</b>: "+ "<br>"+"<b>Date</b>: "+" "+ date +" "+ "  <b>Month</b>: " +" " + month +" "+"<b>Year</b>: "+" "+ year +" " + "<br>"+"\n<br>"
	                  +"  <li><b>Current Age</b>: "+ "<br>"+ diff.getYears() +"<b>Years</b> "+" "+ diff.getMonths() +" "+ "  <b>Months</b> "+" "+ diff.getDays()+"<b>Days</b> "
	                 + "\n" +
	               "</ul>\n" +
	            "</body>" +
	         "</html>"
	      );
	      out.flush();
	      out.close();
	   }
	


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
