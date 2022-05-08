package com.customer;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class PaymentInsertServlet
 */
@WebServlet("/PaymentInsertServlet")
public class PaymentInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		String paymentid = request.getParameter("paymentid");
		String fullName = request.getParameter("fullName");
		String Mobile = request.getParameter("Mobile");
		String Address = request.getParameter("Address");
		String email = request.getParameter("email");
		String paymentDate = request.getParameter("paymentDate");
		String paymentMethod = request.getParameter("paymentMethod");

		boolean isTrue;

		isTrue = PaymentDBUtill.insertPayment(paymentid, fullName, Mobile, Address, email, paymentDate, paymentMethod);

		if (isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
			dis.forward(request, response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}
