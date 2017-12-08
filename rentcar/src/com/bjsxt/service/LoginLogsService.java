package com.bjsxt.service;



import com.bjsxt.pojo.LoginLogs;
import com.bjsxt.pojo.PageBean;

public interface LoginLogsService {
	
	
	/**
	 * 添加
	 * @param 
	 * @return
	 */
	
	public int addLoginLogs(LoginLogs loginLogs);
	
	/**
	 * 查询全部信息
	 * @param 
	 * @param 
	 * @return
	 */
	
	
	public PageBean<LoginLogs> findLoginLogs(LoginLogs loginLogs,PageBean<LoginLogs> pi);
	
	
	/**
	 * 删除 
	 * @param loginlogid
	 * @return
	 */
	
	public int delloginlog(int loginlogid);
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
