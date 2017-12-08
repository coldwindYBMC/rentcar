package com.bjsxt.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bjsxt.mapper.LoginLogsMapper;
import com.bjsxt.pojo.LoginLogs;
import com.bjsxt.pojo.PageBean;
import com.bjsxt.service.LoginLogsService;
@Service
public class LoginLogsServiceImpl implements LoginLogsService {
	
	@Resource
	private  LoginLogsMapper loginLogsMapper;
	

	@Override
	public int addLoginLogs(LoginLogs loginLogs) {
		// TODO Auto-generated method stub
		return loginLogsMapper.add(loginLogs);
	}

	@Override
	public PageBean<LoginLogs> findLoginLogs(LoginLogs loginLogs, PageBean<LoginLogs> pi) {
		
		// TODO Auto-generated method stub
		int totalCount=loginLogsMapper.findCount();
		pi.setTotalCount(totalCount);//设置总行数
		int start = pi.getStartRow();
		int size = pi.getSize();
		
		List<LoginLogs> list = loginLogsMapper.findLoginLogs(loginLogs, start, size);
		System.out.println(list);
		pi.setList(list);
		
		
		return null;
	}

	@Override
	public int delloginlog(int loginlogid) {
		// TODO Auto-generated method stub
		return loginLogsMapper.delByloginlogid(loginlogid);
	}

}
