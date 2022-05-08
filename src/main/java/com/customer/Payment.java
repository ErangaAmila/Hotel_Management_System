package com.customer;

public class Payment {
	private int paymentid;
	private String fullName;
	private String Mobile;
	private String Address;
	private String email;
	private String paymentDate;
	private String paymentMethod;

	public Payment(int paymentid, String fullName, String Mobile, String Address, String email, String paymentDate,String paymentMethod) {
		super();
		this.paymentid = paymentid;
		this.fullName = fullName;
		this.Mobile = Mobile;
		this.Address = Address;
		this.email = email;
		this.paymentDate = paymentDate;
		this.paymentMethod = paymentMethod;
	}

	public int getPaymentid() {
		return paymentid;
	}

	public void setPaymentid(int paymentid) {
		this.paymentid = paymentid;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getMobile() {
		return Mobile;
	}

	public void setMobile(String mobile) {
		Mobile = mobile;
	}

	public String getAddress() {
		return Address;
	}

	public void setAddress(String address) {
		Address = address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPaymentDate() {
		return paymentDate;
	}

	public void setPaymentDate(String paymentDate) {
		this.paymentDate = paymentDate;
	}

	public String getPaymentMethod() {
		return paymentMethod;
	}

	public void setPaymentMethod(String paymentMethod) {
		this.paymentMethod = paymentMethod;
	}

}
