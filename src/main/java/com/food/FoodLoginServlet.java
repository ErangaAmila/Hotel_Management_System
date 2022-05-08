package com.food;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.food.Food;
import com.food.FoodDBUtil;

/**
 * Servlet implementation class FoodLoginServlet
 */
@WebServlet("/FoodLoginServlet")
public class FoodLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String foodCode = request.getParameter("fid");
		
		try {
		List<Food> foodDetails = FoodDBUtil.validate(foodCode);
		request.setAttribute("foodDetails", foodDetails);
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("foodDetailsEditDelete.jsp");
		dis.forward(request, response);
	}

}
