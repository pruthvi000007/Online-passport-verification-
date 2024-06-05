<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
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
  position : absolute;
  margin:auto;
  padding: 20px;
  top : 28%;
  right : 34%;
  width:550px;
  height:350px;
  text-height:6px;
  box-shadow:1px 2px 10px 5px gray;
  
}

input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
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

.applications{
	
}

.buttonss{
position : absolute;
  margin:auto;
  
  top : 28%;
  right : 34%;
  width:50px;
}
.verify{
  position : absolute;
  margin:auto;
  padding: 0px;
  top : 28%;
  
  width:50px;
}


input[type=submit]:hover {
  background-color: #45a049;

</style> 
    <style >
.form {
  border-radius: 5px;
  background-color: #f2f2f2;
  position : absolute;
  margin:auto;
  padding: 20px;
  top : 28%;
  right : 34%;
  width:550px;
  height:450px;
  box-shadow:1px 2px 10px 5px gray;
  
}

input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
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


input[type=submit]:hover {
  background-color: #45a049;

</style> 
    
    <script>
function checkMe(){
	var cd = document.getElementById("dis");
	var price = document.getElementById("show");
	if(cd.checked==true)
		{
		price.style.display="block";
		}
	else
		{
		price.style.display="none";
		}
}

function compute()
{	console.log(this.id)
	var x = document.getElementById(this.id);
	var price = document.getElementById("dis");
	
	
	}

</script>
    
</head>
<body> 

<nav>

      <div class="heading">

        <h4></h4>

      </div>

      <ul class="nav-links">

        <li><a href="Home.jsp">Home</a></li>

        <li><a  href="/Passport/pages/about.html">About</a></li>

        

        <li><a href="/Passport/pages/contact.html">Contact</a></li>
        
        <li><a class="active" href="Login.jsp">Login</a></li>
        
        <li><a href="Register.jsp">Register</a></li>

      </ul>

    </nav>
    
<style>
.hidden-textbox {
  visibility: hidden;
}

input[type='checkbox']:checked~.hidden-textbox {
  visibility: visible;
}
</style>
    

    
    <%try {
	String connectionURL = "jdbc:mysql://localhost:3306/passport";
	Connection connection = null;
	Statement statement = null;
	ResultSet rs = null;
	Class.forName("com.mysql.cj.jdbc.Driver");
	connection = DriverManager.getConnection(connectionURL, "root", "Mani@123");
	statement = connection.createStatement();
	String uname = request.getParameter("uname");
	PreparedStatement preparedStatement = connection.prepareStatement("SELECT * from user where name=?");
	preparedStatement.setString(1, uname);
	rs = preparedStatement.executeQuery();%>
	<div class="form">
<TABLE >
<h2 class="title">Application Details</h2>

<%
while (rs.next()) {
%>

<TR>
<td>Name</td>
<TD ><%=rs.getString(1)+" "+rs.getString(2)%></TD>
</TR>
<TR>
<td>Contact</td>
<TD><%=rs.getString(3)%></TD>
</TR>
<tr>
<td>Gender</td>
<TD><%=rs.getString(4)%></TD>
</TR>
<tr>
<td>Date of Birth</td>
<TD><%=rs.getString(5)%></TD>
</TR>
<tr>
<td>Father Name</td>
<TD><%=rs.getString(6)%></TD>
</TR>
<tr>
<td>Mother Name</td>
<TD><%=rs.getString(7)%></TD>
</TR>
<tr>
<td>Place of Birth</td>
<TD><%=rs.getString(8)%></TD>
</TR>
<tr>
<td>Martial Status</td>
<TD><%=rs.getString(9)%></TD>
</TR>
<tr>
<td>Education</td>
<TD><%=rs.getString(10)%></TD>
</TR>
<tr>
<td>State</td>
<TD><%=rs.getString(11)%></TD>
</TR>
<tr>
<td>District</td>
<TD><%=rs.getString(12)%></TD>
</TR>
<tr>
<td>City</td>
<TD><%=rs.getString(13)%></TD>
</TR>
<tr>
<td>Street</td>
<TD><%=rs.getString(14)%></TD>
</TR>
<tr>
<td>Pin code</td>
<TD><%=rs.getString(15)%></TD>
</TR>
</TABLE><br>


<form action="Update">
<p>Press Submit for Police Verification</p>


<table>
 <tr> 
                <td></td> 
                <td><input type="radio" name="verify" value="Verified" />Verified
                    <input type="radio" name="verify" value="Invalid Details" />Invalid Details</td> 
           </tr>
          
</table>
<button value="<%=rs.getString(2)%>" onclick="submit" name="uname" >Submit</button>
</form>
</div>

<% } %>

<%
	
	rs.close();
	statement.close();
	connection.close();
} catch (Exception ex) {
%>

<%
out.println("Unable to connect to database.");
}
%>




	    
</body>
</html>