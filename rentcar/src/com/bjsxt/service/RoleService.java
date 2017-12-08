package com.bjsxt.service;


import java.util.List;

import com.bjsxt.pojo.PageBean;
import com.bjsxt.pojo.Role;


public interface RoleService {
	
	int addRole(String rolename);
	int updateRole(Role role);
	List<Role> showAll();
	Role findById(int roleid);
	/**
	 * 通过id name 查找
	 * @param role
	 * @return
	 */
	List<Role> showRoles(Role role);
	/**
	 * 删除
	 * @param roleid
	 * @return
	 */
	int delById(int roleid);

		
}
