package com.bjsxt.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.bjsxt.pojo.LoginLogs;
import com.bjsxt.pojo.Logs;



public interface LoginLogsMapper {

	//添加登录信息
	@Insert("insert into loginlogs values"
			+ " (default,#{loginname},#{loginip},#{logintime})")
	int add(LoginLogs loginLogs);
	
	
	/**
	 * 查找总行数
	 * @return
	 */
	@Select("select count(*) from loginlogs ")
	int findCount();
	/**
	 * 获取全部信息
	 * @param 
	 * @param 
	 * @param 
	 * @return
	 */
	List<LoginLogs> findLoginLogs(@Param("loginLogs")LoginLogs loginLogs,@Param("index")int start,@Param("size")int size);
	/**
	 * 删除 
	 * @param loginlogid
	 * @return
	 */
	@Delete("delete from loginlogs where loginlogid=#{param1}")
	int delByloginlogid(int loginlogid);
	
}
