package kr.green.project.vo;

import java.text.SimpleDateFormat;
import java.util.Date;

public class ReservationListVo {
	
	private Date rvDate;
	private String rvNum;
	private String title;
	private Date useStart;
	private Date useEnd;
	private String status;
	private int rvamount;
	private int gsCode;
	private String roundTime;
	
	
	
	public String getRvDate() {
		SimpleDateFormat format1 = new SimpleDateFormat("yyyy.MM.dd");
		String to = format1.format(rvDate);
		return to;
	}
	public void setRvDate(Date rvDate) {
		this.rvDate = rvDate;
	}
	public String getRvNum() {
		return rvNum;
	}
	public void setRvNum(String rvNum) {
		this.rvNum = rvNum;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getUseStart() {
		SimpleDateFormat format1 = new SimpleDateFormat("yyyy.MM.dd");
		String to2 = format1.format(useStart);
		return to2;
	}
	public void setUseStart(Date useStart) {
		this.useStart = useStart;
	}
	public String getUseEnd() {
		SimpleDateFormat format1 = new SimpleDateFormat("yyyy.MM.dd");
		String to3 = format1.format(useEnd);
		return to3;
	}
	public void setUseEnd(Date useEnd) {
		this.useEnd = useEnd;
	}
	public String getStatus() {
		if (status.equals("booking"))
			return "예약";
		else
		return "취소";
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getRvamount() {
		return rvamount;
	}
	public void setRvamount(int rvamount) {
		this.rvamount = rvamount;
	}
	
	public int getGsCode() {
		return gsCode;
	}
	public void setGsCode(int gsCode) {
		this.gsCode = gsCode;
	}
	
	
	public String getRoundTime() {
		return roundTime;
	}
	public void setRoundTime(String roundTime) {
		this.roundTime = roundTime;
	}
	
	@Override
	public String toString() {
		return "ReservationListVo [rvDate=" + rvDate + ", rvNum=" + rvNum + ", title=" + title + ", useStart="
				+ useStart + ", useEnd=" + useEnd + ", status=" + status + ", rvamount=" + rvamount + ", gsCode="
				+ gsCode + ", roundTime=" + roundTime + "]";
	}

	
	
	

}
