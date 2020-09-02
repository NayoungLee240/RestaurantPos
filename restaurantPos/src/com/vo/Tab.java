package com.vo;

public class Tab {
	private String id;
	private String pwd;
	private int num;
	public Tab() {
		super();
	}
	public Tab(String id) {
		super();
		this.id = id;
	}
	public Tab(String id, String pwd) {
		super();
		this.id = id;
		this.pwd = pwd;
	}
	public Tab(String id, String pwd, int num) {
		super();
		this.id = id;
		this.pwd = pwd;
		this.num = num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	@Override
	public String toString() {
		return "Tab [id=" + id + ", pwd=" + pwd + ", num=" + num + "]";
	}
	
	
	
	
	
}
