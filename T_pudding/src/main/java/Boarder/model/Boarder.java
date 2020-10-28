package Boarder.model;

import java.sql.Date;

public class Boarder {
	private int boardno;
	private String board_writer;
	private String board_passwd;
	private String board_title;
	private Date board_date;
	private int board_recount;
	private String board_content;
	private String board_recontent;
	private int rownum;
	
	public int getRownum() {
		return rownum;
	}
	public void setRownum(int rownum) {
		this.rownum = rownum;
	}


	
	public Boarder() {
		super();
	}
	public Boarder(int boardno, String board_writer, String board_passwd, String board_title, Date board_date,
			int board_recount, String board_content, String board_recontent) {
		super();
		this.boardno = boardno;
		this.board_writer = board_writer;
		this.board_passwd = board_passwd;
		this.board_title = board_title;
		this.board_date = board_date;
		this.board_recount = board_recount;
		this.board_content = board_content;
		this.board_recontent = board_recontent;
	}
	public int getBoardno() { 
		return boardno;
	}
	public void setBoardno(int boardno) {
		this.boardno = boardno;
	}
	public String getBoard_writer() {
		return board_writer;
	}
	public void setBoard_writer(String board_writer) {
		this.board_writer = board_writer;
	}
	public String getBoard_passwd() {
		return board_passwd;
	}
	public void setBoard_passwd(String board_passwd) {
		this.board_passwd = board_passwd;
	}
	public String getBoard_title() {
		return board_title;
	}
	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}
	public Date getBoard_date() {
		return board_date;
	}
	public void setBoard_date(Date board_date) {
		this.board_date = board_date;
	}
	public int getBoard_recount() {
		return board_recount;
	}
	public void setBoard_recount(int board_recount) {
		this.board_recount = board_recount;
	}
	public String getBoard_content() {
		return board_content;
	}
	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}
	public String getBoard_recontent() {
		return board_recontent;
	}
	public void setBoard_recontent(String board_recontent) {
		this.board_recontent = board_recontent;
	}
	
	
}
