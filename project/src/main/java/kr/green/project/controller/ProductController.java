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
public class ProductController {
	
	private static final Logger logger = LoggerFactory.getLogger(ProductController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/exhibition/list", method = RequestMethod.GET)
	public ModelAndView exList(ModelAndView mv) throws Exception{
	    mv.setViewName("/product/list");
	    return mv;
	}
	
	@RequestMapping(value = "/exhibition/detail", method = RequestMethod.GET)
	public ModelAndView exDetail(ModelAndView mv) throws Exception{
	    mv.setViewName("/product/detail");
	    return mv;
	}
	

	
}
