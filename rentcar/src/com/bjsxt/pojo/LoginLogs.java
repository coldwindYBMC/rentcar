package com.bjsxt.pojo;

import java.sql.Date;

public class LoginLogs {
       private int loginlogid;//日志id
       private String loginname;//用户名
       private String loginip;//登录ip
       private String logintime ;//用户登录时间
	public int getLoginlogid() {
		return loginlogid;
	}
	public void setLoginlogid(int loginlogid) {
		this.loginlogid = loginlogid;
	}
	public String getLoginname() {
		return loginname;
	}
	public void setLoginname(String loginname) {
		this.loginname = loginname;
	}
	public String getLoginip() {
		return loginip;
	}
	public void setLoginip(String loginip) {
		this.loginip = loginip;
	}
	public String getLogintime() {
		return logintime;
	}
	public void setLogintime(String logintime) {
		this.logintime = logintime;
	}
	public LoginLogs(int loginlogid, String loginname, String loginip, String logintime) {
		super();
		this.loginlogid = loginlogid;
		this.loginname = loginname;
		this.loginip = loginip;
		this.logintime = logintime;
	}
	public LoginLogs() {
		super();
		// TODO Auto-generated constructor stub
	}
	

	
	
       
}
