package com.event;

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
		
		String eventID = request.getParameter("eventID");
		String eventName = request.getParameter("eventName");
		String eventDescription = request.getParameter("eventDescription");
		String eventPrice = request.getParameter("eventPrice");
		
		boolean isTrue;
		
		isTrue = EventDBUtil.updateevent(eventName, eventDescription, eventPrice, eventID);
		
		if(isTrue == true) {
			
			List<Event> eventDetails = EventDBUtil.getEventDetails(eventID);
			request.setAttribute("eventDetails", eventDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("eventDetailsEditDelete.jsp");
			dis.forward(request, response);
		}else {
			List<Event> eventDetails = EventDBUtil.getEventDetails(eventID);
			request.setAttribute("eventDetails", eventDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("eventDetailsEditDelete.jsp");
			dis.forward(request, response);
		}
	}

}
