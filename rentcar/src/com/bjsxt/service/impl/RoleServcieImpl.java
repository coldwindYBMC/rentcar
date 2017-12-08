package com.bjsxt.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bjsxt.mapper.CustomerMapper;
import com.bjsxt.mapper.RoleMapper;
import com.bjsxt.mapper.Role_menusMapper;
import com.bjsxt.mapper.UserMapper;
import com.bjsxt.pojo.Customer;
import com.bjsxt.pojo.PageBean;
import com.bjsxt.pojo.Role;
import com.bjsxt.pojo.User;
import com.bjsxt.service.CustomerService;
import com.bjsxt.service.RoleService;
import com.bjsxt.service.UserService;


@Service
public class RoleServcieImpl implements RoleService {
	@Resource
	private RoleMapper roleMapper;
	@Resource
	private Role_menusMapper role_menusMapper;
	@Override
	public int addRole(String rolename) {
		return roleMapper.insRole(rolename);
	}
	@Override
	public int updateRole(Role role) {
		
		return roleMapper.updateRole(role);
	}
	@Override
	public List<Role> showAll() {
		return roleMapper.selAll();
	}
	@Override
	public Role findById(int roleid) {
		return roleMapper.selById(roleid);
	}
	@Override
	public List<Role> showRoles(Role role) {
		// TODO Auto-generated method stub
		return roleMapper.selRole(role);
	}
	@Override
	public int delById(int roleid) {
		// TODO Auto-generated method stub
		int r2=role_menusMapper.delByRol(roleid);
		int r1 = roleMapper.delRole(roleid);
		return r1*r2;
	}
	
	
	
	


	

}
