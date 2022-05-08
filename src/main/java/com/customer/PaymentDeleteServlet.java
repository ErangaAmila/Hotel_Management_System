package com.customer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class PaymentDeleteServlet
 */
@WebServlet("/PaymentDeleteServlet")
public class PaymentDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//delete servlet
				String id =request.getParameter("paymentid");
				boolean isTrue;
				
				isTrue = PaymentDBUtill.deletePayment(id);
				
				if (isTrue == true) {
					RequestDispatcher dis = request.getRequestDispatcher("PaymentPortel.jsp");
					dis.forward(request, response);
				} else {
					List<Customer> cusDetails = CustomerDBUtill.getCustomerDetails(id);
					request.setAttribute("cusDetails", cusDetails);
					RequestDispatcher dis = request.getRequestDispatcher("usreaccount.jsp");
					dis.forward(request, response);
				}
	}

}
