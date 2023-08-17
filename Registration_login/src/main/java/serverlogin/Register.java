package serverlogin;

import java.io.IOException;
import serverdao.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
		String uname=request.getParameter("uname");
		String email=request.getParameter("email");
		String contact=request.getParameter("contact");
		String pass=request.getParameter("pass");
		
		Registerdao rsd= new Registerdao();
		
		if(rsd.insert(uname,email,contact,pass))
		{
			response.sendRedirect("index.jsp");
		}
		else
		{
		   response.sendRedirect("Registration.jsp");
		}
		
		
		
		
		
		
	}

}
