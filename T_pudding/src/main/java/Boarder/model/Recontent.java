package Boarder.model;

import java.sql.Date;

public class Recontent {
	
	private int recontentno;
	private int recontent_boardno;
	private String recontent_writer;
	private String recontent_passwd;
	private String recontent_content;
	private Date recontent_date;
	
	public Recontent() {
		super();
	}
	public Recontent(int recontentno, int recontent_boardno, String recontent_writer, String recontent_passwd,
			String recontent_content, Date recontent_date) {
		super();
		this.recontentno = recontentno;
		this.recontent_boardno = recontent_boardno;
		this.recontent_writer = recontent_writer;
		this.recontent_passwd = recontent_passwd;
		this.recontent_content = recontent_content;
		this.recontent_date = recontent_date;
	}
	public int getRecontentno() {
		return recontentno;
	}
	public void setRecontentno(int recontentno) {
		this.recontentno = recontentno;
	}
	public int getRecontent_boardno() {
		return recontent_boardno;
	}
	public void setRecontent_boardno(int recontent_boardno) {
		this.recontent_boardno = recontent_boardno;
	}
	public String getRecontent_writer() {
		return recontent_writer;
	}
	public void setRecontent_writer(String recontent_writer) {
		this.recontent_writer = recontent_writer;
	}
	public String getRecontent_passwd() {
		return recontent_passwd;
	}
	public void setRecontent_passwd(String recontent_passwd) {
		this.recontent_passwd = recontent_passwd;
	}
	public String getRecontent_content() {
		return recontent_content;
	}
	public void setRecontent_content(String recontent_content) {
		this.recontent_content = recontent_content;
	}
	public Date getRecontent_date() {
		return recontent_date;
	}
	public void setRecontent_date(Date recontent_date) {
		this.recontent_date = recontent_date;
	}
	
	
}
