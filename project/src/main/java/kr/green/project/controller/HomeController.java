package kr.green.project.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.green.project.service.UserService;
import kr.green.project.vo.UserVo;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	// -> 객체를 생성하는 역할 
	private UserService userService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView home(ModelAndView mv) throws Exception{
	    mv.setViewName("/main/home");

	    
	    return mv;
	}
	
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView loginGet(ModelAndView mv) throws Exception{
	    mv.setViewName("/user/login");
	    return mv;
	}
	

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView loginPost(ModelAndView mv, UserVo user) throws Exception{
		
		UserVo dbUser = userService.getUser(user);
		
		if(dbUser != null ) {
			mv.addObject("user", dbUser);
			mv.setViewName("/main/home");
			//redirect로 가면 (일단 logininterceptor 하기전 addobject가 안된다) setview로 설정한 그곳에서만 ${user}가 먹힘 
		} else {
			mv.setViewName("redirect:/login");
		}
			return mv;
	}
	
	
	@RequestMapping(value = "/logout",method = RequestMethod.GET)
	public ModelAndView logoutGEt(ModelAndView mv, HttpServletRequest request) {
		logger.info("URI:/logout");
		mv.setViewName("redirect:/");
		
		request.getSession().removeAttribute("user");
		
		return mv;
	}
	
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public ModelAndView adminGet(ModelAndView mv) throws Exception{
	    mv.setViewName("/admin/adminMain");
	    return mv;
	}
	
	
	
	
	
	
	
}
