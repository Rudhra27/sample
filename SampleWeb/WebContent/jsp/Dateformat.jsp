<%@ page import="java.time.LocalDate"%>
<%@ page import="java.time.format.DateTimeFormatter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Today's Date:</title>
</head>
<body>
<%
LocalDate obDate=LocalDate.now();
DateTimeFormatter FormatobDate=DateTimeFormatter.ofPattern("dd-MM-yyyy");
String formatDate=obDate.format(FormatobDate);
%>
<h1>Today Date is:   <%=formatDate %></h1>
</body>
</html>