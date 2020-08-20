package kr.green.project.dao;

import org.apache.ibatis.annotations.Param;

import kr.green.project.vo.UserVo;
import kr.green.project.vo.product1Vo;

public interface UserDAO {

	public UserVo getUser(@Param("id")String id);

	public void insertP(@Param("product")product1Vo p1);

	public void insertpp(@Param("product")product1Vo p1);

}
