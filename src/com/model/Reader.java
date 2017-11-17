package com.model;

public class Reader {
	private int id;
	private String names;
	private String barcode;
	private Readertype typeid;
	private String paperType;
	private String paperNo;
	private String tel;
	private String email;
	private String sex;
	
	
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
	public String getBarcode() {
		return barcode;
	}
	public void setBarcode(String barcode) {
		this.barcode = barcode;
	}
	public Readertype getTypeid() {
		return typeid;
	}
	public void setTypeid(Readertype typeid) {
		this.typeid = typeid;
	}
	public String getPaperType() {
		return paperType;
	}
	public void setPaperType(String paperType) {
		this.paperType = paperType;
	}
	public String getPaperNo() {
		return paperNo;
	}
	public void setPaperNo(String paperNo) {
		this.paperNo = paperNo;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	@Override
	public String toString() {
		return "Reader [names=" + names + ", barcode=" + barcode + ", typeid=" + typeid + ", paperType=" + paperType
				+ ", paperNo=" + paperNo + ", tel=" + tel + ", email=" + email + ", sex=" + sex + "]";
	}
	


	
}
