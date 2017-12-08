package com.bjsxt.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bjsxt.annotation.SystemLog;
import com.bjsxt.pojo.LoginLogs;

import com.bjsxt.pojo.PageBean;
import com.bjsxt.service.LoginLogsService;

@Controller
public class LoginLogsController {
	
	@Resource
	private LoginLogsService loginLogsService;
	
	
	
	@RequestMapping("loginLogs")
	@SystemLog(description = "查询登录信息")
	public String loginLogs(LoginLogs loginLogs, @RequestParam(defaultValue = "1") int pageNumber,
			@RequestParam(defaultValue = "5") int pageSize, Model m){
		System.out.println("LoginLogsController.loginLogs()");
		System.out.println(loginLogs);
		PageBean<LoginLogs> pi = new PageBean<>();
		pi.setIndex(pageNumber);//设置起始页
		pi.setIndex(pageSize);//设置每页行数
		loginLogsService.findLoginLogs(loginLogs, pi);
		m.addAttribute("pageLoginLogs",pi);

		return "/systemManager/findLoginInfo.jsp";
		
		
		
	}
	//删除
	@RequestMapping("delLogin")
	@ResponseBody
	public int delLogin(int loginlogid){
		int result = loginLogsService.delloginlog(loginlogid);
		
		return result;
	
	
	
	}
	

}
