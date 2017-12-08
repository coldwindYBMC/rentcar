package com.bjsxt.pojo;

public class Funs {
	
	private int funid;
	private String funname;
	private String funurl;
	private int menuid;
	public int getFunid() {
		return funid;
	}
	public void setFunid(int funid) {
		this.funid = funid;
	}
	public String getFunname() {
		return funname;
	}
	public void setFunname(String funname) {
		this.funname = funname;
	}
	public String getFunurl() {
		return funurl;
	}
	public void setFunurl(String funurl) {
		this.funurl = funurl;
	}
	public int getMenuid() {
		return menuid;
	}
	public void setMenuid(int menuid) {
		this.menuid = menuid;
	}
	public Funs(int funid, String funname, String funurl, int menuid) {
		super();
		this.funid = funid;
		this.funname = funname;
		this.funurl = funurl;
		this.menuid = menuid;
	}
	public Funs() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Funs [funid=" + funid + ", funname=" + funname + ", funurl=" + funurl + ", menuid=" + menuid + "]";
	}
	

}
