package kr.green.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.green.project.dao.UserDAO;
import kr.green.project.vo.UserVo;
import kr.green.project.vo.product1Vo;

@Service
public class UserServiceImp implements UserService {

	@Autowired
	UserDAO userDao;
	    

	@Override
	public UserVo getUser(UserVo user) {
		UserVo dbUser = userDao.getUser(user.getId());
		System.out.println(dbUser.getPw());
		if(dbUser.getPw().equals(user.getPw())) 
			return dbUser;
		return null;
	}


	@Override
	public void registerP(product1Vo p1) {
		userDao.insertP(p1);
		userDao.insertpp(p1);
		
	}


}
