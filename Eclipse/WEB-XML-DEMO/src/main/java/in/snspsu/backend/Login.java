package in.snspsu.backend;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class Login extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//this is only displayed in the terminal-console
		System.out.println("We are inside the Login Service Method");
		//this is only displayed in the browser
		PrintWriter out = resp.getWriter();
		out.println("<h1 style='color: #333;'>Welcome to the Login Page</h1>");
		
	}

}
