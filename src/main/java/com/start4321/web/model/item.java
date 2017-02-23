package com.start4321.web.model;

public class item {

	private String item_kind;
	private String item_name;
	private int item_sum;
	private String pur_date;
	private String USER_NAME;
	
	public String getUSER_NAME() {
		return USER_NAME;
	}
	public void setUSER_NAME(String uSER_NAME) {
		USER_NAME = uSER_NAME;
	}
	private int count;

	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	
	public String getItem_kind() { 
		return item_kind;
	}
	public void setItem_kind(String item_kind) {
		this.item_kind = item_kind;
	}
	public String getItem_name() {
		return item_name;
	}
	public void setItem_name(String item_name) {
		this.item_name = item_name;
	}
	public int getItem_sum() {
		return item_sum;
	}
	public void setItem_sum(int item_sum) {
		this.item_sum = item_sum;
	}
	public String getPur_date() {
		return pur_date;
	}
	public void setPur_date(String pur_date) {
		this.pur_date = pur_date;
	}
	
}
