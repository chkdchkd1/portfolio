package kr.green.project.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 */
@Controller
public class ReservationController {
	
	private static final Logger logger = LoggerFactory.getLogger(ReservationController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	@RequestMapping(value = "/reservation", method = RequestMethod.GET)
	public ModelAndView reservation(ModelAndView mv) throws Exception{
	    mv.setViewName("/login/ticket");
	    return mv;
	}
	
	@RequestMapping(value = "/myOrder/list", method = RequestMethod.GET)
	public ModelAndView MyreservationList(ModelAndView mv) throws Exception{
	    mv.setViewName("/reservation/resList");
	    return mv;
	}
	
	@RequestMapping(value = "/myOrder/detail", method = RequestMethod.GET)
	public ModelAndView MyreservationDetail(ModelAndView mv) throws Exception{
	    mv.setViewName("/reservation/resDetail");
	    return mv;
	}
	
}
