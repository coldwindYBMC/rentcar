package com.bjsxt.pojo;
/**
 * 角色
 * @author Administrator
 *
 */
public class Role {
	private int roleid; // 角色id
	private String rolename; // 角色名称
	private String username;
	public int getRoleid() {
		return roleid;
	}
	public void setRoleid(int roleid) {
		this.roleid = roleid;
	}
	public String getRolename() {
		return rolename;
	}
	public void setRolename(String rolename) {
		this.rolename = rolename;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	@Override
	public String toString() {
		return "Role [roleid=" + roleid + ", rolename=" + rolename + ", username=" + username + "]";
	}
	public Role(int roleid, String rolename, String username) {
		super();
		this.roleid = roleid;
		this.rolename = rolename;
		this.username = username;
	}
	public Role() {
		super();
		// TODO Auto-generated constructor stub
	}
	


}
