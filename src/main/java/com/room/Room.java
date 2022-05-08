package com.room;

public class Room {
	private int id;
	private String roomName;
	private String roomDescription;
	private String roomPrice;
	private String roomID;
	public int getId() {
		return id;
	}
	public String getRoomName() {
		return roomName;
	}
	public String getRoomDescription() {
		return roomDescription;
	}
	public String getRoomPrice() {
		return roomPrice;
	}
	public String getRoomID() {
		return roomID;
	}
	public Room(int id, String roomName, String roomDescription, String roomPrice, String roomID) {
		super();
		this.id = id;
		this.roomName = roomName;
		this.roomDescription = roomDescription;
		this.roomPrice = roomPrice;
		this.roomID = roomID;
	}
	
	
	
}
