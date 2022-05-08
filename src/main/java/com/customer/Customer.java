package com.customer;

public class Customer {
	private int id;
	private String fname;
	private String mobile;
	private String address;
	private String email;
	private String userName;
	private String password;
	
	public Customer(int id, String fname, String mobile, String address, String email, String userName,String password) {
		super();
		this.id = id;
		this.fname = fname;
		this.mobile = mobile;
		this.address = address;
		this.email = email;
		this.userName = userName;
		this.password = password;
	}

	public int getId() {
		return id;
	}

	public String getFname() {
		return fname;
	}

	public String getMobile() {
		return mobile;
	}

	public String getAddress() {
		return address;
	}

	public String getEmail() {
		return email;
	}

	public String getUserName() {
		return userName;
	}

	public String getPassword() {
		return password;
	}
	
}
