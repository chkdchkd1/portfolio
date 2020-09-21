package kr.green.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import kr.green.project.dao.UserDao;
import kr.green.project.vo.UserVo;

@Service
public class UserServiceImp implements UserService {

	@Autowired
	UserDao userDao;
	
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	    

	@Override
	public UserVo getUser(UserVo user) {
		UserVo dbUser = userDao.getUser(user.getId());
		System.out.println(dbUser.getPw());
		if(dbUser.getPw().equals(user.getPw())) 
			return dbUser;
		return null;
	}


	@Override
	public UserVo getUserById(String id) {
		return userDao.getUser(id);
	}


	@Override
	public void signUpUser(UserVo user) {		
		String encodePw = passwordEncoder.encode(user.getPw());
		user.setPw(encodePw);
		userDao.insertUser(user);
	}


	@Override
	public UserVo isSignin(UserVo user) {
		UserVo dbUser = userDao.getUser(user.getId());
		if(dbUser != null && passwordEncoder.matches(user.getPw(),dbUser.getPw()))
			return dbUser;
		return null;
			}


	@Override
	public void modifyUserInfo(UserVo user1) {
		userDao.updateUser(user1);
	}





}
