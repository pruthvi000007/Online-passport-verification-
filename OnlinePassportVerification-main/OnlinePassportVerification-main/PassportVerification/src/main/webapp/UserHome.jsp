<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
     
<style>
  .homeslides{
    width:80%;
    height:550px;
    position :absolute;
    left: 10%;
    right:10%;
    top:15%;
    transform :translate (-50%,-50%);
    background-color : white;
    background-size :100% 100%;
    box-shadow:1px 2px 10px 5px gray;
    animation : slider 10s infinite linear;
    background-image : url('https://images.unsplash.com/photo-1454496406107-dc34337da8d6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1000&q=80');
    }
    @keyframes slider{ 
        0%{ background-image : url('https://images.unsplash.com/photo-1454496406107-dc34337da8d6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1000&q=80');
       }
      35%{background-image :url('https://images.unsplash.com/photo-1549298385-f62e042575a8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1856&q=80')}
      75%{background-image :url('https://images.unsplash.com/photo-1589262804704-c5aa9e6def89?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=871&q=80 ')}
    }
    
    
 
</style>





    <title>Home</title>

  </head>

  <body style="background-color:white;">
  
  
  

    <nav>

      <div class="heading">

        <h4>Passport Seva</h4>

      </div>

      <ul class="nav-links">

        <li><a class="active" href="UserHome.jsp">Home</a></li>

        <li><a href="/PassportVerification/pages/about.html">About</a></li>

    

        <li><a href="/PassportVerification/pages/contact.html">Contact</a></li>
      
         
        <li><a href="Login.jsp">Login</a></li>
        
        <li><a href="AdminLogin.jsp">AdminLogin</a></li>
        
        <li><a href="UserRegister.jsp">Register</a></li>

      </ul>

    </nav>
    
    <div class="homeslides">
    
    
    </div>


  </body>

</html>