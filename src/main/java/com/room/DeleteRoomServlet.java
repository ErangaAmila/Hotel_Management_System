package com.room;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteRoomServlet")
public class DeleteRoomServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String roomID = request.getParameter("roomID");
		boolean isTrue;
		
		isTrue = RoomDBUtil.deleteRoom(roomID);
		
		if(isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("roomDetailsInsert.jsp");
			dispatcher.forward(request, response);
		}else {
			List<Room> roomDetails = RoomDBUtil.getRoomDetails(roomID);
			request.setAttribute("roomDetails", roomDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("roomDetailsInsert.jsp");
			dispatcher.forward(request, response);
		}
	}

}
