package com.bjsxt.service;


import com.bjsxt.pojo.Logs;
import com.bjsxt.pojo.PageBean;

public interface LogsService {

	/**
	 * 添加
	 * @param logs
	 * @return
	 */
	
	public int addLogs(Logs logs);
	/**
	 * 查询日志信息
	 * @param logs
	 * @param pi
	 * @return
	 */
	
	
	public PageBean<Logs> findLogs(Logs logs,PageBean<Logs> pi);
	/**
	 * 通过ID查询
	 * @param id
	 * @return
	 */
	public Logs findId(int id);
	/**
	 * 修改
	 * @param l
	 * @return
	 */
	public int updateLogs(Logs l);
	/**
	 * 删除
	 * @param id
	 * @return
	 */
	public int delLogs(int id);
	
}
