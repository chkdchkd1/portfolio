package kr.green.project.service;

import kr.green.project.vo.ReservationVo;
import kr.green.project.vo.TicketBookVo;

public interface ReservationService {

	void registerReservation(TicketBookVo book, ReservationVo bookMain);



}
