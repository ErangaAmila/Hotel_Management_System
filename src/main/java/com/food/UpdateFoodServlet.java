package com.food;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.food.FoodDBUtil;

/**
 * Servlet implementation class UpdateFoodServlet
 */
@WebServlet("/UpdateFoodServlet")
public class UpdateFoodServlet extends HttpServlet {
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
		
		isTrue = FoodDBUtil.updatefood(foodCode, foodCategory, foodName, foodDescription,foodPrice);
		
		if(isTrue == true) {
			List<Food> foodDetails = FoodDBUtil.getFoodDetails(foodCode);
			request.setAttribute("foodDetails", foodDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("foodDetailsEditDelete.jsp");
			dis.forward(request, response);
		}else {
			List<Food> foodDetails = FoodDBUtil.getFoodDetails(foodCode);
			request.setAttribute("foodDetails", foodDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("foodDetailsEditDelete.jsp");
			dis.forward(request, response);
		}
	}

}
