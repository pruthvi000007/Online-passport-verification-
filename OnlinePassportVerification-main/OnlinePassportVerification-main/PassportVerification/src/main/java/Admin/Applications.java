package Admin;

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
import java.sql.Statement;

/**
 * Servlet implementation class Applications
 */
public class Applications extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try
	    {
			

	      Class.forName("com.mysql.cj.jdbc.Driver");
	      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/passport","root","Mani@123");
	      
	      Statement stmt = con.createStatement();	      
	       
	       ResultSet rs = stmt.executeQuery("select surname,name from user;");
	              
	       		
	       while (rs.next()) {
	            
	    	   response.setContentType("text/html");
	    	   PrintWriter out= response.getWriter();
	    	   String n=rs.getString("name");
	    	   String s=rs.getString("surname");
	    	   out.println("<a href='http://localhost:8080/PassportVerification/AdminVerify'>"+s+" "+n+"</a>");
	    	   
	    	   
	          
	         }
	    }
	    catch (Exception e)
	    {
	      System.out.print(e);
	    }
		
		response.setContentType("text/html");
 	   PrintWriter out= response.getWriter();
 	   out.print("<h1>Successfully Registred</h1>");
	}



}
