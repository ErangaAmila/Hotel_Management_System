package com.event;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteRoomServlet")
public class DeleteEventServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String ID = request.getParameter("eventID");
		boolean isTrue;
		
		isTrue = EventDBUtil.deleteEvent(ID);
		
		if(isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("eventDetailsInsert.jsp");
			dispatcher.forward(request, response);
		}else {
			List<Event> eventDetails = EventDBUtil.getEventDetails(ID);
			request.setAttribute("roomDetails", eventDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("eventDetailsInsert.jsp");
			dispatcher.forward(request, response);
		}
	}

}
