package kr.green.project.service;

import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.green.project.dao.ReservationDao;
import kr.green.project.vo.ProductDetailVo;
import kr.green.project.vo.Reservation2Vo;
import kr.green.project.vo.ReservationListVo;
import kr.green.project.vo.ReservationVo;
import kr.green.project.vo.ReservedSameVo;
import kr.green.project.vo.ReviewVo;
import kr.green.project.vo.TicketBookVo;
import kr.green.project.vo.UserVo;

@Service
public class ReservationServiceImp implements ReservationService {
	
	@Autowired
	ReservationDao reservationDao;
	
	@Autowired
	ProductService2 productService2;

	@Override
	public void registerReservation(TicketBookVo book, ReservationVo bookMain) {
		
		/*
		 * payStatus=null, (방법이 카드면 결제완료, 무통이면 입금대기) )
		  revocableDate=null, ( 상품코드로 조회해서 상시 상품이면 종료일 하루전 ,
		 * 회차 상품이면 예매일 하루전) useStart=null, (상품코드 조회해서 회차상품이면 예매지정일
		 * (book,finaldate) 상시면 이용시작일 useEnd=null, (/상품코드 조회해서 회차상품이면 예매한날 상시상품이면 이용종료일
		 */
		
		if(bookMain.getPaymethod() == 2) {
			bookMain.setPayStatus("결제완료");
		} else 
			bookMain.setPayStatus("입금대기");
		
		ProductDetailVo product = productService2.getProductDetail(bookMain.getGsCode());
		if(product.getGodType().equals("상시")){
			//상시
			bookMain.setRevocableDate(product.getEndDate());
			bookMain.setUseStart(product.getStartDate());
			bookMain.setUseEnd(product.getEndDate());
			
		}else {
			//회차 
			bookMain.setRevocableDate(book.getFinaldate());
			bookMain.setUseStart(book.getFinaldate());
			bookMain.setUseEnd(book.getFinaldate());
		}
		
			System.out.println(bookMain);
		
			
		reservationDao.insertReservation(bookMain);
		

	}

	@Override
	public int getReserved(int i, String text, int j) {
		// TODO Auto-generated method stub
		return reservationDao.selectReserved(i,text,j);
	}

	@Override
	public ArrayList<ReservationListVo> getReservationList(HttpServletRequest request) {
		UserVo user = (UserVo)request.getSession().getAttribute("user");
		
		return reservationDao.selectReservationList(user.getId());
	}

	@Override
	public Reservation2Vo ReservationDetail(String num) {
		// TODO Auto-generated method stub
		return reservationDao.selectReservationDetail(num);
	}

	@Override
	public ArrayList<ReservedSameVo> getSameTimeReservation(Date rvDate, String rvId, int gsCode) {
		// TODO Auto-generated method stub
		return reservationDao.getSameTimeReservation(rvDate,rvId,gsCode);
	}

	@Override
	public void cancelreservation(String string, HttpServletRequest request) {
		UserVo user = (UserVo)request.getSession().getAttribute("user");
		ReservationVo reservation = reservationDao.selectReservation(string);
		if(user.getId().equals(reservation.getRvId())) {
			reservation.setCancelDate(new Date());
			reservation.setRevocable("unable");
			reservation.setStatus("cancel");
			reservationDao.updateReservation(reservation);
		}
			
	}

	@Override
	public ArrayList<ReservationVo> getReservation(int code, String id) {
		return reservationDao.selectReservationByCode(code,id);
	}

	@Override
	public ArrayList<ReservationVo> getReview(String rvNum) {
		// TODO Auto-generated method stub
		return reservationDao.selectReviewByRvNum(rvNum);
	}

	@Override
	public void registerReivew(HttpServletRequest request, String reviewRvNum, String content) {
		
		UserVo user = (UserVo)request.getSession().getAttribute("user");
		ReviewVo review = new ReviewVo();
		review.setWriter(user.getId());
		review.setContent(content);
		review.setReviewRvNum(reviewRvNum);
		review.setRegisterDate(new Date());
		
		reservationDao.insertReview(review);
		
		
	}

	@Override
	public ArrayList<ReviewVo> getReviewBycode(Integer code) {
		// TODO Auto-generated method stub
		return reservationDao.selectReviewBycode(code);
	}

	

	




}
