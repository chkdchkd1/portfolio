package kr.green.project.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
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
	    System.out.println(id);
	    return map;
	}
	
	
	@RequestMapping(value = "/signUp", method = RequestMethod.POST)
	public ModelAndView signUpPost(ModelAndView mv, UserVo user) throws Exception{
		System.out.println(user);
	    mv.setViewName("/user/signUp");
	    return mv;
	}
	
	/*
	 * ->
	
		-> 회원가입/ 회원정보 수정 / 비밀번호 암호화
		-> 관리자나 로그인 한 회원이 아니경우 alert 하고 redirect 하는거 하기 
		-> 탭 메뉴에 따라 화면 이동 (o) 
		-> 예매페이지 더 꾸미기
		-> 상품 관리 상품 상세정보 수정할 수 있도록 
		-> 상품등록 유의사항 정보 썸머노트로 넣기 (마지막) 
		-> 카테고리별 상품 정렬 
		-> 비밀번호 암호화
		 
	 */
	
	/*onclick="jsf_mgz_logincheck(1,19007, this);"<- 컨트롤러 말고 jsp 에서 이러식*/
	
	
	
	
}
