package kr.green.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.green.project.dao.UserDao;
import kr.green.project.vo.UserVo;

@Service
public class UserServiceImp implements UserService {

	@Autowired
	UserDao userDao;
	    

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





}
