package try05;



import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BookSelection
 */
@WebServlet("/BookSelection")
public class BookSelection extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException{
		try {
			PrintWriter out=response.getWriter();
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/try02", "root","qwertyuiop");
			String Book=request.getParameter("Book");
			String username=request.getParameter("uname");
			int Qu=Integer.parseInt(request.getParameter("Quantity"));  //try01`.`books` SET `Quantity` = 'Quantity-?' WHERE (`Book_name` = '?')
			String From_Date=request.getParameter("fromdate");
			String To_Date=request.getParameter("todate");
			int Week= Integer.parseInt(request.getParameter("Weeks"));
			Weeks w=new Weeks();
			/*PreparedStatement ps=con.prepareStatement("update books set Quantity = Quantity-? where(Book_name = ?)");
			//pstmt=con.prepareStatement(sql);
			ps.setInt(1, Quantity);
			ps.setString(2,Book);
			ps.executeUpdate();*/
			PreparedStatement ps1=con.prepareStatement("select Quantity from try02.books where Book_name=?");
			ps1.setString(1,Book);
			ResultSet rs=ps1.executeQuery();
			while(rs.next()) {
				if((Integer.parseInt(rs.getString("Quantity")))>0) {
					PreparedStatement ps=con.prepareStatement("update books set Quantity = Quantity- ? where(Book_name = ?)");
					//pstmt=con.prepareStatement(sql);
					ps.setInt(1, Qu);
					ps.setString(2,Book);
					ps.executeUpdate();
					//out.println(Week);
					String sql="INSERT INTO try02.issued_book (username,Book_name, Quantity, From_date, To_date,Duration) " +
					        "VALUES (?, ?, ?, ?, ?,?)";
					PreparedStatement ps2=con.prepareStatement(sql);
					ps2.setString(1, username);
					ps2.setString(2, Book);
					ps2.setInt(3,Qu);
					ps2.setString(4, From_Date);
					ps2.setString(5, To_Date);
					ps2.setInt(6, Week);
					ps2.executeUpdate();
					response.setContentType("text/html");
					//RequestDispatcher rd=request.getRequestDispatcher("Bill.jsp");
					//rd.forward(request, response);
					out.println("<font color=black size=5>ENJOY LEARNING!!!<br>");
					int x=w.Bill_Calclation(Week);
					out.println("Price to be paid(Pay at the desk):" +x + "<br>");
					out.println("<a href=Welcome.jsp>Home");
					//out.println("<a href=Bill.jsp> Amount to be paid |");
					//RequestDispatcher rd=request.getRequestDispatcher("Bill.jsp");
					}
					//RequestDispatcher rd=request.getRequestDispatcher("Bill.jsp");}
				else{
					out.println("The Book you selected is out of quantity");
				}
					
				}
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}


