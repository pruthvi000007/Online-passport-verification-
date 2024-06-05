package User;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

/**
 * Servlet implementation class UserApply
 */
public class UserApply extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
 	   	PrintWriter out= response.getWriter();
		try
	    {
	      Class.forName("com.mysql.cj.jdbc.Driver");
	      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/passport","root","Mani@123");
	      
	      String surname = request.getParameter("surname");
	      String name = request.getParameter("name");
	      String phone = request.getParameter("phone");
	      String gender = request.getParameter("gender");
	      String dob = request.getParameter("dob");
	      String fname = request.getParameter("fname");
	      String mname = request.getParameter("mname");
	      String pob = request.getParameter("pob");
	      String mstatus = request.getParameter("mstatus");
	      String education = request.getParameter("education");
	      String state = request.getParameter("state");
	      String district = request.getParameter("district");
	      String city = request.getParameter("city");
	      String street = request.getParameter("street");
	      String pincode = request.getParameter("pincode");
	      String status = "Waiting for admin Approval";
	      String n = request.getParameter("session3");
	      
	      PreparedStatement preparedStatement = con.prepareStatement("insert into user values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
	       
	       preparedStatement.setString(1, surname);
	       preparedStatement.setString(2, name);
	       preparedStatement.setString(3, phone);
	       preparedStatement.setString(4, gender);
	       preparedStatement.setString(5, dob);
	       preparedStatement.setString(6, fname);
	       preparedStatement.setString(7, mname);
	       preparedStatement.setString(8, pob);
	       preparedStatement.setString(9, mstatus);
	       preparedStatement.setString(10, education);
	       preparedStatement.setString(11, state);
	       preparedStatement.setString(12, district);
	       preparedStatement.setString(13, city);
	       preparedStatement.setString(14, street);
	       preparedStatement.setString(15, pincode);
	       preparedStatement.setString(16, status);
	       preparedStatement.setString(17, n);
	       
	       int rs = preparedStatement.executeUpdate();
	       
	       if(rs==1)
	       {
			    	   
	    	   RequestDispatcher dispatcher = request.getRequestDispatcher("services.jsp");
               request.setAttribute("Name1", n); // set your String value in the attribute
               dispatcher.forward( request, response );
			    	   //response.sendRedirect("services.jsp");
	    	   
	       }
	    }
	    catch (Exception e)
	    {
	      System.out.print(e);
	    }
	}


}
