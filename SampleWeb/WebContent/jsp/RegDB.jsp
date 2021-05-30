<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Account Creation Page</title>
</head>
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
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

input[type=password], textarea {
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
input[type=password]:focus, textarea:focus {
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
#message {
  display:none;
  width:350px;
  height:270px;
  top: 20px;
  left : 350px;
  background: #f1f1f1;
  color: #000;
  position: relative;
  padding: 20px;
  margin-top: 10px;
  
}

#message p {
  padding: 10px 35px;
  font-size: 18px;
}

/* Add a green text color and a checkmark when the requirements are right */
.valid {
  color: green;
}

.valid:before {
  position: relative;
  left: -35px;
  content :"\2714";
}

/* Add a red text color and an "x" when the requirements are wrong */
.invalid {
  color: red;
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
.fa
{
margin-right:10px;
}
#hide1{
	display:none;
}
#hide3{
	display:none;
}
.eye
{
position: absolute;
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
<form action="<%=request.getContextPath() %>/StudentServlet" method="post" >
<h2 align="center">Registration Form</h2>
<div class = "container">
<table border="1" class ="table">
<tr>
<td class = "colourfield">Name:</td>
<td ><input type="text" id="name" name="name" style="width:272px" required oninvalid="this.setCustomValidity('Name is mandatory')"
oninput="setCustomValidity('')"/></td>
</tr>

<tr>
<td class = "colourfield">Roll No:</td>
<td ><input type="text" id="rollno" name="rollno" style="width:272px" required
oninvalid="this.setCustomValidity('Rollno is mandatory')"
oninput="setCustomValidity('')"/></td>
</tr>

<tr>
<td class = "colourfield">Contact No:</td>
<td ><input type="text" id="contactno" name="contactno" style="width:272px" required
oninvalid="this.setCustomValidity('Contactno is mandatory')"
oninput="setCustomValidity('')"/></td>
</tr>

<tr>
<td class = "colourfield">DOB:</td>
<td><input type="text" id="dob" name="dob" placeholder="(dd-MM-yyyy)" style="width:272px" required
oninvalid="this.setCustomValidity('DOB is mandatory')"
oninput="setCustomValidity('')"/></td>
</tr>

<tr>
<td class = "colourfield">Email Id:</td>
<td ><input type="text" id="email" name="email" placeholder="Enter mail id with extension @gmail.com"
 style="width:272px" required oninvalid="this.setCustomValidity('Email-ID is mandatory')"
oninput="setCustomValidity('')"/></td>
</tr>

<tr>
<td class = "colourfield" >Password:</td>
<td ><input type="password" id="pwd" name="pwd" 
placeholder="Enter a mix of letters, numbers &symbols" style="width:272px" class = "field" 
required oninvalid="this.setCustomValidity('Password is mandatory')"
oninput="setCustomValidity('')"/>
<span class="eye" onclick="toggle()">
<i id="hide1" class="fa fa-eye"></i>
<i id="hide2" class="fa fa-eye-slash"></i>
</span>
</td>
</tr>

<tr>
<td class = "colourfield">Confirm:</td>
<td ><input type="password" id="Cpwd" name="Cpwd" style="width:272px" class = "field" required/>
<span class="eye" onclick="toggle1()">
<i id="hide3" class="fa fa-eye"></i>
<i id="hide4" class="fa fa-eye-slash"></i>
</span>
</td>
</tr>

<tr>
<td colspan="4" align="center"><input type="submit" id="sub" name="sub" value="Submit"/>
<input type="reset" id="resub" name="resub" value="Reset"/>
</td>

</tr>
</table>
</div>
</form>
<script >
function toggle()
{
	var x=document.getElementById("pwd");
	var y=document.getElementById("hide1");
	var z=document.getElementById("hide2");
	if(x.type ==='password')
		{
		x.type="text";
		y.style.display="block";
		z.style.display="none";
		}
	else
	{
		x.type="password";
		y.style.display="none";
		z.style.display="block";
	}
	}
function toggle1()
{
	var r=document.getElementById("Cpwd");
	var s=document.getElementById("hide3");
	var t=document.getElementById("hide4");
	if(r.type ==='password')
		{
		r.type="text";
		s.style.display="block";
		t.style.display="none";
		}
	else
	{
		r.type="password";
		s.style.display="none";
		t.style.display="block";
	}
	}

</script>
<div id="message">
  <h3>Password must contain the following:</h3>
  <p id="letter" class="invalid">A <b>lowercase</b> letter</p>
  <p id="capital" class="invalid">A <b>capital (uppercase)</b> letter</p>
  <p id="number" class="invalid">Atleast one <b>number</b></p>
  <p id="length" class="invalid">Minimum <b>8 characters</b></p>
</div>
				
<script>
var myInput = document.getElementById("pwd");
var myInput2 = document.getElementById("Cpwd");
var letter = document.getElementById("letter");
var capital = document.getElementById("capital");
var number = document.getElementById("number");
var length = document.getElementById("length");

// When the user clicks on the password field, show the message box
myInput.onfocus = function() {
  document.getElementById("message").style.display = "block";
}

// When the user clicks outside of the password field, hide the message box
myInput.onblur = function() {
  document.getElementById("message").style.display = "none";
}

// When the user starts to type something inside the password field
myInput.onkeyup = function() {
	
  // Validate lowercase letters
  var lowerCaseLetters = /[a-z]/g;
  if(myInput.value.match(lowerCaseLetters)) {  
    letter.classList.remove("invalid");
    letter.classList.add("valid");
  } else {
    letter.classList.remove("valid");
    letter.classList.add("invalid");
  }
  
  // Validate capital letters
  var upperCaseLetters = /[A-Z]/g;
  if(myInput.value.match(upperCaseLetters)) {  
    capital.classList.remove("invalid");
    capital.classList.add("valid");
  } else {
    capital.classList.remove("valid");
    capital.classList.add("invalid");
  }

  // Validate numbers
  var numbers = /[0-9]/g;
  if(myInput.value.match(numbers)) {  
    number.classList.remove("invalid");
    number.classList.add("valid");
  } else {
    number.classList.remove("valid");
    number.classList.add("invalid");
  }
  
  // Validate length
  if(myInput.value.length >= 8) {
    length.classList.remove("invalid");
    length.classList.add("valid");
  } else {
    length.classList.remove("valid");
    length.classList.add("invalid");
  }
  
  //password and confirm password check
  var password = document.getElementById("pwd");
  var confirm_password = document.getElementById("Cpwd");
 
  function validatePassword(){
	   if(password.value != confirm_password.value) {
	 confirm_password.setCustomValidity("Mismatch Passwords!");
	   } else {
	 confirm_password.setCustomValidity('');
	   }
	 }
	 
	 password.onchange = validatePassword;
	 confirm_password.onkeyup = validatePassword;
}
</script>
			
</body>
</html>