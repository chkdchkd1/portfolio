package kr.green.project.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
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
	
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	
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
		
		UserVo dbUser = userService.isSignin(user);
		
		if(dbUser != null ) {
			mv.addObject("user", dbUser);
			mv.setViewName("redirect:/");
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
	
	
	
	
	@RequestMapping(value = "/signUp", method = RequestMethod.GET)
	public ModelAndView signUpGet(ModelAndView mv) throws Exception{
	    mv.setViewName("/user/signUp");
	    return mv;
	}
	
	//아이디 중복검사 
	@RequestMapping(value ="/idCheck")
	@ResponseBody
	public Map<Object, Object> idcheck(@RequestBody String id){
	    Map<Object, Object> map = new HashMap<Object, Object>();
	    if(userService.getUserById(id) != null)
	        map.put("isId", false);
	    else
	    	map.put("isId", true);
	    return map;
	}
	
	//회원가입
	@RequestMapping(value = "/signUp", method = RequestMethod.POST)
	public ModelAndView signUpPost(ModelAndView mv, UserVo user) throws Exception{
		System.out.println(user);
		userService.signUpUser(user);
	    mv.setViewName("redirect:/login");
	    return mv;
	}
	
	
	@RequestMapping(value = "/modifyMyInfo", method = RequestMethod.GET)
	public ModelAndView modifyUserinfo(ModelAndView mv, HttpServletRequest request) throws Exception{
		UserVo user = (UserVo)request.getSession().getAttribute("user");
		if (user != null ) {
		    mv.setViewName("/user/modifyUser");
		    mv.addObject("user", user);
		} else
			mv.setViewName("redirect:/");
	    return mv;
	}
	
	
	//아이디 중복검사 
		@RequestMapping(value ="/pwCheck")
		@ResponseBody
		public Map<Object, Object> pwcheck(@RequestBody UserVo user){
			System.out.println(user);
			
			  Map<Object, Object> map = new HashMap<Object, Object>();
			  if(userService.isSignin(user) == null) 
				  map.put("isCheck", false); 
			  else
				  map.put("isCheck", true); 
			  
			  return map;
			 
		}
	
		@RequestMapping(value = "/modifyMyInfo", method = RequestMethod.POST)
		public ModelAndView modifyUserinfoPost(ModelAndView mv, UserVo user1, HttpServletRequest request) throws Exception{
			UserVo user = (UserVo)request.getSession().getAttribute("user");
			if(user.getId().equals(user1.getId())) {
				userService.modifyUserInfo(user1);
				mv.setViewName("redirect:/modifyMyInfo");
			} else
				mv.setViewName("redirect:/");
			
		    return mv;
		}
	
	
	
	
}
