package com.bjsxt.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.bjsxt.pojo.Car;
import com.bjsxt.pojo.Logs;



public interface LogsMapper {
	//添加日志
	@Insert("insert into logs values"
			+ " (default,#{username},#{action},#{actiontime},#{flag})")
	int add(Logs logs);
	
	/**
	 * 查找总行数
	 * @return
	 */
	@Select("select count(*) from logs ")
	int findCount();
	/**
	 * 根据条件查询
	 * @param logs
	 * @param start
	 * @param size
	 * @return
	 */
	List<Logs> findLogs(@Param("logs")Logs logs,@Param("index")int start,@Param("size")int size);
	
	/**
	 * 获取单个
	 * @param id
	 * @return
	 */
	@Select("select * from logs where id=#{param1}")
	Logs findByNum(int id);
	/**
	 * 删除 
	 * @param id
	 * @return
	 */
	@Delete("delete from logs where id=#{param1}")
	int delById(int id);
	/**
	 * 改
	 */
	
	@Update("update logs set "
			+ " username=#{username},action=#{action},actiontime=#{actiontime}, "
			+ " flag=#{flag}")
	int updateLogs(Logs l);
	
	

}
