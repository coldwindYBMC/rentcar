package com.bjsxt.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bjsxt.mapper.CarMapper;
import com.bjsxt.pojo.Car;

import com.bjsxt.pojo.PageBean;
import com.bjsxt.service.CarService;
@Service
public class CarServiceImpl implements CarService {
	@Resource
	private CarMapper carMapper;
	
	@Override
	public int addCar(Car car) {
		// TODO Auto-generated method stub
		return carMapper.add(car);
	}

	@Override
	public PageBean<Car> findCar(Car car, PageBean<Car> pi) {
		// TODO Auto-generated method stub
		int totalCount=carMapper.findCount();
		pi.setTotalCount(totalCount); // 设置总行数
		int start = pi.getStartRow();//起始行
		int size = pi.getSize();//每页的行数
		List<Car> list= carMapper.findCar(car,start,size);
		System.out.println(list);
		pi.setList(list);
		return pi;
	}

	@Override
	public Car findCarByident(String carnumber) {
		// TODO Auto-generated method stub
		return carMapper.findByNum(carnumber);
	}

	@Override
	public int updateCar(Car cust) {
		// TODO Auto-generated method stub
		return	carMapper.updateCar(cust);
	}

	@Override
	public int delCar(String identity) {
		// TODO Auto-generated method stub
		return carMapper.delByIdent(identity);
	}

}
