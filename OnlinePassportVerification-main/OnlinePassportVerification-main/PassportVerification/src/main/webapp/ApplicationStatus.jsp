<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="jakarta.servlet.http.*" %>
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


.button1{
margin : 20px 200px;
width : 70px;
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
.row{
padding-bottom:20px;
}



input[type=submit]:hover {
  background-color: #45a049;

</style> 
    
    
       
</head>
<body> 

<nav>

      <div class="heading">

        <h4>Applications</h4>

      </div>

      <ul class="nav-links">

        <li><a href="/PassportVerification/UserHome.jsp">Home</a></li>

        <li><a  href="/PassportVerification/pages/about.html">About</a></li>

        

        <li><a href="/PassportVerification/pages/contact.html">Contact</a></li>
        
        <li><a href="Login.jsp">Login</a></li>
        
        <li><a href="Register.jsp">Register</a></li>

      </ul>

    </nav>
    

    

    
    <%try {
	String connectionURL = "jdbc:mysql://localhost:3306/passport";
	Connection connection = null;
	Statement statement = null;
	Statement state = null;
	ResultSet rs = null;
	Class.forName("com.mysql.cj.jdbc.Driver");
	connection = DriverManager.getConnection(connectionURL, "root", "Mani@123");
	statement = connection.createStatement();
	 String uname = request.getParameter("session2");
	PreparedStatement preparedStatement = connection.prepareStatement("select * from user");
	
    
	rs = preparedStatement.executeQuery();
	  
	%>
<div class="form">
<TABLE id="customer">
<h2 class="title">Application Status</h2>
<tr >
<th>Applicants</th>
<th>Status</th>
</tr>
<%
while (rs.next()) {
%>
<div class="row">
<TR >

<TD ><%=rs.getString(1)+" "+rs.getString(2)%></TD>
<TD style="padding:10px 30px"><%=rs.getString(16)%></TD>
</TR></div>
<% }
%>

<%
	rs.close();
	statement.close();
	connection.close();
} catch (Exception ex) {

out.println("Unable to connect to database.");
}
%>

</TABLE>


<div class="button1"><form style="align-items: center" action="services.jsp" method="post">
<button name="uname" onclick="submit" >Back</button>
</form>
</div>
</div>


	    
</body>
</html>