package com.bjsxt.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.bjsxt.pojo.Menu;

public interface MenuMapper {
	@Select("select * from menus where  menuid in "
			+ " (select menuid from roles_menus where roleid=#{param1} ) "
			+ " and fatherid =#{param2} ")
	List<Menu> selMenu(int roleid,int fatherid);
	
	@Select("select * from menus where fatherid=#{param1}")
	List<Menu> selAll(int fatherid);
}
