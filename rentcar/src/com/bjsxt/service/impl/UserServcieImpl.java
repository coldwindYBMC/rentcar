package com.bjsxt.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bjsxt.mapper.UserMapper;
import com.bjsxt.pojo.PageBean;
import com.bjsxt.pojo.User;
import com.bjsxt.service.UserService;
@Service
public class UserServcieImpl implements UserService {
	@Resource
	private UserMapper userMapper;
	@Override
	public User login(User u) {
		// TODO Auto-generated method stub
		return userMapper.selUser(u);
	}
	@Override
	public int addUser(User use) {
		// TODO Auto-generated method stub
		return userMapper.add(use);
	}
	@Override
	public PageBean<User> findUsers(User us, PageBean<User> pi) {
		// TODO Auto-generated method stub
		int totalCount=userMapper.findCount();
		pi.setTotalCount(totalCount); // 设置总行数
		int start = pi.getStartRow();//起始行
		int size = pi.getSize();//每页的行数
		List<User> list= userMapper.findUser(us,start,size);
		System.out.println(list);
		pi.setList(list);
		return pi;
	}
	@Override
	public User findUserByUsername(String username) {
		// TODO Auto-generated method stub
		return userMapper.findByUsername(username);
	}
	@Override
	public int updateUser(User use) {
		// TODO Auto-generated method stub
		return userMapper.update(use);
	}
	@Override
	public int delUser(String username) {
		// TODO Auto-generated method stub
		return userMapper.delUser(username);
	}
	

}
