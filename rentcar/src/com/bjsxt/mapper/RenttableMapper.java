package com.bjsxt.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.bjsxt.pojo.Renttable;


public interface RenttableMapper {
	
	@Insert("insert into renttable values"
			+ " (#{rentid},#{imprest},#{shouldpaypric},"
			+ "#{price},#{begindate},#{shouldreturndate},#{returndate},#{rentflage},#{custid}"
			+ ",#{carid},#{username})")
	int add(Renttable renttable);
	
	/**
	 * 查找总行数
	 * @return
	 */
	@Select("select count(*) from renttable ")
	int findCount();
	/**
	 * 根据条件查询
	 * @param renttable
	 * @param start
	 * @param size
	 * @return
	 */
	//List<Renttable> findRenttable(@Param("renttable")Renttable renttable,@Param("index")int start,@Param("size")int size);
	List<Renttable> findRenttable(Renttable renttable);
	/**
	 * 获取单个
	 * @param rentid
	 * @return
	 */
	@Select("select * from renttable where rentid=#{param1}")
	Renttable findByNum(String rentid);
	/**
	 * 修改
	 * @param renttable
	 * @return
	 */
	@Update("update renttable set "
			+ " imprest=#{imprest},shouldpaypric=#{shouldpaypric},price=#{price}, "
			+ " begindate=#{begindate},shouldreturndate=#{shouldreturndate},"
			+ " returndate=#{returndate},rentflage=#{rentflage},custid=#{custid},carid=#{carid},username=#{username} "
			+ " where rentid=#{rentid}")
	int updateRenttable(Renttable renttable);

	/**
	 * 删除 
	 * @param rentid
	 * @return
	 */
	@Delete("delete from renttable where rentid=#{param1}")
	int delByIdent(String rentid);
	/**
	 * 还车
	 * @param rentid
	 * @return
	 */
	@Update("update renttable set rentflage=1 where rentid=#{param1}")
	int updateReturn(String rentid);
	
//	SELECT * FROM user_event WHERE DATE_FORMAT(create_time,'%Y-%m') = DATE_FORMAT(NOW(),'%Y-%m')
	@Select("select * from renttable where  DATE_FORMAT(shouldreturndate,'%Y-%m')"
			+ "= DATE_FORMAT(NOW(),'%Y-%m') and rentflage=0")
	List<Renttable> selNow();

}
