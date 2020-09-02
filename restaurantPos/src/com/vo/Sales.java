package com.vo;

public class Sales {
	private String id;
	private String menu_id;
	private String receipt_id;
	private int qt;
	private int service;
	private int s_price;
	public Sales() {
		super();
	}
	public Sales(String id, String menu_id, String receipt_id, int service, int s_price) {
		super();
		this.id = id;
		this.menu_id = menu_id;
		this.receipt_id = receipt_id;
		this.service = service;
		this.s_price = s_price;
	}
	public Sales(String id, String menu_id, String receipt_id, int qt, int service, int s_price) {
		super();
		this.id = id;
		this.menu_id = menu_id;
		this.receipt_id = receipt_id;
		this.qt = qt;
		this.service = service;
		this.s_price = s_price;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getMenu_id() {
		return menu_id;
	}
	public void setMenu_id(String menu_id) {
		this.menu_id = menu_id;
	}
	public String getReceipt_id() {
		return receipt_id;
	}
	public void setReceipt_id(String receipt_id) {
		this.receipt_id = receipt_id;
	}
	public int getQt() {
		return qt;
	}
	public void setQt(int qt) {
		this.qt = qt;
	}
	public int getService() {
		return service;
	}
	public void setService(int service) {
		this.service = service;
	}
	public int getS_price() {
		return s_price;
	}
	public void setS_price(int s_price) {
		this.s_price = s_price;
	}
	@Override
	public String toString() {
		return "Sales [id=" + id + ", menu_id=" + menu_id + ", receipt_id=" + receipt_id + ", qt=" + qt + ", service="
				+ service + ", s_price=" + s_price + "]";
	}
	
	
	
	
}
