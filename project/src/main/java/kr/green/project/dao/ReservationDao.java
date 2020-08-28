package kr.green.project.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import kr.green.project.vo.ProductDetailVo;
import kr.green.project.vo.ProductListVo;
import kr.green.project.vo.ProductPriceVo;
import kr.green.project.vo.ProductQuantityVo;
import kr.green.project.vo.ReservationVo;
import kr.green.project.vo.ProductImageVo;

public interface ReservationDao {

	void insertReservation(@Param("reservation")ReservationVo bookMain);



}
