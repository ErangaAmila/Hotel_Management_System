package com.customer;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class PaymentDBUtill {
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	//payment validate
	public static boolean validate(String Mobile) {
		int convertr = Integer.parseInt(Mobile);
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from payment where paymentid='" + convertr + "'";
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
	
	
	// Payment insert

	public static boolean insertPayment(String paymentid, String fullName, String Mobile, String Address, String email,
			String paymentDate, String paymentMethod) {
		boolean isSuccess = false;

		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "insert into payment value (0,'" + fullName + "','" + Mobile + "','" + Address + "','" + email
					+ "','" + paymentDate + "','" + paymentMethod + "')";
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

	/* Updete Payment */
	
	public static boolean updatePayment(String paymentid, String fullName, String Mobile, String Address, String email,
			String paymentDate, String paymentMethod) {

		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "update payment set fullName= '" + fullName + "',Mobile='" + Mobile + "',Address='" + Address
					+ "',email='" + email + "',paymentDate='" + paymentDate + "',paymentMethod='" + paymentMethod + "'" + "where paymentid='"
					+ paymentid + "'";
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

	// Delete Payment
	
	public static boolean deletePayment(String paymentid) {
		/* convert string to int */
		int convert = Integer.parseInt(paymentid);

		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from payment where id='" + convert + "'";
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

	// get Payment details

	public static List<Payment> getPaymentDetails(String Mobile) {

		ArrayList<Payment> pmt = new ArrayList<>();

		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from payment where paymentid='" + Mobile + "'";
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				int pmid = rs.getInt(1);
				String fullName = rs.getString(2);
				String MobileP = rs.getString(3);
				String Address = rs.getString(4);
				String email = rs.getString(5);
				String paymentDate = rs.getString(6);
				String paymentMethod = rs.getString(7);

				Payment p = new Payment(pmid, fullName, MobileP, Address, email, paymentDate, paymentMethod);
				pmt.add(p);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return pmt;
	}
}
