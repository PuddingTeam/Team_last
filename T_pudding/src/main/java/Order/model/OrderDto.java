package Order.model;

import java.util.Date;

public class OrderDto {
	
	private int ordersno;
	private String orders_title;
	private String orders_singer;
	private String orders_album;
	private int orders_price;
	private int orders_mno;
	private String orders_userid;
	private Date orders_date;
	
	public int getOrdersno() {
		return ordersno;
	}
	public void setOrdersno(int ordersno) {
		this.ordersno = ordersno;
	}
	public String getOrders_title() {
		return orders_title;
	}
	public void setOrders_title(String orders_title) {
		this.orders_title = orders_title;
	}
	public String getOrders_singer() {
		return orders_singer;
	}
	public void setOrders_singer(String orders_singer) {
		this.orders_singer = orders_singer;
	}
	public String getOrders_album() {
		return orders_album;
	}
	public void setOrders_album(String orders_album) {
		this.orders_album = orders_album;
	}
	public int getOrders_price() {
		return orders_price;
	}
	public void setOrders_price(int orders_price) {
		this.orders_price = orders_price;
	}
	public int getOrders_mno() {
		return orders_mno;
	}
	public void setOrders_mno(int orders_mno) {
		this.orders_mno = orders_mno;
	}
	public String getOrders_userid() {
		return orders_userid;
	}
	public void setOrders_userid(String orders_userid) {
		this.orders_userid = orders_userid;
	}
	public Date getOrders_date() {
		return orders_date;
	}
	public void setOrders_date(Date orders_date) {
		this.orders_date = orders_date;
	}
	
	
	
	
	
	
}
