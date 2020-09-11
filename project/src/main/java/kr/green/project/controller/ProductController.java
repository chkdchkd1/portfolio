package kr.green.project.controller;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kr.green.project.pagination.Criteria;
import kr.green.project.pagination.PageMaker;
import kr.green.project.service.ProductService2;
import kr.green.project.service.ReservationService;
import kr.green.project.service.ReviewService;
import kr.green.project.utils.UploadFileUtils;
import kr.green.project.vo.ProductDetailVo;
import kr.green.project.vo.ProductImageVo;
import kr.green.project.vo.ProductListVo;
import kr.green.project.vo.ProductPriceVo;
import kr.green.project.vo.ProductQuantityVo;
import kr.green.project.vo.ProductRegisterVo;
import kr.green.project.vo.ReviewVo;

/**
 * Handles requests for the application home page.
 */
@Controller
public class ProductController {
	
	private static final Logger logger = LoggerFactory.getLogger(ProductController.class);
//	
	
	@Autowired
	private ProductService2 productService2;
	
	@Autowired
	private ReservationService reservationService;
	
	@Autowired
	private ReviewService reviewService;
	
	
//	@Resource
	private String uploadPath = "C:\\Users\\Administrator\\Desktop\\upload";
//	
	@RequestMapping(value = "/exhibition/list", method = RequestMethod.GET)
	public ModelAndView exList(ModelAndView mv, Criteria cri) throws Exception{
	    mv.setViewName("/product/list");
	    ArrayList<ProductListVo> list;
	    list = productService2.getProductList(cri);
	    PageMaker pm = productService2.getPageMaker(cri);
	    mv.addObject("list", list);
		mv.addObject("pm", pm);
	    
	    return mv;
	}
	
	@RequestMapping(value = "/goodsDetail", method = RequestMethod.GET)
	public ModelAndView exDetail(ModelAndView mv, Integer code) throws Exception{
		ProductDetailVo productD = productService2.getProductDetail(code);
		
		ArrayList<ProductPriceVo> price;
		price = productService2.getPriceList(code);
		
		ProductImageVo image2 , image3;
		image2 = productService2.getImage2(code,2);
		image3 = productService2.getImage2(code,3);
		
		ArrayList<ReviewVo> review = reviewService.getReviewBycode(code);
		int reviewCount = reviewService.getReviewCount(code);
	
		mv.addObject("productD", productD);
		mv.addObject("pList", price);
		mv.addObject("image2", image2);
		mv.addObject("image3", image3);
		mv.addObject("review", review);
		mv.addObject("reviewCount", reviewCount);


	    mv.setViewName("/product/detail");
	    
	    return mv;
	}
	
	@RequestMapping(value = "/event/list", method = RequestMethod.GET)
	public ModelAndView eventList(ModelAndView mv, Criteria cri) throws Exception{
	    mv.setViewName("/product/list");
	    ArrayList<ProductListVo> list;
	    list = productService2.getProductList2(cri);
	    PageMaker pm = productService2.getPageMaker2(cri);
	    
	    mv.addObject("list", list);
	    mv.addObject("pm", pm);
	    
	    return mv;
	}
	
	
	@RequestMapping(value = "/admin/registerProduct", method = RequestMethod.GET)
	public ModelAndView registerProductGet(ModelAndView mv) throws Exception{
	    mv.setViewName("/product/registerProduct");
	    return mv;
	}
	
	@RequestMapping(value = "/admin/registerProduct", method = RequestMethod.POST)
	public ModelAndView registerProductPost(ModelAndView mv, ProductRegisterVo register, int[] kinds, int[] price, String[] Type, 
			int[] qType, String[] goodsType, String[] round, String[] roundTime, int[] quantity, MultipartFile[] file1) throws Exception{
		

		productService2.registerProduct(register);
		
		//가격등록
		 for (int i=0 ; i<kinds.length ; i++) {
			ProductPriceVo pprice = new ProductPriceVo();
			 pprice.setGooCode(register.getCode());
			 pprice.setKinds(kinds[i]);
			 pprice.setType(Type[i]);
			 pprice.setPrice(price[i]);
			 System.out.println(pprice);
			 productService2.registerPrice(pprice);
		 }

		 //수량 등록하기 
		 for (int i=0 ; i<qType.length ; i++) {
				ProductQuantityVo pQuantity = new ProductQuantityVo();
				 pQuantity.setgCode(register.getCode());
				 pQuantity.setqType(qType[i]);
				 pQuantity.setRound(round[i]);
				 pQuantity.setQuantity(quantity[i]);
				 pQuantity.setGoodsType(goodsType[i]);
				 if(goodsType[i].equals("상시")) {
					 pQuantity.setRoundTime(null);
				 }else {
					 pQuantity.setRoundTime(roundTime[i]);
				 }
				 productService2.registerQuantity(pQuantity);  
			 }

	 // 등록후 상폼코드로 infoNum 조회해서 넣기 
		  for(int i=0; i<file1.length; i++) { 
			 ProductImageVo image = new ProductImageVo();
		     String imageName = UploadFileUtils.uploadFile(uploadPath,file1[i].getOriginalFilename(), file1[i].getBytes());
		     image.setFile(imageName);
		     image.setpLocation(i+1);
		     productService2.registerImage(image,register.getCode());
	     }
		
	    mv.setViewName("redirect:/exhibition/list");
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
		if(test.getRound().equals("상시")) {
			test.setRound("상시상품");
		}
		ArrayList<ProductQuantityVo> quantity;
		quantity = productService2.getQuantityNum(test.getCode(),test.getWeekend(),test.getRound());
	 	System.out.println(quantity);
	    return quantity;
	}
	
	
	// 검색 결과 
	
	
	@RequestMapping(value ="/goods")
	public ModelAndView searchResult(ModelAndView mv, Criteria cri){
	
		ArrayList<ProductListVo> resultList = productService2.getSearchResultfromProduct(cri);
	
		PageMaker pm = productService2.getPageMaker3(cri);

		mv.addObject("resultList", resultList);
		mv.addObject("pm", pm);

		mv.setViewName("/product/searchresult");
		System.out.println(resultList);
	    return mv;
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



