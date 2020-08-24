package kr.green.project.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.green.project.service.ProductService2;
import kr.green.project.vo.ProductDetailVo;
import kr.green.project.vo.ProductImageVo;
import kr.green.project.vo.ProductListVo;
import kr.green.project.vo.ProductPriceVo;
import kr.green.project.vo.ProductQuantityVo;
import kr.green.project.controller.TestVo;

/**
 * Handles requests for the application home page.
 */
@Controller
public class ProductController {
	
	private static final Logger logger = LoggerFactory.getLogger(ProductController.class);
//	
	
	@Autowired
	private ProductService2 productService2;
//	
	@RequestMapping(value = "/exhibition/list", method = RequestMethod.GET)
	public ModelAndView exList(ModelAndView mv) throws Exception{
	    mv.setViewName("/product/list");
	    ArrayList<ProductListVo> list;
	    list = productService2.getProductList();
	    mv.addObject("list", list);
	    
	    return mv;
	}
	
	@RequestMapping(value = "/exhibition/detail", method = RequestMethod.GET)
	public ModelAndView exDetail(ModelAndView mv, Integer code) throws Exception{
		ProductDetailVo productD = productService2.getProductDetail(code);
		
		ArrayList<ProductPriceVo> price;
		price = productService2.getPriceList(code);
		
		
		ProductImageVo image2 , image3;
		image2 = productService2.getImage2(code,2);
		image3 = productService2.getImage2(code,3);
		
	
		mv.addObject("productD", productD);
		mv.addObject("pList", price);
		mv.addObject("image2", image2);
		mv.addObject("image3", image3);

	    mv.setViewName("/product/detail");
	    
	    return mv;
	}
	
	
	@RequestMapping(value ="/quantity")
	@ResponseBody
	public ArrayList<ProductQuantityVo> quantity(@RequestBody TestVo test){
		ArrayList<ProductQuantityVo> quantity;
		quantity = productService2.getQuantity(test.getCode(),test.getWeekend());
	    return quantity;
	}
	
	
	@RequestMapping(value ="/quantityNum")
	@ResponseBody
	public ArrayList<ProductQuantityVo> quantityNum(@RequestBody TestVo test){
		System.out.println(test);
		ArrayList<ProductQuantityVo> quantity;
		quantity = productService2.getQuantityNum(test.getCode(),test.getWeekend(),test.getRound());
	 	System.out.println(quantity);
	    return quantity;
	}
	

	
	
	
}



//잠깐 사용할 vo 
class TestVo{
	
	private int code;
	private int weekend;
	private String round;
	
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public int getWeekend() {
		return weekend;
	}
	public void setWeekend(int weekend) {
		this.weekend = weekend;
	}
	public String getRound() {
		return round;
	}
	public void setRound(String round) {
		this.round = round;
	}
	
	@Override
	public String toString() {
		return "TestVo [code=" + code + ", weekend=" + weekend + ", round=" + round + "]";
	}
	
	
	
	
	

	
}
