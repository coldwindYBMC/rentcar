package com.bjsxt.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bjsxt.annotation.SystemLog;

import com.bjsxt.pojo.Logs;
import com.bjsxt.pojo.PageBean;
import com.bjsxt.service.LogsService;

@Controller
public class LogsController {

	@Resource
	private  LogsService logsService;
	//查询日志
	@RequestMapping("selLogs")
	@SystemLog(description = "日志管理-->查询日志信息")
	public String selLogs(Logs logs, @RequestParam(defaultValue = "1") int pageNumber,
			@RequestParam(defaultValue = "5") int pageSize, Model m){
		System.out.println("LogsController.selLogs()");
		System.out.println(logs);
		PageBean<Logs> pi = new PageBean<>();
		pi.setIndex(pageNumber);//设置起始页
		pi.setIndex(pageSize);//设置每页行数
		logsService.findLogs(logs, pi);
		m.addAttribute("pageLogs",pi);

		return "/systemManager/findLog.jsp";
	}
	
	
	@RequestMapping("delLogs")
	@ResponseBody
	public int delLogs(int id){
		int result = logsService.delLogs(id);
		return result;

	}
	
	
	
	
	
	
	
	
	
	
	
	
	
}
