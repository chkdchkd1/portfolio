package kr.green.project.service;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.green.project.dao.ReservationDao;
import kr.green.project.vo.ProductDetailVo;
import kr.green.project.vo.ReservationVo;
import kr.green.project.vo.TicketBookVo;

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




}
