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
  width:400px;
  height:450px;
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
<body> 

<nav>

      <div class="heading">

        <h4>Application for Passport</h4>

      </div>

      <ul class="nav-links">

        <li><a href="UserHome.jsp">Home</a></li>

        <li><a  href="/PassportVerification/pages/about.html">About</a></li>

        

        <li><a href="/PassportVerification/pages/contact.html">Contact</a></li>
        
        <li><a href="Login.jsp">Login</a></li>
        
        <li><a class="active" href="/UserRegister.jsp">Register</a></li>
        

      </ul>

    </nav>
 
  <div class="form">  
<form action="UserRegister" onsubmit="checkMe()">
<h2 class=title>user registration</h2>
 <label for="name">Name:</label><br>
  <input type="text" id="name" name="name" required><br>
  <label for="uname">User Name:</label><br>
  <input type="text" id="uname" name="uname" required><br>
  <label for="password">Password:</label><br>
  <input type="text" id="password" name="password" required><br><br>
  
  <input type="submit" value="Submit">
</form>
</div>

        
</body>
</html>