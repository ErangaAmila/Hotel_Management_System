package com.food;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.food.DBConnect;
import com.food.Food;


public class FoodDBUtil {
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet  rs = null;
	
	public static List<Food> validate(String foodCode){
		ArrayList<Food> food = new ArrayList<>();
		
		try {
			con =DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from food_details where foodCode = '"+foodCode+"'";
			
			ResultSet rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				int id = rs.getInt(1);
				String foodCodeR = rs.getString(2);
				String foodCategory = rs.getString(3);
				String foodName = rs.getString(4);
				String foodDescription = rs.getString(5);
				String foodPrice = rs.getString(6);
				
				
				Food f = new Food(id,foodCodeR,foodCategory, foodName, foodDescription,foodPrice);
				food.add(f);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return food;
		
	}
	
	public static boolean insertfood(String foodCode,String foodCategory,String foodName, String foodDescription, String foodPrice) {
		
		boolean isSuccess = false;
		
		
		
		try {
			con =DBConnect.getConnection();
			stmt =con.createStatement();
			
			String sql ="insert into food_details values (0,'"+foodCode+"','"+foodCategory+"','"+foodName+"','"+foodDescription+"','"+foodPrice+"')";
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
	
	public static boolean updatefood(String foodCode,String foodCategory,String foodName, String foodDescription, String foodPrice) {
		
		try {
			con =DBConnect.getConnection();
			stmt =con.createStatement();
			
			String sql="update food_details set foodCode='"+foodCode+"', foodCategory='"+foodCategory+"', foodName='"+foodName+"', foodDescription='"+foodDescription+"',foodPrice='"+foodPrice+"'"
					+ "where foodCode='"+foodCode+"'";
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
	
public static List<Food> getFoodDetails(String foodCode){
		
		/* int convertedID = Integer.parseInt(id); */
		
		ArrayList<Food> food = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from food_details where foodCode='"+foodCode+"'";
			rs =stmt.executeQuery(sql);
			
			while (rs.next()) {
				int id = rs.getInt(1);
				String foodCodeR = rs.getString(2);
				String foodCategory = rs.getString(3);
				String foodName = rs.getString(4);
				String foodDescription = rs.getString(5);
				String foodPrice = rs.getString(6);
				
				Food f = new Food(id,foodCodeR,foodCategory, foodName, foodDescription,foodPrice);
				food.add(f);
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();	
		}
		
		return food;
	}
	
	public static boolean deleteFood(String foodCode) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from food_details where foodCode = '"+foodCode+"'";
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
