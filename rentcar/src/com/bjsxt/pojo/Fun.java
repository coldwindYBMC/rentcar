package com.bjsxt.pojo;
/**
 *  功能
 * @author Administrator
 *
 */
public class Fun {
	private int  funid;  // 功能id
	private String funname;// 功能名称
	private String funurl; // 功能路径
	private int menuid;// 菜单id
//	 S
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
	@Override
	public String toString() {
		return "Fun [funid=" + funid + ", funname=" + funname + ", funurl=" + funurl + ", menuid=" + menuid + "]";
	}
	public Fun(int funid, String funname, String funurl, int menuid) {
		super();
		this.funid = funid;
		this.funname = funname;
		this.funurl = funurl;
		this.menuid = menuid;
	}
	public Fun() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
