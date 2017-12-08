package com.bjsxt.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bjsxt.mapper.CarMapper;
import com.bjsxt.mapper.ChecktableMapper;
import com.bjsxt.mapper.RenttableMapper;
import com.bjsxt.pojo.Car;
import com.bjsxt.pojo.Checktable;
import com.bjsxt.pojo.PageBean;
import com.bjsxt.pojo.Renttable;
import com.bjsxt.service.CheckService;
@Service
public class CheckServiceImpl implements CheckService{
	@Resource
	private ChecktableMapper  checktableMapper;
	@Resource
	private CarMapper carMapper;
	@Resource
	private RenttableMapper renttableMapper;
	
	@Override
	public int addCheck(Checktable checktable) {
		// TODO Auto-generated method stub
		Renttable ret = renttableMapper.findByNum(checktable.getRentid());// 获取租车id
		String rentid=checktable.getRentid();
		int r1=renttableMapper.updateReturn(rentid);  // 改变出租单出租状态 falge=1
		int r2=carMapper.updateReturn(ret.getCarid()); // 更改车状态
		int r3=checktableMapper.add(checktable);  // 添加检查表
		return r1*r2*r3;
	}

	@Override
	public void findCheck(Checktable checktable, PageBean<Checktable> pi) {
		int totalCount=checktableMapper.findCount();
		pi.setTotalCount(totalCount); // 设置总行数
		int start = pi.getStartRow();//起始行
		int size = pi.getSize();//每页的行数
		List<Checktable> list= checktableMapper.findChecktable(checktable,start,size);
		System.out.println(list);
		pi.setList(list);
		
	}

}
