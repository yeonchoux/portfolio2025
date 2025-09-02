package com.suyeon.shopProject.clothes;

public class ClothesDTO {
	
	private int id;
	private String name;
	private int price;
	private String imagePath;

	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	public String getImagePath() {
		return imagePath;
	}
	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}
	
	@Override
	public String toString() {
		return "ClothesDTO [id=" + id + ", name=" + name + ", price=" + price + ", imagePath=" + imagePath + "]";
	}
	

	

}
