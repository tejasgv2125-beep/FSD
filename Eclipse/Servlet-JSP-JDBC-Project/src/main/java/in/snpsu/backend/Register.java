package in.snpsu.backend;

import java.io.IOException;
import java.sql.DriverManager;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.*;
@WebServlet("/regForm")
public class Register extends HttpServlet {
	private final String URL="jdbc:mysql://localhost:3306/register_user";
	private final String USERNAME= "root";
	private final String PASSWORD="2125";
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name=req.getParameter("name");
		String email=req.getParameter("email");
		String pass=req.getParameter("password");
		String gender=req.getParameter("gender");
		String currentCity=req.getParameter("city");
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			try(Connection conn=DriverManager.getConnection(URL, USERNAME, PASSWORD);
					PreparedStatement ps=conn.prepareStatement("INSERT INTO register VALUES(?,?,?,?,?)");
					){
				ps.setString(1, name);
				ps.setString(2, email);
				ps.setString(3, pass);
				ps.setString(4, gender);
				ps.setString(5, currentCity);
				int rows= ps.executeUpdate();
				if(rows>0) {
					req.setAttribute("message","USser Registerd Successfully");
				}else {
					req.setAttribute("message","Error:User not Registered");
				}
				
			}
		}
		catch(Exception e) {
			e.printStackTrace();
			req.setAttribute("message","Error: "+ e.getMessage());
			
		}
		RequestDispatcher rd=req.getRequestDispatcher("register.jsp");
		rd.forward(req, resp);
	}
	

}