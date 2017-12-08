package com.bjsxt.pojo;

import java.sql.Date;

public class Logs {
    private int id ;//日志id
    private String username ;//用户名
    private String action;//用户操作行为
    private String actiontime;//用户操作时间
    private  int flag;//操作状态
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getAction() {
		return action;
	}
	public void setAction(String action) {
		this.action = action;
	}
	
	public String getActiontime() {
		return actiontime;
	}
	public void setActiontime(String actiontime) {
		this.actiontime = actiontime;
	}
	public int getFlag() {
		return flag;
	}
	public void setFlag(int flag) {
		this.flag = flag;
	}
	@Override
	public String toString() {
		return "Logs [id=" + id + ", username=" + username + ", action=" + action + ", actiontime=" + actiontime
				+ ", flag=" + flag + "]";
	}
    
}
