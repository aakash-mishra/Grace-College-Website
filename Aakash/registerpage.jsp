<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>

 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<script type="text/javascript">

function validatelast()
{
	
	var fname=document.getElementById("fname").value;
	var lname=document.getElementById("lname").value;
	
	if(fname==lname)
	{
		alert("First name and last name cannot be same! ");
		location.reload();
		return false;
		
	}
	else
	return validate();
}

function validate()
{
		var x = document.forms["myForm"]["email"].value;
    var atpos = x.indexOf("@");
    var dotpos = x.lastIndexOf(".");
    if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length) {
        alert("Not a valid e-mail address");
		location.reload();
return false;		
	}
        
		
		else
		{
        return validatepass();		
		}
}


		function validatepass()
		{
		var password = document.getElementById("txtPassword").value;
        var confirmPassword = document.getElementById("txtConfirmPassword").value;
        if (password != confirmPassword) {
            alert("Passwords do not match. Please retry");
			location.reload();
            return false;
        }
		else
		return validateuser();
	
		}
		
		function validateuser()
		{
			
	var user= document.getElementById("username").value;
    if(user.length<5) {
      alert("Username should be more than 5 characters");
      location.reload();
      return false;
		}
		
		else
			
		return true;
		}
        


</script>
<title>Registration Form</title>
</head>
<body>
<form name="myForm" method="post" onSubmit="return validatelast();" action="registration.jsp" >
<center>
<table border="2" width="30%" cellpadding="5" bgcolor="black">
<thead>
<tr>
<th colspan="5">Registration</th>
</tr>
</thead>
<tbody>
<tr>
<td>First name</td>
<td><input type="text" name="firstname" value="" id="fname"required /></td>
</tr>
<tr>
<td>Last Name</td>
<td><input type="text" name="lastname" value="" id="lname" required /></td>
</tr>
<tr>
<td>Email</td>
<td><input type="email" name="email" id="email "value="" required/></td>
</tr>
<tr>
<td>User Name</td>
<td><input type="text" name="username" value="" id="username" required/></td>
</tr>
<tr>
<td>Password</td>
<td><input type="password" name="password" value="" id="txtPassword" required /></td>
</tr>
<tr>
<td>Confirm password</td>
<td><input type="password" name="cpassword" value="" id="txtConfirmPassword" required/></td>
</tr>

<tr>
<td><input type="submit" value="Submit"/></td>
<td><input type="reset" value="Reset" /></td>
</tr>
<tr>
<td colspan="2">Already registered?<a href="index.html">Go to Homepage</td></a>
</tr>
</tbody>
</table>
</center>
</form>
</body>
</html>

<jsp:include page="index.html"></jsp:include>