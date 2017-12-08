package com.bjsxt.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bjsxt.mapper.CustomerMapper;

import com.bjsxt.mapper.UserMapper;
import com.bjsxt.pojo.Customer;
import com.bjsxt.pojo.PageBean;
import com.bjsxt.pojo.User;
import com.bjsxt.service.CustomerService;
import com.bjsxt.service.UserService;
@Service
public class CustomerServcieImpl implements CustomerService {
	@Resource
	private CustomerMapper customerMapper;
	
	
	@Override
	public int addCustomer(Customer customer) {
		// TODO Auto-generated method stub
		return customerMapper.add(customer);
	}


	


	@Override
	public PageBean<Customer> findCustomer(Customer cutstomer, PageBean<Customer> pi) {
		// TODO Auto-generated method stub
	
			int totalCount=customerMapper.findCount();
			pi.setTotalCount(totalCount); // 设置总行数
			int start = pi.getStartRow();//起始行
			int size = pi.getSize();//每页的行数
			List<Customer> list= customerMapper.findCustomer(cutstomer,start,size);
			System.out.println(list);
			pi.setList(list);
			return pi;
	
	}





	@Override
	public Customer findCustByident(String identity) {
		// TODO Auto-generated method stub
		return customerMapper.findByIdent(identity);
	}





	@Override
	public int updateCust(Customer cust) {
		// TODO Auto-generated method stub
		return	customerMapper.updateCust(cust);
	}





	@Override
	public int delCust(String identity) {
		// TODO Auto-generated method stub
		return customerMapper.delByIdent(identity);
	}


	

}
