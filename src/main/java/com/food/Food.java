package com.food;

public class Food {
	private int id;
	private String foodCode;
	private String foodCategory;
	private String foodName;
	private String foodDescription;
	private String foodPrice;
	public int getId() {
		return id;
	}
	public String getFoodCode() {
		return foodCode;
	}
	public String getFoodCategory() {
		return foodCategory;
	}
	public String getFoodName() {
		return foodName;
	}
	public String getFoodDescription() {
		return foodDescription;
	}
	public String getFoodPrice() {
		return foodPrice;
	}
	public Food(int id, String foodCode, String foodCategory, String foodName, String foodDescription,
			String foodPrice) {
		super();
		this.id = id;
		this.foodCode = foodCode;
		this.foodCategory = foodCategory;
		this.foodName = foodName;
		this.foodDescription = foodDescription;
		this.foodPrice = foodPrice;
	}
	
	
	
}
