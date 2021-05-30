package com.msc.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Locale;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ClientHeader
 */
@WebServlet("/ClientHeader")
public class ClientHeader extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ClientHeader() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		out.println("<h3>Retrieving Client information</h3>");
		
		String contextpath=request.getContextPath();
		out.println("<b>"+"ContextPath : "+"</b>"+contextpath+"<br>");
		
		long modified=request.getDateHeader("Modified-Since");
		out.println("<b>"+"Modified-Since : "+"</b>"+modified+"<br>");
		
		String methodname=request.getMethod();
		out.println("<b>"+"Request Method : "+"</b>"+methodname+"<br>");
		
		String PathTranslated=request.getPathTranslated();
		out.println("<b>"+"PathTranslated : "+"</b>"+PathTranslated+"<br>");
		
		String QS=request.getQueryString();
		out.println("<b>"+"Query String : "+"</b>"+QS+"<br>");
		
		String remoteuser=request.getRemoteUser();
		out.println("<b>"+"Remote User : "+"</b>"+remoteuser+"<br>");
		
		String sessld=request.getRequestedSessionId();
		out.println("<b>"+"Session Id : "+"</b>"+sessld+"<br>");
		
		String uri=request.getRequestURI();
		out.println("<b>"+"URI : "+"</b>"+uri+"<br>");
		
		String sp=request.getServletPath();
		out.println("<b>"+"Servlet path : "+"</b>"+sp+"<br>");
		
		String ce=request.getCharacterEncoding();
		out.println("<b>"+"Character Encoding : "+"</b>"+ce+"<br>");
		
		String ct=request.getContentType();
		out.println("<b>"+"Content Type : "+"</b>"+ct+"<br>");
		
		Locale locale=request.getLocale();
		out.println("<b>"+"URI : "+"</b>"+locale+"<br>");
		
		String protocol=request.getProtocol();
		out.println("<b>"+"Protocol : "+"</b>"+protocol+"<br>");
		
		String rp=request.getRealPath("/SampleWeb/servlet/EnServ");
		out.println("<b>"+"RealPath : "+"</b>"+rp);
		
		String raddr=request.getRemoteAddr();
		out.println("<b>"+"Remote Address : "+"</b>"+raddr+"<br>");
		
		String rh=request.getRemoteHost();
		out.println("<b>"+"Remote Host : "+"</b>"+rh+"<br>");
		
		String sn=request.getServerName();
		out.println("<b>"+"Server Name : "+"</b>"+sn+"<br>");
		
		int sport=request.getServerPort();
		out.println("<b>"+"Server Port : "+"</b>"+sport+"<br>");
		
		
		
		
		
	}

}
