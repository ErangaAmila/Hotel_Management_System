package com.room;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateRoomServlet")
public class UpdateRoomServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String roomID = request.getParameter("roomID");
		String roomName = request.getParameter("roomName");
		String roomDescription = request.getParameter("roomDescription");
		String roomPrice = request.getParameter("roomPrice");
		
		boolean isTrue;
		
		isTrue = RoomDBUtil.updateroom(roomName, roomDescription, roomPrice, roomID);
		
		if(isTrue == true) {
			
			List<Room> roomDetails = RoomDBUtil.getRoomDetails(roomID);
			request.setAttribute("roomDetails", roomDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("roomDetailsEditDelete.jsp");
			dis.forward(request, response);
		}else {
			List<Room> roomDetails = RoomDBUtil.getRoomDetails(roomID);
			request.setAttribute("roomDetails", roomDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("roomDetailsEditDelete.jsp");
			dis.forward(request, response);
		}
	}

}
