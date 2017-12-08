package com.bjsxt.service;

import java.util.List;

import com.bjsxt.pojo.Menu;
import com.bjsxt.pojo.Role;

public interface MenuService {
	
	/**
	 * 根据角色id 和 父项菜单获取 菜单列表
	 * @param roleid
	 * @param fatherid
	 * @return
	 */
	public List<Menu> showMenus(int roleid,int fatherid );
	
	/**
	 * 获取全部角色信息
	 * @return
	 */
	public List<Role> showAllRole();
	/**
	 * 获取全部菜单
	 * @return
	 */
	public List<Menu> showAllMenu();
}
