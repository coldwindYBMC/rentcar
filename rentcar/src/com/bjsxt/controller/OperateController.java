package com.bjsxt.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bjsxt.annotation.SystemLog;
import com.bjsxt.pojo.Car;
import com.bjsxt.pojo.Customer;
import com.bjsxt.pojo.Renttable;
import com.bjsxt.pojo.PageBean;
import com.bjsxt.pojo.User;
import com.bjsxt.service.CarService;
import com.bjsxt.service.CustomerService;
import com.bjsxt.service.RentService;


@Controller
public class OperateController {

	@Resource
	private CarService carService;
	@Resource
	private CustomerService customerService;
	@Resource
	private RentService rentService;
	
	
	@RequestMapping("findCustByI")
	@SystemLog(description="查找顾客信息")
	@ResponseBody
	public boolean findCustByI(String identity){
		Customer customer =customerService.findCustByident(identity);
		if(customer==null){
			return false;
			
		}else{
			return true;
		}
		
	}
	
	
	@RequestMapping("findRent")
	@SystemLog(description = "汽车管理-->查询汽车信息")
	public String findRent(String identity, @RequestParam(defaultValue = "1") int pageNumber,
			@RequestParam(defaultValue = "5") int pageSize, Model m) {
		Car car= new Car();
		car.setIsrenting("0");
		PageBean<Car> pi = new PageBean<>();
		pi.setIndex(pageNumber); // 设置起始页
		pi.setSize(pageSize);// 设置每页行数
		carService.findCar(car, pi);
		m.addAttribute("ident", identity);
		m.addAttribute("pageRent", pi);
		return "operatorManager/findCar.jsp";
	}
	
	@RequestMapping("preRentCar")
	@SystemLog(description = "汽车管理-->预处理租车单")
	public String preRentCar(String carnumber,String identity,Model mo,HttpSession session ){
		Renttable re=new Renttable();
		re.setRentid(Long.toString(System.currentTimeMillis()));  //出租单号
		User user = (User) session.getAttribute("user");
		re.setUsername(user.getUsername());
		re.setCarid(carnumber); //车号
		re.setCustid(identity);//客户编号
		re.setRentflage(0);
		Car car = carService.findCarByident(carnumber);
		Customer cust = customerService.findCustByident(identity);
		mo.addAttribute("cust", cust);
		mo.addAttribute("renttable", re);
		mo.addAttribute("carinfo", car);
		return "operatorManager/rentInfo.jsp";
		
	}
	
	
	

	/**
	 * 添加出租
	 * @param customer
	 * @return
	 */
	@RequestMapping("addRentInfo")
	@ResponseBody
	public String addRentInfo(Renttable renttable) {
		int result = rentService.addRenttable(renttable);
		if(result>0){
			return "ok";
		}else{
			
			return "fail";
		}

	}
	
	

	/**
	 * 查找租车
	 * 
	 * @param customer
	 * @param pageNumber
	 * @param pageSize
	 * @param m
	 * @return*/
	 
	@RequestMapping("selRenttable")
	public String selRenttable(Renttable renttable, @RequestParam(defaultValue = "1") int pageNumber,
			@RequestParam(defaultValue = "5") int pageSize, Model m) {
		System.out.println(renttable);
		PageBean<Renttable> pi = new PageBean<>();
		pi.setIndex(pageNumber); // 设置起始页
		pi.setSize(pageSize);// 设置每页行数
		rentService.findRenttable(renttable, pi);
		m.addAttribute("pageRent", pi);
		return "/operatorManager/rentManager.jsp";
	}

	 /**
	  * 获取租车信息 修改用
	  * @param identity
	  * @return
	  */
	 @RequestMapping("findRenttable")
	 public String  findRenttable(String rentid,Model mo){
		Renttable rent = rentService.findById(rentid);
		Car car = carService.findCarByident(rent.getCarid());
		Customer cust = customerService.findCustByident(rent.getCustid());
		mo.addAttribute("cust", cust);
		mo.addAttribute("renttable", rent);
		mo.addAttribute("carinfo", car);
		return "operatorManager/updateRent.jsp";
		
	}
	/**
	 * 修改租车信息
	 * @param use
	 * @return
	 */
	@RequestMapping("updateRent")
	@ResponseBody
	public String updateRent(Renttable rent){
			int result= rentService.updateRent(rent);
		
			if(result>0){
				return "okok";
			}else{
				return "fail";
			}
			
		}
	/**
	 * 获取当月应还车
	 * @param mo
	 * @return
	 */
	@RequestMapping("findNowM")
	 public String  findNowM(Model mo){
		List<Renttable>list= rentService.findNowM();
		mo.addAttribute("list", list);
		return "operatorManager/showReturnNow.jsp";
		
	}
	
	
//	/**
//	 * 删除客户
//	 * @param identity
//	 * @return
//	 */
//	@RequestMapping("delCust")
//	@ResponseBody
//	 public int delCust(String identity){
//		 
//		int result =rentService.delCust(identity);
//			
//			return result;
//			
//		}
	/*
	 * SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd"); 
	 *  Calendar cale = Calendar.getInstance();   
        cale.set(Calendar.DAY_OF_MONTH,0);//设置为1号,当前日期既为本月第一天 
        lastDay = format.format(cale.getTime());
        System.out.println("-----2------lastDay:"+lastDay);
	 */
	
//	
}
