package kr.green.project.service;

import kr.green.project.vo.UserVo;

public interface UserService {

	public UserVo getUser(UserVo user);

	public UserVo getUserById(String id);

	public void signUpUser(UserVo user);

	public UserVo isSignin(UserVo user);

	public void modifyUserInfo(UserVo user1);


}
