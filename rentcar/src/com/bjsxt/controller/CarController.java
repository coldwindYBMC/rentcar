package com.bjsxt.controller;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.bjsxt.annotation.SystemLog;
import com.bjsxt.pojo.Car;
import com.bjsxt.pojo.PageBean;
import com.bjsxt.service.CarService;

@Controller
public class CarController {
	@Resource
	private CarService carService;

	/**
	 * 添加顾客
	 * @param car
	 * @return
	 * @throws IOException 
	 */
	@RequestMapping("addCar")
	@ResponseBody
	public String addcar(Car car,MultipartFile image,HttpServletRequest req) throws IOException {
		System.out.println(car);
		System.out.println(image);
		//获取后缀名
		
		String type = image.getOriginalFilename().substring(image.getOriginalFilename().lastIndexOf("."));
		
		int result=0;
		if(type.equals(".png")||type.equals(".jpg")){
			//使用common io 包工具
			String img=UUID.randomUUID().toString()+type;//重命名文件
			car.setCarimg(img);
			String url=req.getServletContext().getRealPath("/files/"+img);
			System.out.println(url);
			FileUtils.copyInputStreamToFile(image.getInputStream(), new File(url));
			
			result = carService.addCar(car);
			
		}
		if(result==1){
			return "okok";
			
		}else{
			return "error";
		}

	}

	/**
	 * 查询车辆
	 * 
	 * @param car
	 * @param pageNumber
	 * @param pageSize
	 * @param m
	 * @return
	 */
	@RequestMapping("selCars")
	@SystemLog(description = "汽车管理-->查询汽车信息")
	public String selCars(Car car, @RequestParam(defaultValue = "1") int pageNumber,
			@RequestParam(defaultValue = "5") int pageSize, Model m,HttpSession session) {
		System.out.println("CarController.selCar()");
		System.out.println(car);
		PageBean<Car> pi = new PageBean<>();
		pi.setIndex(pageNumber); // 设置起始页
		pi.setSize(pageSize);// 设置每页行数
		carService.findCar(car, pi);
		session.setAttribute("carin", pi.getList());
		m.addAttribute("pageCar", pi);
		return "carManager/findCar.jsp";
	}
	
	 /**
	  * 获取车辆信息  修改车辆
	  * @param carnumber
	  * @return
	  */
	 @RequestMapping("findCar")
	 
	 public String findCar(String carnumber,Model mo){
		
		Car car =carService.findCarByident(carnumber);
		car.setCarimg("files\\"+car.getCarimg());
		System.out.println(car.getCarimg());
		mo.addAttribute("cari", car);
			return "/carManager/updateCar.jsp";
		}
	/**
	 * 修改车辆信息
	 * @param use
	 * @return
	 */
	@RequestMapping("updateCar")
		public String updateCar(Car car){
			int result= carService.updateCar(car);
			System.out.println(result);
			return "/carManager/updateCar.jsp";
			
		}
	/**
	 * 删除车辆
	 * @param carnumber
	 * @return
	 */
	@RequestMapping("delCar")
	@ResponseBody
	 public int delCar(String carnumber){
		 
		int result =carService.delCar(carnumber);
			
			return result;
			
		}
	
}
