<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link

      href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap"

      rel="stylesheet"

    />

    <link rel="stylesheet" href="pages/style.css" />
    <style >
.form {
  border-radius: 5px;
  background-color: #f2f2f2;
  position : center;
  margin:auto;
  padding: 20px;
  top : 20px;
  margin-top: 65px;
  margin-bottom:50px;
  right : 32%;
  width:550px;
  height:1000px;
  box-shadow:1px 2px 10px 5px gray;
  
}
input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0px;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
.title {
  padding: 20px;
  text-align: center;
  color: black;
  top : 15px;
  font-size: 30px;
  text-transform: uppercase;
}
</style>
</head>
<script>
function check()
{
	alert("Successfully Applied");
	}
</script>
<body> 

<nav>

      <div class="heading">

        <h4>Application for Passport</h4>

      </div>

      <ul class="nav-links">

        <li><a href="UserHome.jsp">Home</a></li>

        <li><a  href="/PassportVerification/pages/about.html">About</a></li>

        <li><a class="active" href="/PassportVerification/pages/services.html">Services</a></li>

        <li><a href="/PassportVerification/pages/contact.html">Contact</a></li>
        
        <li><a href="Login.jsp">Login</a></li>
        
        <li><a href="UserRegister.jsp">Register</a></li>

      </ul>

    </nav>
     <div class="form">   
  <form action="UserApply" onsubmit="check()"> 
   <h2 class="title">Application</h2> 
        <table> 
  
  			<tr> 
                <td>Surname::</td> 
                <td><input type="text" name="surname" /></td> 
            </tr>
            <tr> 
                <td>Name:</td> 
                <td><input type="text" name="name" /></td> 
            </tr> 
            <tr> 
                <td>Phone Number:</td> 
                <td><input type="text" name="phone" /></td> 
            </tr> 
            <tr> 
                <td>Gender:</td> 
                <td><input type="radio" name="gender" value="male" />Male  
                    <input type="radio" name="gender" value="female" />Female</td> 
            </tr> 
            <tr> 
                <td>Date Of Birth:</td> 
                <td><input type="text" id="dob" name="dob" placeholder="DD/MM/YYYY" required></td> 
            </tr>
            <tr> 
                <td>Father Name:</td> 
                <td><input type="text" id="fname" name="fname" required></td> 
            </tr>
            <tr> 
                <td>Mother Name:</td> 
                <td><input type="text" id="mname" name="mname" required></td> 
            </tr>
            <tr> 
                <td>Place Of Birth:</td> 
                <td><input type="text" id="pob" name="pob" required></td> 
            </tr>
            <tr> 
                <td>Marital Status:</td> 
                <td><input type="radio" name="mstatus" value="Single" />Single  
                    <input type="radio" name="mstatus" value="Married" />Married
                    <input type="radio" name="mstatus" value="Divorced" />Divorced</td> 
            </tr>
            <tr> 
                <td>Education:</td> 
                <td><select name="education"> 
                    <option value="Below SSC">Below SSC</option> 
                    <option value="UnderGraduate">UnderGraduate</option> 
                    <option value="Graduate">Graduate</option>
                    <option value="Post Graduate">Post Graduate</option></select></td> 
            </tr> 
            <tr> 
                
            <tr> 
                <td>State:</td> 
                <td><select name="state"> 
                    <option value="Andhra Pradesh">Andhra Pradesh</option> 
                    <option value="Tamil Nadu">Tamil Nadu</option> 
                    <option value="Karnataka">Karnataka</option>
                    <option value="Kerla">Kerla</option></select></td> 
            </tr> 
            <tr> 
                <td>District:</td> 
                <td><input type="text" id="district" name="district" required></td> 
            </tr>
            <tr> 
                <td>City/Town/Village:</td> 
                <td><input type="text" id="city" name="city" required></td> 
            </tr>
            <tr> 
                <td>Street</td> 
                <td><input type="text" id="street" name="street" required></td> 
            </tr>
            <tr> 
                <td>Pincode:</td> 
                <td><input type="text" id="pincode" name="pincode" required></td> 
            </tr>
  			
        </table> 
  
        <input type="submit"  name="session3" value=<%request.getParameter("session1"); %>> 
  
    </form> 
    </div>
</body>
</html>