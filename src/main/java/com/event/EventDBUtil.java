package com.event;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class EventDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet  rs = null;
	
	public static List<Event> validate(String eventId){
		ArrayList<Event> event = new ArrayList<>();
		
		try {
			con =DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from event where eventId = '"+eventId+"'";
			
			ResultSet rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				int id = rs.getInt(1);
				String eventName = rs.getString(2);
				String eventDescription = rs.getString(3);
				String eventPrice = rs.getString(4);
				String eventIDR = rs.getString(5);
				
				Event r = new Event(id,eventName,eventDescription, eventPrice, eventIDR);
				event.add(r);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return event;
		
	}
	
	public static boolean insertevent(String eventName, String eventDescription, String eventPrice, String eventID) {
		
		boolean isSuccess = false;
		
		
		
		try {
			con =DBConnect.getConnection();
			stmt =con.createStatement();
			
			String sql ="insert into room_details values (0,'"+eventName+"','"+eventDescription+"','"+eventPrice+"','"+eventID+"')";
			int rs =stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	public static boolean updateevent(String eventName,String eventDescription, String eventPrice,String eventID) {
		
		try {
			con =DBConnect.getConnection();
			stmt =con.createStatement();
			
			String sql="update event set eventName='"+eventName+"', eventDescription='"+eventDescription+"', eventPrice='"+eventPrice+"', eventID='"+eventID+"'"
					+ "where eventID='"+eventID+"'";
			int rs =stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static List<Event> getEventDetails(String eventID){
		
		/* int convertedID = Integer.parseInt(id); */
		
		ArrayList<Event> event = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from event where eventID='"+eventID+"'";
			rs =stmt.executeQuery(sql);
			
			while (rs.next()) {
				int id = rs.getInt(1);
				String eventName = rs.getString(2);
				String eventDescription = rs.getString(3);
				String eventPrice = rs.getString(4);
				String eventIDR = rs.getString(5);
				
				Event r = new Event(id,eventName,eventDescription, eventPrice, eventIDR);
				event.add(r);
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();	
		}
		
		return event;
	}
	
	public static boolean deleteEvent(String eventID) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from event where eventID = '"+eventID+"'";
			int r = stmt.executeUpdate(sql);
			
			if(r > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
}
