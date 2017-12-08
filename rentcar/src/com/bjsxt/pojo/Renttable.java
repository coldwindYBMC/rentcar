package com.bjsxt.pojo;

import java.io.Serializable;
import java.util.Date;

public class Renttable {
	private String rentid;//出租单编号
	private double imprest;//预付金
	private double shouldpaypric;//应付金
	private double price;//实际交付价格
	private String begindate;//起租日期
	private String shouldreturndate;//应归还日期
	private String returndate;//归还日期
	private int rentflage;//出租单状况
	private String custid;//客户号
	private String carid;//车号
	private String username;//服务人员编号
	private String custname;
	
	@Override
	public String toString() {
		return "Renttable [rentid=" + rentid + ", imprest=" + imprest + ", shouldpaypric=" + shouldpaypric + ", price="
				+ price + ", begindate=" + begindate + ", shouldreturndate=" + shouldreturndate + ", returndate="
				+ returndate + ", rentflage=" + rentflage + ", custid=" + custid + ", carid=" + carid + ", username="
				+ username + ", custname=" + custname + "]";
	}
	public String getRentid() {
		return rentid;
	}
	public void setRentid(String rentid) {
		this.rentid = rentid;
	}
	public double getImprest() {
		return imprest;
	}
	public void setImprest(double imprest) {
		this.imprest = imprest;
	}
	public double getShouldpaypric() {
		return shouldpaypric;
	}
	public void setShouldpaypric(double shouldpaypric) {
		this.shouldpaypric = shouldpaypric;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getBegindate() {
		return begindate;
	}
	public void setBegindate(String begindate) {
		this.begindate = begindate;
	}
	public String getShouldreturndate() {
		return shouldreturndate;
	}
	public void setShouldreturndate(String shouldreturndate) {
		this.shouldreturndate = shouldreturndate;
	}
	public String getReturndate() {
		return returndate;
	}
	public void setReturndate(String returndate) {
		this.returndate = returndate;
	}
	public int getRentflage() {
		return rentflage;
	}
	public void setRentflage(int rentflage) {
		this.rentflage = rentflage;
	}
	public String getCustid() {
		return custid;
	}
	public void setCustid(String custid) {
		this.custid = custid;
	}
	public String getCarid() {
		return carid;
	}
	public void setCarid(String carid) {
		this.carid = carid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getCustname() {
		return custname;
	}
	public void setCustname(String custname) {
		this.custname = custname;
	}
	public Renttable() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	

	
	
	
	
}
