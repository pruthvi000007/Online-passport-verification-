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
    
</head>
<body>
<h3>Successfully Verified</h3>
<form action="Applications.jsp">
<button name="uname" onclick="submit" >Back to Applications</button>
</form>



</body>
</html>