package com.bjsxt.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bjsxt.mapper.UserMapper;
import com.bjsxt.pojo.Customer;
import com.bjsxt.pojo.PageBean;
import com.bjsxt.pojo.User;
import com.bjsxt.service.CustomerService;
import com.bjsxt.service.UserService;

@Controller
public class CustomerController {

	@Resource
	private CustomerService customerService;

	/**
	 * 添加顾客
	 * @param customer
	 * @return
	 */
	@RequestMapping("addCust")
	@ResponseBody
	public String addcustomer(Customer customer) {
		int result = customerService.addCustomer(customer);
		System.out.println(result);
		return "result";

	}

	/**
	 * 查询客户
	 * 
	 * @param customer
	 * @param pageNumber
	 * @param pageSize
	 * @param m
	 * @return
	 */
	@RequestMapping("selCust")
	public String selCust(Customer customer, @RequestParam(defaultValue = "1") int pageNumber,
			@RequestParam(defaultValue = "5") int pageSize, Model m) {
		System.out.println(customer);
		PageBean<Customer> pi = new PageBean<>();
		pi.setIndex(pageNumber); // 设置起始页
		pi.setSize(pageSize);// 设置每页行数
		customerService.findCustomer(customer, pi);
		m.addAttribute("pageCust", pi);
		return "/custManager/findCustomers.jsp";
	}
	
	 /**
	  * 获取客户信息  修改客户
	  * @param identity
	  * @return
	  */
	 @RequestMapping("findCust")
	 @ResponseBody
	 public Customer findCust(String identity){
		 
		Customer customer =customerService.findCustByident(identity);
			return customer;
		}
	/**
	 * 修改客户信息
	 * @param use
	 * @return
	 */
	@RequestMapping("updateCust")
		public String updateCust(Customer cust){
			int result= customerService.updateCust(cust);
			System.out.println(result);
			return "/custManager/updateCust.jsp";
			
		}
	/**
	 * 删除客户
	 * @param identity
	 * @return
	 */
	@RequestMapping("delCust")
	@ResponseBody
	 public int delCust(String identity){
		 
		int result =customerService.delCust(identity);
			
			return result;
			
		}
	
}
