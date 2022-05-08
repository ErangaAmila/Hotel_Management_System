package com.customer;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		
		String usrename = request.getParameter("uid");
		String password = request.getParameter("pass");
		boolean isTrue;
		
		isTrue = CustomerDBUtill.validate(usrename, password);
		
		if(isTrue == true) {
			List<Customer> cusDeatils = CustomerDBUtill.getCustomer(usrename);
			request.setAttribute("cusDeatils", cusDeatils);
			
			RequestDispatcher dis = request.getRequestDispatcher("usreaccount.jsp");
			dis.forward(request, response);
		}else {
			
			out.println("<script type='text/javascript'>");
			out.println("alert('Your User Name Or Password is Incorrect');");
			out.println("location='login.jsp'");
			out.println("</script>");
		}
		
	}

}
