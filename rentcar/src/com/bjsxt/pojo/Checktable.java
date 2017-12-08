package com.bjsxt.pojo;

import java.util.Date;

public class Checktable {
	private String checkid;  // 检查单号
	private String checkdate; //检查时间
	private String field;    // 属性
	private String problem;   // 问题
	private double paying;   // 赔偿
	private String username;  // 检查员
	private String rentid;    // 出租单id
	public String getCheckid() {
		return checkid;
	}
	public void setCheckid(String checkid) {
		this.checkid = checkid;
	}
	public String getCheckdate() {
		return checkdate;
	}
	public void setCheckdate(String checkdate) {
		this.checkdate = checkdate;
	}
	public String getField() {
		return field;
	}
	public void setField(String field) {
		this.field = field;
	}
	public String getProblem() {
		return problem;
	}
	public void setProblem(String problem) {
		this.problem = problem;
	}
	public double getPaying() {
		return paying;
	}
	public void setPaying(double paying) {
		this.paying = paying;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getRentid() {
		return rentid;
	}
	public void setRentid(String rentid) {
		this.rentid = rentid;
	}
	public Checktable(String checkid, String checkdate, String field, String problem, double paying, String username,
			String rentid) {
		super();
		this.checkid = checkid;
		this.checkdate = checkdate;
		this.field = field;
		this.problem = problem;
		this.paying = paying;
		this.username = username;
		this.rentid = rentid;
	}
	@Override
	public String toString() {
		return "Check [checkid=" + checkid + ", checkdate=" + checkdate + ", field=" + field + ", problem=" + problem
				+ ", paying=" + paying + ", username=" + username + ", rentid=" + rentid + "]";
	}
	public Checktable() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	

}
