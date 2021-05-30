<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Account Creation Page</title>
</head>
<body>
<form action="Verify.jsp" method="post">
<h2 align="center">Create your Google Account</h2>
<table border="1">
<tr>
<td>First Name:</td>
<td><input type="text" id="fname" name="fname"/></td>
<td>Last Name:</td>
<td><input type="text" id="lname" name="lname"/></td>
</tr>

<tr>
<td>DOB:</td>
<td><input type="text" id="dob" name="dob"/>(dd-MM-yyyy)</td>
</tr>

<tr>
<td>UserName:</td>
<td ><input type="text" id="email" name="email"/>@gmail.com</td>
<td colspan="2">You can use letters,numbers & periods</td>

</tr>

<tr>
<td>Password:</td>
<td><input type="password" id="pwd" name="pwd" /></td>
<td>Confirm:</td>
<td><input type="password" id="Cpwd" name="Cpwd"/></td>
</tr>
<tr>
<td colspan="4">Use 8 or more characters with a mix of letters, numbers & symbols</td>
</tr>

<tr>
<td colspan="4" align="center"><input type="submit" id="sub" name="sub" value="Submit"/></td>
</tr>



</table>

</form>
</body>
</html>