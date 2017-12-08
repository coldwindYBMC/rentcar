package com.bjsxt.pojo;

import java.util.List;

/**
 *  菜单
 * @author Administrator
 *
 */
public class Menu {
	private int menuid; // 菜单id
	private String menuname; //菜单名称
	private String uri;   // 菜单连接路径
	private int fatherid;  //父节点id
	private List<Menu> childMenu;
	
	
	
	
	public Menu() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Menu(int menuid, String menuname, String uri, int fatherid, List<Menu> childMenu) {
		super();
		this.menuid = menuid;
		this.menuname = menuname;
		this.uri = uri;
		this.fatherid = fatherid;
		this.childMenu = childMenu;
	}
	@Override
	public String toString() {
		return "Menu [menuid=" + menuid + ", menuname=" + menuname + ", uri=" + uri + ", fatherid=" + fatherid
				+ ", childMenu=" + childMenu + "]";
	}
	public int getMenuid() {
		return menuid;
	}
	public void setMenuid(int menuid) {
		this.menuid = menuid;
	}
	public String getMenuname() {
		return menuname;
	}
	public void setMenuname(String menuname) {
		this.menuname = menuname;
	}
	public String getUri() {
		return uri;
	}
	public void setUri(String uri) {
		this.uri = uri;
	}
	public int getFatherid() {
		return fatherid;
	}
	public void setFatherid(int fatherid) {
		this.fatherid = fatherid;
	}
	public List<Menu> getChildMenu() {
		return childMenu;
	}
	public void setChildMenu(List<Menu> childMenu) {
		this.childMenu = childMenu;
	}
	
	
}
