package try05;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ReturnBook
 */
@WebServlet("/ReturnBook")
public class ReturnBook extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/try02", "root","qwertyuiop");
		String username=request.getParameter("uname");
		String Book=request.getParameter("Book");
		int Quantity=Integer.parseInt(request.getParameter("Quantity"));
		String Return_Date=request.getParameter("Rdate");
		PreparedStatement ps=con.prepareStatement("update books set Quantity = Quantity+? where(Book_name = ?)");
		ps.setInt(1, Quantity);
		ps.setString(2,Book);
		ps.executeUpdate();
		String sql="INSERT INTO try02.return_book(username,Book_name, Quantity, Return_date) " +
		        "VALUES (?, ?, ?, ?)";
		PreparedStatement ps2=con.prepareStatement(sql);
		ps2.setString(1, username);
		ps2.setString(2, Book);
		ps2.setInt(3,Quantity);
		ps2.setString(4, Return_Date);
		ps2.executeUpdate();
		response.setContentType("text/html");
		out.println("Book Returned successfully!<br>");
		out.println("<a href=Welcome.jsp><button>Home</button>");
		RequestDispatcher rd=request.getRequestDispatcher("Welcome.jsp");
		}catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
