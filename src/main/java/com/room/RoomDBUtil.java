package com.room;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class RoomDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet  rs = null;
	
	public static List<Room> validate(String roomID){
		ArrayList<Room> room = new ArrayList<>();
		
		try {
			con =DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from room_details where roomID = '"+roomID+"'";
			
			ResultSet rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				int id = rs.getInt(1);
				String roomName = rs.getString(2);
				String roomDescription = rs.getString(3);
				String roomPrice = rs.getString(4);
				String roomIDR = rs.getString(5);
				
				Room r = new Room(id,roomName,roomDescription, roomPrice, roomIDR);
				room.add(r);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return room;
		
	}
	
	public static boolean insertroom(String roomName, String roomDescription, String roomPrice, String roomID) {
		
		boolean isSuccess = false;
		
		
		
		try {
			con =DBConnect.getConnection();
			stmt =con.createStatement();
			
			String sql ="insert into room_details values (0,'"+roomName+"','"+roomDescription+"','"+roomPrice+"','"+roomID+"')";
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
	
	public static boolean updateroom(String roomName,String roomDescription, String roomPrice,String roomID) {
		
		try {
			con =DBConnect.getConnection();
			stmt =con.createStatement();
			
			String sql="update room_details set roomName='"+roomName+"', roomDescription='"+roomDescription+"', roomPrice='"+roomPrice+"', roomID='"+roomID+"'"
					+ "where roomID='"+roomID+"'";
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
	
	public static List<Room> getRoomDetails(String roomID){
		
		/* int convertedID = Integer.parseInt(id); */
		
		ArrayList<Room> room = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from room_details where roomID='"+roomID+"'";
			rs =stmt.executeQuery(sql);
			
			while (rs.next()) {
				int id = rs.getInt(1);
				String roomName = rs.getString(2);
				String roomDescription = rs.getString(3);
				String roomPrice = rs.getString(4);
				String roomIDR = rs.getString(5);
				
				Room r = new Room(id,roomName,roomDescription, roomPrice, roomIDR);
				room.add(r);
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();	
		}
		
		return room;
	}
	
	public static boolean deleteRoom(String roomID) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from room_details where roomID = '"+roomID+"'";
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
