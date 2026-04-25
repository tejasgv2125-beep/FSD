package in.snpsu.backend;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/submitForm")//Annotation
public class MyServlet extends HttpServlet{
	//doGet() //doPost //Service()
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name =req.getParameter("name");
		String email =req.getParameter("email");
		//To Print or display on the browser we use the class called printwritter
		PrintWriter out=resp.getWriter();
		out.println("<h1 style='color:red'>Name: "+name+"</h1>");
		out.println("<h2 style='color:green'>Email: "+email+"</h2>");
	}
	

}
