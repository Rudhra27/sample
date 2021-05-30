<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Details</title>
</head>
<style>

.srbutton{
  width: 200px;
  font-size:16px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;

}

input[type=text], textarea {
  -webkit-transition: all 0.30s ease-in-out;
  -moz-transition: all 0.30s ease-in-out;
  -ms-transition: all 0.30s ease-in-out;
  -o-transition: all 0.30s ease-in-out;
  outline: none;
  width:500px;
  height:20px;
  padding: 3px 0px 3px 3px;
  margin: 1px 1px 1px 0px;
  border: 1px solid #DDDDDD;
}
input[type=text]:focus, textarea:focus {
  box-shadow: 0 0 5px rgba(81, 203, 238, 1);
  padding: 3px 0px 3px 3px;
  margin: 1px 1px 1px 0px;
  border: 1px solid rgba(81, 203, 238, 1);
}


.srbutton{
  width: 200px;
  font-size:16px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;

}

input[type=submit] {
  background-color: #04AA6D;
  color: white;
}

input[type=reset] {
  background-color: #FF0000;
  color: white;
}
/* Style the container for inputs */
.container {
  text-align : center;
  background-color: #f1f1f1;
  padding: 20px;
  }


.valid:before {
  position: relative;
  left: -35px;
  content :"\2714";
}


.invalid:before {
  position: relative;
  left: -35px;
  content: "\2718";
}
.colourfield{
background-color: #4CAF50;
color: white;
}

.container i {
    margin-left: -30px;
    cursor: pointer;
}

.table{
width: 10000; 
align : center;
border-collapse: collapse;
border-style:solid ;
border-color: black;
margin-left: auto ;
margin-right: auto; "

}

.button {
  background-color: #f1f1f1;
  padding: 20px;
}

.content {
  text-align: center
  
}
.center {
  
  margin-left:  auto;
  margin-right: auto;
  
}

</style>


<body>
<form action="../EmployeeServlet" method="post">
<h2 align="center">Enter Your Details</h2>
<table border="1">
<tr>
<td class = "colourfield">Name</td>
<td><input type="text" id="name" name="name" required 
oninvalid="this.setCustomValidity('Name is mandatory')" oninput="this.setCustomValidity('')"/>
</td>
</tr>

<tr>
<td class = "colourfield">Employee ID</td>
<td><input type="text" id="empid" name="empid" required 
oninvalid="this.setCustomValidity('Employee ID is mandatory')" oninput="this.setCustomValidity('')"/>
</td>
</tr>

<tr>
<td class = "colourfield">Department</td>
<td><input type="text" id="dept" name="dept" required 
oninvalid="this.setCustomValidity('Department is mandatory')" oninput="this.setCustomValidity('')"/>
</td>
</tr>
<tr>
<td colspan="4" align="center"><input type="submit" id="sub" name="sub" value="Submit"/>
<input type="reset" id="resub" name="resub" value="Reset"/>
</td>

</tr>

</table>
</form>
</body>
</html>