package User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 * Servlet implementation class UserRegister
 */
public class UserRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
 	   	PrintWriter out= response.getWriter();
		try
	    {
	      Class.forName("com.mysql.cj.jdbc.Driver");
	      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/passport","root","Mani@123");
	      
	      String uname = request.getParameter("uname");
	      String password = request.getParameter("password");
	     	      
	      PreparedStatement preparedStatement = con.prepareStatement("insert into login values(?,?)");
	       
	       preparedStatement.setString(1, uname);
	       preparedStatement.setString(2, password);
	       
	       
	       int rs = preparedStatement.executeUpdate();
	       
	       if(rs==1)
	       {
//	    	   response.setContentType("text/html");
//	    	   PrintWriter out= response.getWriter();
//	    	   out.print("<h3> Succesfully Registred </h3>");
	    	   response.sendRedirect("Login.jsp");
	    	   //request.setAttribute("foo", Succesfully Registred);
	    	   //request.getRequestDispatcher("UserRegister.jsp").forward(request, response);
	    	   
	       	
	       }
	       
	    }
	    catch (Exception e)
	    {
	      System.out.print(e);  
//	      String str="Username already Exist's";
//	    request.setAttribute("foo", str);
//        request.getRequestDispatcher("UserRegister.jsp").forward(request, response);
   	   //response.sendRedirect("UserRegister.jsp");
	     // response.Write("<script Response.Write("<scriptlanguage='javascript'>window.alert('');window.location='URL';</script>");
	      //response.Write("<script language=javascript>alert('"+e+"');</script>");
	      out.print("<html>");
	      out.print("<h3> Username already Exist's </h3><br>");
	      out.print("<form action='UserRegister.jsp'>");
	      out.print("<button onclick='submit'>Back To Registration</button>");
	      out.print("</form></html>");
	    }
	}
	
	

}
