package model;

import java.io.Serializable;

public class Product implements Serializable {
private int id;
	private String name;
	private int price;
	private String updated;

	public Product() {
	}

	public Product(String name, int price, String updated) {
		this.name = name;
		this.price = price;
		this.updated = updated;

	}
	
	public Product(int id, String name, int price, String updated) {
		this(name,price,updated);
		this.id = id;
		
	}

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

	public String getUpdated() {
		return updated;
	}

	public void setUpdated(String updated) {
		this.updated = updated;
	}

}
