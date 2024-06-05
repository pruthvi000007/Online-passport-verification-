package Admin;

import jakarta.servlet.ServletException;
import java.sql.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class Update
 */
public class Update extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
		String connectionURL = "jdbc:mysql://localhost:3306/passport";
		Connection connection = null;
		
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		connection = DriverManager.getConnection(connectionURL, "root", "Mani@123");
		
		String uname = request.getParameter("uname");
		String text = request.getParameter("verify");
		int rs=0;
		if(text.equals("Verified"))
		{
		PreparedStatement preparedStatement = connection.prepareStatement("UPDATE user SET status='Verifed and Sent to Police Verification' WHERE name=?");
		preparedStatement.setString(1, uname);
		 rs = preparedStatement.executeUpdate();
		}
		else if(text.equals("Invalid Details"))
		{
			PreparedStatement preparedStatement = connection.prepareStatement("UPDATE user SET status='Invalid Details' WHERE name=?");
			preparedStatement.setString(1, uname);
			 rs = preparedStatement.executeUpdate();
		}
		
		
		response.sendRedirect("StatusUpdate.jsp");
	}
	
	
catch (Exception ex) {

System.out.println("Unable to connect to database.");

}
	}
}

