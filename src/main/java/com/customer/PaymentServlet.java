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
 * Servlet implementation class PaymentServlet
 */
@WebServlet("/PaymentServlet")
public class PaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		  PrintWriter out = response.getWriter(); 
		  response.setContentType("text/html");
		 
		
		
		String Mobile = request.getParameter("Mobile");
		boolean isTrue;
		
		isTrue = PaymentDBUtill.validate(Mobile);
		
		if(isTrue == true) {
			List<Payment> pmtDeatils = PaymentDBUtill.getPaymentDetails(Mobile);
			request.setAttribute("pmtDeatils", pmtDeatils);
			
			RequestDispatcher dis = request.getRequestDispatcher("paymentview.jsp");
			dis.forward(request, response);
		}else {
			
			out.println("<script type='text/javascript'>");
			out.println("alert('Incorrect Mobile');");
			out.println("location='paymentV.jsp'");
			out.println("</script>");
		}
		
	}

}
