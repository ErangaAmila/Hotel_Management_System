package com.customer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CustomerDBUtill {

	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	public static boolean validate(String userName, String password) {

		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from customer where userName='" + userName + "' and password='" + password + "'";
			rs = stmt.executeQuery(sql);

			if (rs.next()) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}

		}catch(

	Exception e)
	{
		e.printStackTrace();

	}

	return isSuccess;
	}

	/*
	 * public static List<Customer> validate(String userName, String password) {
	 * ArrayList<Customer> cus = new ArrayList<>();
	 * 
	 * // validate try { con = DBConnect.getConnection(); stmt =
	 * con.createStatement(); String sql = "select * from customer where username='"
	 * + userName + "' and password='" + password + "'"; rs =
	 * stmt.executeQuery(sql);
	 * 
	 * if (rs.next()) { int id = rs.getInt(1); String fName = rs.getString(2);
	 * String mobile = rs.getString(3); String address = rs.getString(4); String
	 * email = rs.getString(5); String userU = rs.getString(6); String passU =
	 * rs.getString(7);
	 * 
	 * Customer c = new Customer(id, fName, mobile, address, email, userU, passU);
	 * cus.add(c); }
	 * 
	 * } catch (Exception e) { e.printStackTrace();
	 * 
	 * }
	 * 
	 * return cus; }
	 */

//customer insert

	public static boolean insertcustomer(String name, String phone, String address, String email, String uid,
			String password) {
		boolean isSuccess = false;

		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "insert into customer value (0,'" + name + "','" + phone + "','" + address + "','" + email
					+ "','" + uid + "','" + password + "')";
			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}

		} catch (Exception e) {
			e.printStackTrace();

		}

		return isSuccess;
	}

	/* Updete customer */
	public static boolean updatecustomer(String id, String name, String mobile, String address, String email,
			String userName, String password) {

		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "update customer set fname= '" + name + "',mobile='" + mobile + "',address='" + address
					+ "',email='" + email + "',userName='" + userName + "',password='" + password + "'" + "where id='"
					+ id + "'";
			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return isSuccess;
	}

//Delete customer
	public static boolean deletecustomer(String id) {
		/* convert string to int */
		int convert = Integer.parseInt(id);

		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from customer where id='" + convert + "'";
			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return isSuccess;
	}

	// get customer details

	public static List<Customer> getCustomerDetails(String id) {

		int convertId = Integer.parseInt(id);
		ArrayList<Customer> cus = new ArrayList<>();

		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from customer where id='" + convertId + "'";
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				int cid = rs.getInt(1);
				String fName = rs.getString(2);
				String mobile = rs.getString(3);
				String address = rs.getString(4);
				String email = rs.getString(5);
				String userU = rs.getString(6);
				String passU = rs.getString(7);

				Customer c = new Customer(cid, fName, mobile, address, email, userU, passU);
				cus.add(c);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return cus;
	}
//validation helper
	public static List<Customer> getCustomer(String username) {

		ArrayList<Customer> cust = new ArrayList<>();

		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from customer where userName='" + username + "'";
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				int cid = rs.getInt(1);
				String fName = rs.getString(2);
				String mobile = rs.getString(3);
				String address = rs.getString(4);
				String email = rs.getString(5);
				String userU = rs.getString(6);
				String passU = rs.getString(7);

				Customer cus = new Customer(cid, fName, mobile, address, email, userU, passU);
				cust.add(cus);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return cust;
	}
}
