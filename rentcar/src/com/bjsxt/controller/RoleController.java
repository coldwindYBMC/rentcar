package com.bjsxt.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.bjsxt.pojo.Role;
import com.bjsxt.service.RoleService;


@Controller
public class RoleController {
	@Resource
	private RoleService roleService;
	

	@RequestMapping("selRoles")
	public String selRoles(Role role,Model mo){
		List<Role> list = roleService.showRoles(role);
		mo.addAttribute("list", list);
		return "/systemManager/showRole.jsp";
		
	}
	
	
	
	
	@RequestMapping("delRole")
	@ResponseBody
	public int delRole(int roleid) {
		int result=roleService.delById(roleid);
		return result;
	}
}
