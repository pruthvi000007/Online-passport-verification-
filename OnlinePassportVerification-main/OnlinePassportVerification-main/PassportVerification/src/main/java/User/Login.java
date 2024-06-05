package User;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.*;
/**
 * Servlet implementation class Login
 */
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
boolean status=false;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try
	    {
	      Class.forName("com.mysql.cj.jdbc.Driver");
	      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/passport","root","Mani@123");
	      
	      String uname = request.getParameter("uname");
	      String password = request.getParameter("password");
	      
	      PreparedStatement preparedStatement = con.prepareStatement("select * from login where uname = ? and password = ? ");
	       
	      preparedStatement.setString(1, uname);
	       preparedStatement.setString(2, password);
	       
	       ResultSet rs = preparedStatement.executeQuery();
	              status = rs.next();
	              if(status)
	              {
//	            	  HttpSession session=request.getSession();  
//	                  session.setAttribute("uname",uname); 
//	                response.sendRedirect("http://localhost:8080/PassportVerification/pages/services.html");
	                RequestDispatcher dispatcher = request.getRequestDispatcher("services.jsp");
	                request.setAttribute("Name", uname); // set your String value in the attribute
	                dispatcher.forward( request, response );
	              }
	              else
	              {
	                response.sendRedirect("Login.jsp");
	              }
	    }
	    catch (Exception e)
	    {
	      System.out.print(e);
	    }
	  }
	}




