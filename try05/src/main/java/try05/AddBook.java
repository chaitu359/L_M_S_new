package try05;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddBook
 */
@WebServlet("/AddBook")
public class AddBook extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			PrintWriter out=response.getWriter();
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/try02", "root","qwertyuiop");
			int Id=Integer.parseInt(request.getParameter("Book_id"));
			String Book=request.getParameter("Book");
			String Authour=request.getParameter("Authour");
			int Qu=Integer.parseInt(request.getParameter("Quantity"));  //try01`.`books` SET `Quantity` = 'Quantity-?' WHERE (`Book_name` = '?')
			String sql="INSERT INTO try02.books (Book_id,Book_name,Authour,Quantity) " +
			        "VALUES (?, ?, ?, ?)";
			PreparedStatement ps2=con.prepareStatement(sql);
			ps2.setInt(1, Id);
			ps2.setString(2, Book);
			ps2.setString(3,Authour);
			ps2.setInt(4, Qu);
			ps2.executeUpdate();
			response.setContentType("text/html");
			out.println("<font color=black size=5>Book Added Successfully!!!<br>");
			out.println("<a href=WelcomeAdmin.jsp>Home");

			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
	}

}}
