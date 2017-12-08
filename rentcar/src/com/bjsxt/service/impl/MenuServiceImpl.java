package com.bjsxt.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bjsxt.mapper.MenuMapper;
import com.bjsxt.mapper.RoleMapper;
import com.bjsxt.pojo.Menu;
import com.bjsxt.pojo.Role;
import com.bjsxt.service.MenuService;
@Service
public class MenuServiceImpl implements MenuService{
	@Resource
	private MenuMapper menuMapper;
	@Resource
	private RoleMapper roleMapper; 

	@Override
	public List<Menu> showMenus(int roleid, int fatherid) {
		// TODO Auto-generated method stub
		List<Menu> list = menuMapper.selMenu(roleid, fatherid);
		for (Menu menu : list) {
			menu.setChildMenu(menuMapper.selMenu(roleid,menu.getMenuid()));
		}
		return list;
	}

	@Override
	public List<Role> showAllRole() {
		// TODO Auto-generated method stub
		return roleMapper.selAll();
	}

	@Override
	public List<Menu> showAllMenu() {
		// TODO Auto-generated method stub
		List<Menu> list = menuMapper.selAll(1);
		for (Menu menu : list) {
			menu.setChildMenu(menuMapper.selAll(menu.getMenuid()));
		}
		return list;
	}
	
	

}
