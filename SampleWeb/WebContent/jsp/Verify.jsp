<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.text.SimpleDateFormat,java.time.*,java.util.Date" %>   
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Account Verification Page</title>
</head>
<body>
<%
String strfname = request.getParameter("fname");
String strlname = request.getParameter("lname");
String strdob = request.getParameter("dob");
String struname = request.getParameter("email");
String strpwd = request.getParameter("pwd");
String strcpwd = request.getParameter("Cpwd");

int i=1,j=1,k=1,l=1; 
SimpleDateFormat obFormat= new SimpleDateFormat("dd-MM-yyyy");
Date obDate= obFormat.parse(strdob);
Instant obInst= obDate.toInstant();
ZonedDateTime obZone=obInst.atZone(ZoneId.systemDefault());
LocalDate objLdate=obZone.toLocalDate();
Period obDiff=Period.between(objLdate,LocalDate.now() );

if (obDiff.getYears()<=18)
{	
%>
<p>You are not eligible to create account since you are below 18</p>
<%
}
else
{
if(strfname.isEmpty() || strlname.isEmpty() || strdob.isEmpty() || 
		struname.isEmpty() || strpwd.isEmpty() || strcpwd.isEmpty())
{
	%>
<p>Enter all the fields!</p>
<%
i=2;
}
else
{
	i=1;
}
	
	
if (struname.length()<6 || struname.length()>30 )
{
%>
<p>Sorry, your username must be between 6 and 30 characters long.</p>	
<% 
j=2;
}
else 
{
	j=1;
}
	
if(strpwd.length()<8)
{
%>
<p>Use 8 characters or more for your Password.</p>
<% 
k=2;
}
else
{
	k=1;
}
if (strpwd.equals(strcpwd))
{
l=1;
}
else
{
%>
<p>Those passwords didn't match.Try again</p>
<%
l=2;
}

if(i==1 && j==1 && k==1 && l==1)
{
%>
   <h1>Your Gmail Account is Created successfully.</h1>
 <%
}
else
{
 %>
<h6> Correct the errors!!</h6>
<%
}
}
%>
</body>
</html>