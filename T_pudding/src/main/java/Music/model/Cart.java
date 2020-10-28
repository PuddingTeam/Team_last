package Music.model;

import java.util.Date;

public class Cart {
	
	private int cart_num; 
	private String cart_user;
	private String cart_album;
	private String cart_title;
	private String cart_singer;
	private int cart_mno;
	public int getCart_mno() {
		return cart_mno;
	}
	public void setCart_mno(int cart_mno) {
		this.cart_mno = cart_mno;
	}
	private int cart_price;
	private  Date cart_date;
	private  int cart_amount;
	
	public int getCart_num() 
	
	{
		return cart_num;
	}
	public void setCart_num(int cart_num) {
		this.cart_num = cart_num;
	}
	public String getCart_user() {
		return cart_user;
	}
	public void setCart_user(String cart_user) {
		this.cart_user = cart_user;
	}
	
	public String getCart_album() {
		return cart_album;
	}
	public void setCart_album(String cart_album) {
		this.cart_album = cart_album;
	}
	public String getCart_title() {
		return cart_title;
	}
	public void setCart_title(String cart_title) {
		this.cart_title = cart_title;
	}
	public String getCart_singer() {
		return cart_singer;
	}
	public void setCart_singer(String cart_singer) {
		this.cart_singer = cart_singer;
	}
	public int getCart_price() {
		return cart_price;
	}
	public void setCart_price(int cart_price) {
		this.cart_price = cart_price;
	}
	public Date getCart_date() {
		return cart_date;
	}
	public void setCart_date(Date cart_date) {
		this.cart_date = cart_date;
	}
	public int getCart_amount() {
		return cart_amount;
	}
	public void setCart_amount(int cart_amount) {
		this.cart_amount = cart_amount+cart_price;
	}
	
	
	
}
