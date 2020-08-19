package kr.green.project.dao;

import org.apache.ibatis.annotations.Param;

import kr.green.project.vo.UserVo;

public interface UserDAO {

	public UserVo getUser(@Param("id")String id);

}
