package com.bjsxt.service;

import com.bjsxt.pojo.Car;
import com.bjsxt.pojo.PageBean;

public interface CarService {
	
	public  int addCar(Car car);
	/**
	 * 查找车辆信息
	 * @param cutstomer
	 * @param pageNumber
	 * @param pageSize
	 * @return
	 */
	public PageBean<Car> findCar(Car car, PageBean<Car> pi);
	/**
	 * 通过车牌查询车辆信息
	 * @param identity
	 * @return
	 */
	public Car findCarByident(String identity);
	/**
	 * 修改车辆信息
	 * @param cust
	 * @return
	 */
	public int updateCar(Car cust);
	/**
	 * 根据 删除车辆信息
	 * @param identity
	 * @return
	 */
	public int delCar(String identity);

}
