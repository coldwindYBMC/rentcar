package com.bjsxt.annotation;

import java.lang.reflect.Method;
import java.sql.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


import org.apache.log4j.Logger;
import org.apache.log4j.spi.LoggerFactory;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.bjsxt.pojo.Logs;
import com.bjsxt.pojo.User;
import com.bjsxt.service.LogsService;



@Aspect
@Component
public class SystemLogAspect {
	private static final Logger logger=Logger.getLogger(SystemLogAspect.class);
	//设置切点
	@Resource
	private LogsService logsService;
	@Pointcut("execution (* com.bjsxt.controller.*.*(..))")
	public void controllerAspect(){
		
	}
	//后置通知
	@After("controllerAspect()")
	public void doAfter(JoinPoint joinPoint){
		HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes())
				.getRequest();
		HttpSession session = request.getSession();
		// 读取session中的用户 //待实现
		User user = (User) session.getAttribute("user");

		// 请求的IP
		String ip = request.getRemoteAddr();
		try {
			// *========控制台输出=========*//
//			System.out.println("=====后置通知开始=====");
			System.out.println("请求方法:"+(joinPoint.getTarget().getClass().getName()+ "." + joinPoint.getSignature().getName() + "()"));
			/*System.out.println("请求人:" + user.getFullname());
			System.out.println("请求IP:" + ip);*/
			// *========数据库=========*//
			Logs log=new Logs();
			log.setUsername(user.getUsername());
			log.setAction(getServiceMethodDescription(joinPoint));   // 描述信息
			log.setActiontime(new Date(System.currentTimeMillis()).toString());
			logsService.addLogs(log);
			System.out.println(log);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			logger.error("==后置通知异常==");
			logger.error("异常信息:{}"+ e.getMessage());
		}
		
	}
	
	public static String getServiceMethodDescription(JoinPoint joinPoint) throws ClassNotFoundException{
		String targetName=joinPoint.getTarget().getClass().getName();
		String methodName=joinPoint.getSignature().getName();
		Object[] arg = joinPoint.getArgs();
		Class<?> targetClass = Class.forName(targetName);
		Method[] methods = targetClass.getMethods();
		String description="";
		for (Method method : methods) {
			if(method.getName().equals(methodName)){
				Class<?>[] clazzs = method.getParameterTypes();
				if(clazzs.length==arg.length){
					description=method.getAnnotation(SystemLog.class).description(); //添加描述
					break;
				}
			}
		}
		return description;
		
		
	}
	
	
}
