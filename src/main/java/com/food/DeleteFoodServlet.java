package com.food;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.room.Room;
import com.room.RoomDBUtil;

/**
 * Servlet implementation class DeleteFoodServlet
 */
@WebServlet("/DeleteFoodServlet")
public class DeleteFoodServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String foodCode = request.getParameter("foodCode");
		boolean isTrue;
		
		isTrue = FoodDBUtil.deleteFood(foodCode);
		
		if(isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("foodDetailsInsert.jsp");
			dispatcher.forward(request, response);
		}else {
			List<Food> foodDetails = FoodDBUtil.getFoodDetails(foodCode);
			request.setAttribute("foodDetails", foodDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("foodDetailsInsert.jsp");
			dispatcher.forward(request, response);
		}
	}

}
