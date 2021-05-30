package com.msc.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.*;
import java.util.Date;
import java.time.format.DateTimeFormatter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AgeDifference
 */
@WebServlet("/AgeDifference")
public class AgeDifference extends HttpServlet {
	private static final long serialVersionUID = 1L;
	  
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AgeDifference() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out= response.getWriter();
		response.setContentType("text/html");
		LocalDate obDate=LocalDate.now();
		DateTimeFormatter FormatobDate=DateTimeFormatter.ofPattern("dd-MM-yyyy");
		String formatDate=obDate.format(FormatobDate);
		
		out.print("<html><head><title>Todays Date and Your Age</title></head><body><h4>Today Date is:   "+formatDate+"</h4></body></html>");
		
		String struname = request.getParameter("uname");
		String strdob = request.getParameter("dob");
		SimpleDateFormat obFormat= new SimpleDateFormat("dd-MM-yyyy");
		Date obDate1;
		try {
			obDate1 = obFormat.parse(strdob);
			Instant obInst= obDate1.toInstant();
			ZonedDateTime obZone=obInst.atZone(ZoneId.systemDefault());
			LocalDate objLdate=obZone.toLocalDate();
			Period obDiff=Period.between(objLdate,LocalDate.now() );
			out.println("<html><head></head><body><h3>Hi "+struname+"!</h3></body></html>");
			out.println("<html><head></head><body><h2>Your Age is:  "+obDiff.getYears()+"years  "+obDiff.getMonths()+"months "+obDiff.getDays()+"days</h2></body></html>");
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		
		
		out.flush();
		out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
