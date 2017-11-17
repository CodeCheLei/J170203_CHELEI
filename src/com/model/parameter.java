package com.model;

public class parameter {
	private int id;
	private int cost;
	private int validity;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getCost() {
		return cost;
	}
	public void setCost(int cost) {
		this.cost = cost;
	}
	public int getValidity() {
		return validity;
	}
	public void setValidity(int validity) {
		this.validity = validity;
	}
	@Override
	public String toString() {
		return "parameter [id=" + id + ", cost=" + cost + ", validity=" + validity + "]";
	}
	
	
}
