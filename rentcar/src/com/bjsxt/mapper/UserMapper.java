package com.bjsxt.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.bjsxt.pojo.User;

public interface UserMapper {
	/**
	 * 通过用户名密码查找
	 * @param u
	 * @return
	 */
	@Select("select * from users where username=#{username} "
			+ " and userpwd=#{userpwd}")
	User selUser(User u);
	@Insert("insert into users values( "
			+ "#{username}, #{identity},#{fullname},#{sex},#{address},#{phone},#{position},#{roleid},#{userpwd})")
	int add(User use);
	/**
	 * 查找总行数
	 * @return
	 */
	@Select("select count(*) from users ")
	int findCount();
	/**
	 * 按条件查找
	 * @param user
	 * @param start
	 * @param size
	 * @return
	 */
	List<User> findUser(@Param("user")User user,@Param("index")int start,@Param("size")int size);
	
	@Select("select * from users where username=#{param1}")
	User findByUsername(String username);
	/**
	 * 修改用户信息
	 * @param use
	 * @return
	 */
	@Update("update users set "
			+ " address=#{address},phone=#{phone},roleid=#{roleid},userpwd=#{userpwd}, "
			+ " position=#{position},sex=#{sex},fullname=#{fullname}"
			+ " where username=#{username}")
	int update(User use);
	/**
	 * 删除管理员  
	 * @param username
	 * @return
	 */
	@Delete("delete from users where username=#{param1}")
	int delUser(String username);
	

}
