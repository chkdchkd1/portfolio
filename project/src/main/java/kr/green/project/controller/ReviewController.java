package kr.green.project.controller;

import java.util.ArrayList;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


import kr.green.project.service.ReservationService;
import kr.green.project.service.ReviewService;
import kr.green.project.vo.ReservationVo;
import kr.green.project.vo.ReviewVo;
import kr.green.project.vo.UserVo;

/**
 * Handles requests for the application home page.
 */
@Controller
public class ReviewController {
	
	private static final Logger logger = LoggerFactory.getLogger(ReviewController.class);

	
	@Autowired
	private ReservationService reservationService;
	
	@Autowired
	private ReviewService reviewService;


	@RequestMapping(value ="/openReview")
	@ResponseBody
	public  ArrayList<ReservationVo> openReview(@RequestBody int code , HttpServletRequest request){ 		
		
	    UserVo user = (UserVo)request.getSession().getAttribute("user");
	    ArrayList<ReservationVo> reservation = reservationService.getReservation(code,user.getId());
		    return reservation;
	
	}
	
	@RequestMapping(value ="/checkReview")
	@ResponseBody
	public  ReviewVo checkReview(@RequestBody String rvNum){ 		
		// 리뷰 vo만들어서 예약번호로 읽어오는거 해야함 이어서~ 리뷰 중복막는거 
	    ReviewVo reservation = reviewService.getReview(rvNum);
	
		    return reservation;
	
	}
	
	@RequestMapping(value ="/registerReview")
	@ResponseBody
	public int registerReview(@RequestBody @RequestParam String reviewRvNum, @RequestParam String content, HttpServletRequest request){ 		
		reviewService.registerReivew(request,reviewRvNum,content);
		return 1;
	
	}
	
	@RequestMapping(value ="/getReviewList")
	@ResponseBody
	public ArrayList<ReviewVo> getReviewList(@RequestBody int code){ 		

		ArrayList<ReviewVo> reviewList = reviewService.getReviewBycode(code);
		return reviewList;
	
	}
	
	
	@RequestMapping(value ="/upLike" , method = RequestMethod.POST)
	@ResponseBody
	public Map<Object, Object> upLike(@RequestBody int reviewNum, HttpServletRequest request){ 		

		System.out.println(reviewNum);
		Map<Object, Object> map = new HashMap<Object, Object>();
		UserVo user = (UserVo)request.getSession().getAttribute("user");
		if(user == null) {
			map.put("usercheck",false);
		}else {
			map.put("usercheck",true);
			int like = reviewService.updateLike(reviewNum, user.getId());
			map.put("likeNum",like);
		}
		return map;
	
	}
	
	
	@RequestMapping(value ="/getReview" , method = RequestMethod.POST)
	@ResponseBody
	public ReviewVo getReview(@RequestBody int reviewNum){ 		
		System.out.println(reviewNum);
		ReviewVo review = reviewService.getReviewByReviewNum(reviewNum);
		return review;
	
	}
	
	@RequestMapping(value ="/updateReview" , method = RequestMethod.POST)
	@ResponseBody
	public int updateReview(@RequestBody ReviewVo review){
		
		reviewService.updateReview(review);
		
		return 1;
	
	}
	
	@RequestMapping(value ="/removeReview" , method = RequestMethod.POST)
	@ResponseBody
	public int removeReview(@RequestBody int reviewNum){
		
		reviewService.removeReview(reviewNum);
		
		return 1;
	
	}
	
	
	
	
	
	
	
}





