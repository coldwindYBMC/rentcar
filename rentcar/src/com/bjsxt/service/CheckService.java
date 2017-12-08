package com.bjsxt.service;

import com.bjsxt.pojo.Checktable;
import com.bjsxt.pojo.PageBean;

public interface CheckService {

	public int addCheck(Checktable checktable);
	/**
	 * 查询检查单
	 * @param checktable
	 * @param pi
	 */
	public void findCheck(Checktable checktable, PageBean<Checktable> pi);

}
