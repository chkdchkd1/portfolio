package kr.green.project.service;

import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.green.project.dao.ReviewDao;

import kr.green.project.vo.ReviewVo;
import kr.green.project.vo.UserVo;

@Service
public class ReviewServiceImp implements ReviewService {
	
	@Autowired
	ReviewDao reviewDao;
	
	
	@Override
	public ReviewVo getReview(String rvNum) {
		// TODO Auto-generated method stub
		return reviewDao.selectReviewByRvNum(rvNum);
	}


	@Override
	public void registerReivew(HttpServletRequest request, String reviewRvNum, String content) {
	
		UserVo user = (UserVo)request.getSession().getAttribute("user");
		ReviewVo review = new ReviewVo();
		review.setWriter(user.getId());
		review.setContent(content);
		review.setReviewRvNum(reviewRvNum);
		
		reviewDao.insertReview(review);
		
	}


	@Override
	public ArrayList<ReviewVo> getReviewBycode(Integer code) {
		return reviewDao.selectReviewBycode(code);
	}


	@Override
	public int updateLike(int reviewNum, String id) {
		// 이미 좋아요 누른 적이 있는 회원인지 확인 
		if( reviewDao.selectReviewLike(reviewNum,id) == 0) {
			reviewDao.insertReviewLike(reviewNum,id);
		} else {
			return -1;
		}
		//reviewLike 테이블에서 같은 게시글번호를 가진것들을 세서 review 테이블의 like에 없데이트 해줌 
		reviewDao.updateReviewBylike(reviewNum);
		ReviewVo review = reviewDao.selectReviewByreviewNum(reviewNum);
		
		return review.getLike();
	}


	@Override
	public ReviewVo getReviewByReviewNum(int reviewNum) {
		return reviewDao.selectReviewByreviewNum(reviewNum);
	}



	@Override
	public void updateReview(ReviewVo review) {
		
		ReviewVo review1 = reviewDao.selectReviewByRvNum(review.getReviewRvNum());
		review1.setIsModify('Y');
		review1.setContent(review.getContent());
		reviewDao.updateReview(review1);
		
		
	}


	@Override
	public void removeReview(int reviewNum) {
		ReviewVo removeReview = reviewDao.selectReviewByreviewNum(reviewNum);
		removeReview.setIsDel('Y');
		removeReview.setDelDate(new Date());
		reviewDao.updateReview(removeReview);
		
	}


	@Override
	public int getReviewCount(Integer code) {
		return reviewDao.selectReviewCount(code);
	}


	
	



}
