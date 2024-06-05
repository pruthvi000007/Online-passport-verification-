<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page import="java.io.*" %>
<!DOCTYPE html>

<html lang="en">

  <head>

    <meta charset="UTF-8" />

    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link

      href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap"

      rel="stylesheet"

    />

    <link rel="stylesheet" href="pages/style.css" />

    <title>Services</title>
    
  <style>
.button {
  background-color: #04AA6D; /* Green */
  border: none;
  color: white;
  padding: 20px;
  width:300px;
  letter-spacing: 0.1em;
  right : 32%;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 18px;
  font-weight:900;
  margin: 25px 30px 0px 40%;
  cursor: pointer;
}

.button1 {border-radius: 2px;}
.button2 {border-radius: 4px;}
.button3 {border-radius: 8px;}
.button4 {border-radius: 12px;}
.button5 {border-radius: 50%;}
</style>

  </head>

  <body>
	
    <nav>

      <div class="heading">

        <h4>Passport Seva</h4>

      </div>

      <ul class="nav-links">

        <li><a href="/PassportVerification/UserHome.jsp">Home</a></li>

        <li><a href="about.html">About</a></li>

        <li><a class="active" href="services.jsp">Services</a></li>

        <li><a href="contact.html">Contact</a></li>
        
        <li><a href="/PassportVerification/Login.jsp">Login</a></li>
        
        <li><a href="/PassportVerification/UserRegister.jsp">Register</a></li>

      </ul>

    </nav>
    <script>
    var user = <%=request.getAttribute("Name")%>;
    </script>
    <form action="http://localhost:8080/PassportVerification/Apply.jsp">
         <button name="session1" class="button button3" value=user type="submit">APPLY</button>
      </form>
      <form action="http://localhost:8080/PassportVerification/ApplicationStatus.jsp">
         <button name="session2" type="submit" value=user class="button button3">STATUS</button>
      </form>

    

  </body>

</html>