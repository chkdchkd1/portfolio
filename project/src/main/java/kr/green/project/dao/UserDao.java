package kr.green.project.dao;

import org.apache.ibatis.annotations.Param;

import kr.green.project.vo.UserVo;

public interface UserDao {

	public UserVo getUser(@Param("id")String id);

	public void insertUser(@Param("user")UserVo user);

	public void updateUser(@Param("user")UserVo user1);



}
