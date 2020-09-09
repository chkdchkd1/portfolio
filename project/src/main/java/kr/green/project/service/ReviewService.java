package kr.green.project.service;

import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import kr.green.project.vo.Reservation2Vo;
import kr.green.project.vo.ReservationListVo;
import kr.green.project.vo.ReservationVo;
import kr.green.project.vo.ReservedSameVo;
import kr.green.project.vo.ReviewVo;
import kr.green.project.vo.TicketBookVo;

public interface ReviewService {
	
	ReviewVo getReview(String rvNum);

	void registerReivew(HttpServletRequest request, String reviewRvNum, String content);
	
	ArrayList<ReviewVo> getReviewBycode(Integer code);

	int updateLike(int reviewNum, String id);

	ReviewVo getReviewByReviewNum(int reviewNum);



	



}
