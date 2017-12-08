package com.bjsxt.pojo;
/**
 * 角色菜单关系表
 * @author Administrator
 *
 */
public class Role_menus {
	private int roleid;//角色ID
	private int menuid;//菜单ID
	public int getRoleid() {
		return roleid;
	}
	public void setRoleid(int roleid) {
		this.roleid = roleid;
	}
	public int getMenuid() {
		return menuid;
	}
	public void setMenuid(int menuid) {
		this.menuid = menuid;
	}
	@Override
	public String toString() {
		return "Roles_menus [roleid=" + roleid + ", menuid=" + menuid + "]";
	}
	
}
