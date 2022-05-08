package com.customer;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class PaymentUpdateServlet
 */
@WebServlet("/PaymentUpdateServlet")
public class PaymentUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String paymentid = request.getParameter("paymentid");
		String fullName = request.getParameter("fullName");
		String Mobile = request.getParameter("Mobile");
		String Address = request.getParameter("Address");
		String email = request.getParameter("email");
		String paymentDate = request.getParameter("paymentDate");
		String paymentMethod = request.getParameter("paymentMethod");

		boolean isTrue;

		isTrue = PaymentDBUtill.updatePayment(paymentid, fullName, Mobile, Address, email, paymentDate, paymentMethod);

		if (isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
			dis.forward(request, response);
		} else {
			RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request, response);
		}
	}

}
