 <%@ page import="java.time.LocalDate"%>
 <%@ page import="java.time.LocalTime"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Current Date And Time</title>
</head>
<body>
<%
LocalDate obDate=LocalDate.now();
LocalTime obTime=LocalTime.now();

%>
<h1>Today Date is:   <%=obDate %></h1>
<h1>Current Time is: <%=obTime %></h1>
</body>
</html>