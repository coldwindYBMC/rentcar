package com.bjsxt.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bjsxt.pojo.Role;
import com.bjsxt.pojo.Role_menus;
import com.bjsxt.mapper.RoleMapper;
import com.bjsxt.mapper.Role_menusMapper;

import com.bjsxt.service.Role_menusService;



@Service
public class Role_menusServiceImpl implements Role_menusService{
	@Resource
	private RoleMapper roleMapper;
	@Resource
	private Role_menusMapper role_menusMapper;
	@Override
	public int addRole_menus(String rolename, List<Integer> list) {
		int insRole = roleMapper.insRole(rolename);//插入
		Role role = roleMapper.selByName(rolename);//获取id
		int roleid = role.getRoleid();
		
		List<Role_menus> rmlist = new ArrayList<>();
		for (Integer integer : list) {
			Role_menus rm = new Role_menus();
			rm.setRoleid(roleid);
			rm.setMenuid(integer);
			rmlist.add(rm);
		}
		int n = role_menusMapper.insRole_menus(rmlist);
		
		return n*insRole; 
	}
	@Override
	public List<Role_menus> selById(int roleid) {
		// TODO Auto-generated method stub
		return role_menusMapper.selById(roleid);
	}
	@Override
	public Role selRole(int roleid) {
		// TODO Auto-generated method stub
		return roleMapper.selById(roleid);
	}
	@Override
	public int updateRole_menus(Role r, List<Integer> list) {
		int insRole = roleMapper.updateRole(r);
		int roleid = r.getRoleid();
		int r2=role_menusMapper.delByRol(roleid);//删除
		List<Role_menus> rmlist = new ArrayList<>();
		for (Integer integer : list) {
			Role_menus rm = new Role_menus();
			rm.setRoleid(roleid);
			rm.setMenuid(integer);
			rmlist.add(rm);
		}
		int n = role_menusMapper.insRole_menus(rmlist);//添加
		
		return n*insRole*r2; 
	}

}
