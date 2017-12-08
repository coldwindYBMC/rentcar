package com.bjsxt.controller;

import java.sql.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bjsxt.annotation.SystemLog;
import com.bjsxt.mapper.UserMapper;
import com.bjsxt.pojo.LoginLogs;
import com.bjsxt.pojo.PageBean;
import com.bjsxt.pojo.User;
import com.bjsxt.service.LoginLogsService;
import com.bjsxt.service.UserService;

@Controller
public class UserController {
	
	@Resource
	private UserService userService;
	@Resource
	private LoginLogsService loginLogsService;
	/**
	 * 根据用户名密码 登录    获取用户对象
	 * @param user
	 * @param req
	 * @return
	 */
	@RequestMapping("login")
	@SystemLog(description = "登录")
	public String login(User us,String randNum,HttpServletRequest req){
		HttpSession session = req.getSession();
		String randStr = (String) session.getAttribute("randStr"); // 获取验证码
		// 验证码
		if(randNum==null||randNum.equals("")||(!randStr.equals(randNum))){
			req.setAttribute("error", "验证码错误，请重新输入");
			return "/login.jsp";
		}
		
		User u = userService.login(us);
		
		session.setAttribute("user", u); // 将用户对象存入session 
		System.out.println("u---"+u);
		if(u==null){
			req.setAttribute("error", "登录名或密码错误");
			return "/login.jsp"; // 返回登录页
		}else{
			LoginLogs log=new LoginLogs();
			log.setLoginip(this.getIpAddr(req)); // ip
			log.setLoginname(u.getUsername());
			log.setLogintime(new Date(System.currentTimeMillis()).toString());
			
			loginLogsService.addLoginLogs(log);
			
			return "menu";  // 获取菜单 
		}
		
	}
	/**
	 *  退出登录
	 * @param session
	 * @return
	 */
	@RequestMapping("logout")
	@SystemLog(description = "退出登录")
	public String logout(HttpSession session){
		session.invalidate(); //清空session 
		return "redirect:/login.jsp";
		
	}
	/**
	 * 添加用户
	 * @param use
	 * @return
	 */
	 @RequestMapping("addUser")
	@SystemLog(description = "用户管理-->添加用户")
	public String addUser(User use){
		int result= userService.addUser(use);
		System.out.println(result);
		return "menu";
		
	}
	 
	 @RequestMapping("selUser")
	 @SystemLog(description = "用户管理-->查询用户")
	public String selUser(User us,@RequestParam(defaultValue="1") int pageNumber,
			@RequestParam(defaultValue="5")int pageSize,Model m){
		 System.out.println(us);
		PageBean<User> pi=new PageBean<>();
		pi.setIndex(pageNumber); //设置起始页
		pi.setSize(pageSize);// 设置每页行数
		 userService.findUsers(us,pi);
		m.addAttribute("pagebean", pi);
		return "/user/selUser.jsp";
		
	}
	 /**
	  * 获取用户信息  修改用户
	  * @param username
	  * @return
	  */
	 @RequestMapping("findUser")
	 @ResponseBody
	 @SystemLog(description = "用户管理-->获取用户信息准备修改")
	 public User findUser(String username){
		 
		 User user=userService.findUserByUsername(username);
			
			return user;
			
		}
	/**
	 * 修改管理员 
	 * @param use
	 * @return
	 */
	@RequestMapping("updateUser")
	@SystemLog(description = "用户管理-->修改用户信息")
		public String updateUser(User use){
			int result= userService.updateUser(use);
			System.out.println(result);
			return "user/updateUser.jsp";
			
		}
	/**
	 * 删除用户
	 * @param username
	 * @return
	 */
	@RequestMapping("delUser")
	@SystemLog(description = "用户管理-->删除用户")
	@ResponseBody
	 public int delUser(String username){
		 
		int result =userService.delUser(username);
			
			return result;
			
		}
	
	/**
	 * 获取ip
	 * @param request
	 * @return
	 */
		public String getIpAddr(HttpServletRequest request) {
		    String ip = request.getHeader("x-forwarded-for");
		     if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
		       ip = request.getHeader("Proxy-Client-IP");
		     if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
		       ip = request.getHeader("WL-Proxy-Client-IP");
		   }
		   if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
		      ip = request.getRemoteAddr();
		  }
		  if (ip.equals("0:0:0:0:0:0:0:1")) {
			  return ip;
		   }
		  
		}
			return ip;
		}
		
	
	
}
