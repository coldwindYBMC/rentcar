package com.bjsxt.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.bjsxt.pojo.Customer;
import com.bjsxt.pojo.Menu;
import com.bjsxt.pojo.User;

public interface CustomerMapper {
	//添加新的消费者
	@Insert("insert into customers values"
			+ " (#{identity},#{custname},#{sex},#{address},#{phone},#{career},#{custpwd})")
	int add(Customer customer);
	/**
	 * 查找总行数
	 * @return
	 */
	@Select("select count(*) from customers ")
	int findCount();
	/**
	 * 根据条件查询
	 * @param customer
	 * @param start
	 * @param size
	 * @return
	 */
	List<Customer> findCustomer(@Param("customer")Customer customer,@Param("index")int start,@Param("size")int size);
	/**
	 * 获取单个
	 * @param identity
	 * @return
	 */
	@Select("select * from customers where identity=#{param1}")
	Customer findByIdent(String identity);
	/**
	 * 修改
	 * @param cust
	 * @return
	 */
	@Update("update customers set "
			+ " address=#{address},phone=#{phone},custpwd=#{custpwd}, "
			+ " career=#{career},sex=#{sex},custname=#{custname} "
			+ " where identity=#{identity}")
	int updateCust(Customer cust);

	/**
	 * 删除 
	 * @param identity
	 * @return
	 */
	@Delete("delete from customers where identity=#{param1}")
	int delByIdent(String identity);

}