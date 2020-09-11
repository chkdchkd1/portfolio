package kr.green.project.service;

import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import kr.green.project.pagination.Criteria;
import kr.green.project.pagination.PageMaker;
import kr.green.project.vo.Reservation2Vo;
import kr.green.project.vo.ReservationListVo;
import kr.green.project.vo.ReservationVo;
import kr.green.project.vo.ReservedSameVo;
import kr.green.project.vo.ReviewVo;
import kr.green.project.vo.TicketBookVo;

public interface ReservationService {

	void registerReservation(TicketBookVo book, ReservationVo bookMain);

	int getReserved(int i, String text, int j);

	ArrayList<ReservationListVo> getReservationList(HttpServletRequest request, Criteria cri);

	Reservation2Vo ReservationDetail(String num);

	ArrayList<ReservedSameVo> getSameTimeReservation(Date date, String rvId, int gsCode);

	void cancelreservation(String string, HttpServletRequest request);

	ArrayList<ReservationVo> getReservation(int code, String id);

	PageMaker getPageMaker(Criteria cri, HttpServletRequest request);



}
