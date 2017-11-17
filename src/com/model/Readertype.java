package com.model;

import java.io.Serializable;

public class Readertype implements Serializable{
	private int id;
	private String names;
	private String number;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNames() {
		return names;
	}
	public void setNames(String names) {
		this.names = names;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	@Override
	public String toString() {
		return "Readertype [id=" + id + ", names=" + names + ", number=" + number + "]";
	}

	
}
