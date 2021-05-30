<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Successful Page</title>
</head>
<style>
.container {
  text-align : center;
  background-color: #f1f1f1;
  padding: 20px;
}
.field{
width:300px;
height:20px;
}
.colourfield{
width:200px;
height:20px;
background-color: #4CAF50;
color: white;
}

.table{
width: 10000; 
border-collapse: collapse;
border-style:solid ;
border-color: black;
margin-left: auto ;
margin-right: auto; "

}


.button {
font-size:16px;
margin-left: auto ;
margin-right: auto;
background-color: #008CBA;
} /* Blue */

.content {
  text-align: center
  
}
.center {
  
  margin-left:  auto;
  margin-right: auto;
  
}

</style>
<body>
 <%
String rollno = request.getParameter("rollno");
String name = request.getParameter("name");
String contno =request.getParameter("contactno");
String DOB = request.getParameter("dob");
String Uname = request.getParameter("email");
String Pwd = request.getParameter("pwd");
String CPwd = request.getParameter("Cpwd");
%>
 	<div class="container">
 		<h1>
 			<b>Successfully Registered!</b>
 		</h1>
 		<br></br>


 		<h2>
 			<b>Your Details</b>
 		</h2>


 		<table border="1" class="table">

 			<tr>
 				<td class="colourfield">
 					<b>Name</b>
 				</td>
 				<td class="field">
 					<%=name%>
 				</td>
 			</tr>

			<tr>
 				<td class="colourfield">
 					<b>Roll No</b>
 				</td>
 				<td class="field">
 					<%=rollno%>
 				</td>
 			</tr>
 			
 			<tr>
 				<td class="colourfield">
 					<b>Contact No</b>
 				</td>
 				<td class="field">
 					<%=contno%>
 				</td>
 			</tr>

 			<tr>
 				<td class="colourfield">
 					<b>DOB</b>
 				</td>
 				<td class="field">
 					<%=DOB%>
 				</td>
 			</tr>

 			<tr>
 				<td class="colourfield">
 					<b>Email ID</b>
 				</td>
 				<td class="field">
 					<%=Uname%>
 				</td>
 			</tr>

 			<tr>
 				<td class="colourfield">
 					<b>Password</b>
 				</td>
 				<td class="field">
 					<%=Pwd%>
 				</td>
 			</tr>

 			<tr>
 				<td class="colourfield">
 					<b>Confirm Password</b>
 				</td>
 				<td class="field">
 					<%=CPwd%>
 				</td>
 			</tr>

 		</table>

 	</div>

</body>
</html>