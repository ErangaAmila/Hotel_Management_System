package com.food;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.food.FoodDBUtil;

/**
 * Servlet implementation class FoodInsertServlet
 */
@WebServlet("/FoodInsertServlet")
public class FoodInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String foodCode = request.getParameter("foodCode");
		String foodCategory = request.getParameter("foodCategory");
		String foodName = request.getParameter("foodName");
		String foodDescription = request.getParameter("foodDescription");
		String foodPrice = request.getParameter("foodPrice");
		
		
		boolean isTrue;
		
		isTrue = FoodDBUtil.insertfood(foodCode, foodCategory, foodName, foodDescription,foodPrice);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}
