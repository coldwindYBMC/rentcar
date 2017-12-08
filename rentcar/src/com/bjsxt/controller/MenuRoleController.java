package com.bjsxt.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
/**
 * 菜单和角色管理
 * @author Administrator
 *
 */
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bjsxt.annotation.SystemLog;
import com.bjsxt.pojo.Menu;
import com.bjsxt.pojo.Role;
import com.bjsxt.pojo.User;
import com.bjsxt.service.MenuService;
@Controller
public class MenuRoleController {
	@Resource
	private MenuService menuService;
	
	/**
	 * 
	 * @param session
	 * @return
	 */
	@RequestMapping("menu")
	@SystemLog(description = "获取菜单")
	public String showMenu(HttpSession session,Model model){
		User user = (User) session.getAttribute("user");
		List<Menu> menulist = menuService.showMenus(user.getRoleid(), 1);
		
		model.addAttribute("menulist", menulist);
		return "/WEB-INF/index.jsp";
		
	}
	
	@RequestMapping("showRole")
	@ResponseBody
	public List<Role> showRole(){
		
		return menuService.showAllRole();
		
	}
	

}
