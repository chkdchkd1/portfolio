package kr.green.project.dao;

import java.util.ArrayList;
import java.util.Date;

import org.apache.ibatis.annotations.Param;

import kr.green.project.pagination.Criteria;
import kr.green.project.vo.Reservation2Vo;
import kr.green.project.vo.ReservationListVo;
import kr.green.project.vo.ReservationVo;
import kr.green.project.vo.ReservedSameVo;
import kr.green.project.vo.ReviewVo;


public interface ReservationDao {

	void insertReservation(@Param("reservation")ReservationVo bookMain);

	int selectReserved(@Param("code")int i, @Param("date")String parameter2, @Param("round")int j);

	ArrayList<ReservationListVo> selectReservationList(@Param("user")String id, @Param("cri")Criteria cri);

	Reservation2Vo selectReservationDetail(@Param("num")String num);

	ArrayList<ReservedSameVo> getSameTimeReservation(@Param("rvdate")Date rvDate, @Param("user")String rvId, @Param("code")int gsCode);

	ReservationVo selectReservation(@Param("rvNum")String string);

	void updateReservation(@Param("reservation")ReservationVo reservation);

	ArrayList<ReservationVo> selectReservationByCode(@Param("code")int code, @Param("user")String id);

	int selectCountReservation(@Param("user")String string);

	ArrayList<ReservationVo> selectRecentRes(@Param("length")int length, @Param("id")String rvId);


	



}
