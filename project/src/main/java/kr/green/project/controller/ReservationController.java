package kr.green.project.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.green.project.pagination.Criteria;
import kr.green.project.pagination.PageMaker;
import kr.green.project.service.ProductService2;
import kr.green.project.service.ReservationService;
import kr.green.project.vo.ProductDetailVo;
import kr.green.project.vo.ProductImageVo;
import kr.green.project.vo.ProductPriceVo;
import kr.green.project.vo.Reservation2Vo;
import kr.green.project.vo.ReservationListVo;
import kr.green.project.vo.ReservationVo;
import kr.green.project.vo.ReservedSameVo;
import kr.green.project.vo.ReviewVo;
import kr.green.project.vo.TicketBookVo;
import kr.green.project.vo.UserVo;
import kr.green.project.vo.WantResVo;


/**
 * Handles requests for the application home page.
 */
@Controller
public class ReservationController {
	
	private static final Logger logger = LoggerFactory.getLogger(ReservationController.class);
	
	@Autowired
	private ProductService2 productService2;
	
	@Autowired
	private ReservationService reservationService;
	
	@RequestMapping(value = "/reservation", method = RequestMethod.GET)
	public ModelAndView reservation(ModelAndView mv) throws Exception{
	    mv.setViewName("/login/window");
	    return mv;
	}
	
	@RequestMapping(value = "/reservation", method = RequestMethod.POST)
	public ModelAndView reservationPost(ModelAndView mv, WantResVo want ) throws Exception{
		System.out.println(want);
		ProductDetailVo productR = productService2.getProductDetail(want.getSelectCode());
		mv.addObject("productR", productR);
		mv.addObject("want", want);
		ArrayList<ProductPriceVo> priceR = productService2.getPriceList(want.getSelectCode());
		mv.addObject("priceR", priceR);
		System.out.println(priceR);
		ProductImageVo image1 = productService2.getImage2(want.getSelectCode(),1);
		mv.addObject("image1", image1);
	    mv.setViewName("/login/window");
	    return mv;
	}
	
	
	@RequestMapping(value = "/myOrder/list", method = RequestMethod.GET)
	public ModelAndView MyreservationList(ModelAndView mv , HttpServletRequest request,Criteria cri ) throws Exception{
	    mv.setViewName("/reservation/resList");
	    ArrayList<ReservationListVo> list;
	    list = reservationService.getReservationList(request,cri);
	    PageMaker pm = reservationService.getPageMaker(cri,request);
	    mv.addObject("list", list);
	    mv.addObject("pm", pm);
	    return mv;
	}
	
	@RequestMapping(value = "/myOrder/detail", method = RequestMethod.GET)
	public ModelAndView MyreservationDetail(ModelAndView mv, String num) throws Exception{
		
		Reservation2Vo reservedDetail = reservationService.ReservationDetail(num);
		ArrayList<ReservedSameVo> sameTime ;
		sameTime = reservationService.getSameTimeReservation(reservedDetail.getRvDate(),reservedDetail.getRvId(),reservedDetail.getGsCode());
			
		ProductImageVo image2 ; 
		image2 = productService2.getImage2(reservedDetail.getGsCode(),2);
		
		mv.addObject("reservedDetail", reservedDetail);
		mv.addObject("sameTimeList", sameTime);

		mv.addObject("image2", image2);
		
		mv.setViewName("/reservation/resDetail");
	    return mv;
	}
	
	
	@RequestMapping(value = "/myOrder/detail", method = RequestMethod.POST)
	public ModelAndView reservationCancel(ModelAndView mv, String[] chkPartCancel1 ,  HttpServletRequest request) throws Exception{
		
		for (int i=0 ; i<chkPartCancel1.length ; i++) {	
			reservationService.cancelreservation(chkPartCancel1[i], request);
		}
		
		mv.setViewName("redirect:/myOrder/list");
	    return mv;
	}
	
	
	
	@RequestMapping(value ="/ResPriceList")
	@ResponseBody
	public ArrayList<ProductPriceVo> ResPrice(@RequestBody TestVo test){
		System.out.println(test);
		ArrayList<ProductPriceVo> Resprice;
		Resprice = productService2.getResPriceList(test.getCode(),test.getWeekend());
	 	System.out.println(Resprice);
	    return Resprice;
	}
	
	
	@RequestMapping(value = "/ticketBook", method = RequestMethod.POST)
	public ModelAndView ticketBookPost(ModelAndView mv, TicketBookVo book, int[] ppNum, int[] totalPrice , int[] rvamount  ) throws Exception{


		
		for (int i=0 ; i<ppNum.length ; i++) {	
			ReservationVo bookMain  = new ReservationVo();
			// 객체를 먼저 생성 하고 그 객체에 복사 해온 값을 넣어준다 . 
			BeanUtils.copyProperties(book, bookMain);
			bookMain.setPpNum(ppNum[i]);
			bookMain.setTotalPrice(totalPrice[i]);
			bookMain.setRvamount(rvamount[i]);
			System.out.println(bookMain);
			
			reservationService.registerReservation(book,bookMain);
			
		}
		
		ArrayList<ReservationVo> resList = reservationService.getRecetReservation(ppNum.length,book.getRvId());
		System.out.println(resList);
		mv.addObject("resultBook", resList);
	
	    return mv;
	}
	
	

	@RequestMapping(value ="/RecentRes")
	@ResponseBody
	public ArrayList<ReservationVo>  RecentRes(@RequestBody int ticketcount , HttpServletRequest request){
		UserVo user = (UserVo)request.getSession().getAttribute("user");
		ArrayList<ReservationVo> resList = reservationService.getRecetReservation(ticketcount,user.getId());
		System.out.println(resList);
	
		   return resList;

	}
	
	
	
	@RequestMapping(value ="/reservedQuantity")
	@ResponseBody
	public int reservedQuantity(@RequestBody TestVo3 test){
	
	  int reservedSeat = reservationService.getReserved(test.getCode(),test.getDate(),test.getRound());
	  System.out.println(reservedSeat);
		   return reservedSeat;
	
	}
	
	
	
	
	
}



//잠깐 사용할 vo 
class TestVo2{
	
	private int code;
	private int weekend;
	
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
	@Override
	public String toString() {
		return "TestVo2 [code=" + code + ", weekend=" + weekend + "]";
	}


}

class TestVo3{
	
	private int code;
	private int round;
	private String date;
	
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public int getRound() {
		return round;
	}
	public void setRound(int round) {
		this.round = round;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	@Override
	public String toString() {
		return "TestVo3 [code=" + code + ", round=" + round + ", date=" + date + "]";
	}
	
	
}



