package kr.green.project.vo;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;

public class Reservation2Vo {

	private String rvNum;
	private int ppNum;
	private String rvId;
	private Date rvDate;
	private int rvamount;
	private int totalPrice;
	private String status;
	private String payStatus;
	private String revocable;
	private int paymethod;
	private int roundNum;
	private String revocableDate;
	private int gsCode;
	private String useStart;
	private String useEnd;
	private String useStatus;
	private Date cancelDate;
	private int methodBank;
	private String place;
	private String title; 
	private String name; 

	
	public String getRvNum() {
		return rvNum;
	}
	public void setRvNum(String rvNum) {
		this.rvNum = rvNum;
	}
	public int getPpNum() {
		return ppNum;
	}
	public void setPpNum(int ppNum) {
		this.ppNum = ppNum;
	}
	public String getRvId() {
		return rvId;
	}
	public void setRvId(String rvId) {
		this.rvId = rvId;
	}
	public Date getRvDate() {
		return rvDate;
	}
	public void setRvDate(Date rvDate) {
		this.rvDate = rvDate;
	}
	public int getRvamount() {
		return rvamount;
	}
	public void setRvamount(int rvamount) {
		this.rvamount = rvamount;
	}
	public int getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getPayStatus() {
		return payStatus;
	}
	public void setPayStatus(String payStatus) {
		this.payStatus = payStatus;
	}
	public String getRevocable() {
		return revocable;
	}
	public void setRevocable(String revocable) {
		this.revocable = revocable;
	}
	public int getPaymethod() {
		return paymethod;
	}
	public void setPaymethod(int paymethod) {
		this.paymethod = paymethod;
	}
	public int getRoundNum() {
		return roundNum;
	}
	public void setRoundNum(int roundNum) {
		this.roundNum = roundNum;
	}
	public String getRevocableDate() {
		return revocableDate;
	}
	public void setRevocableDate(String revocableDate) {
		

		SimpleDateFormat  formatter = new SimpleDateFormat("yyyy.MM.dd");    
		Date setDate;
		
		try {
			setDate = formatter.parse(revocableDate);
			Calendar cal = new GregorianCalendar(Locale.KOREA);
			cal.setTime(setDate);
			cal.add(Calendar.DATE, -1);
			String y_date = formatter.format(cal.getTime());
			this.revocableDate = y_date;
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}



	}
	public int getGsCode() {
		return gsCode;
	}
	public void setGsCode(int gsCode) {
		this.gsCode = gsCode;
	}
	public String getUseStart() {
		return useStart;
	}
	public void setUseStart(String useStart) {
		this.useStart = useStart;
	}
	public String getUseEnd() {
		return useEnd;
	}
	public void setUseEnd(String useEnd) {
		this.useEnd = useEnd;
	}
	public String getUseStatus() {
		return useStatus;
	}
	public void setUseStatus(String useStatus) {
		this.useStatus = useStatus;
	}
	public Date getCancelDate() {
		return cancelDate;
	}
	public void setCancelDate(Date cancelDate) {
		this.cancelDate = cancelDate;
	}
	public int getMethodBank() {
		return methodBank;
	}
	public void setMethodBank(int methodBank) {
		this.methodBank = methodBank;
	}
	
	
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Override
	public String toString() {
		return "Reservation2Vo [rvNum=" + rvNum + ", ppNum=" + ppNum + ", rvId=" + rvId + ", rvDate=" + rvDate
				+ ", rvamount=" + rvamount + ", totalPrice=" + totalPrice + ", status=" + status + ", payStatus="
				+ payStatus + ", revocable=" + revocable + ", paymethod=" + paymethod + ", roundNum=" + roundNum
				+ ", revocableDate=" + revocableDate + ", gsCode=" + gsCode + ", useStart=" + useStart + ", useEnd="
				+ useEnd + ", useStatus=" + useStatus + ", cancelDate=" + cancelDate + ", methodBank=" + methodBank
				+ ", place=" + place + ", title=" + title + ", name=" + name + "]";
	}
	
	
	



	
	
	
	
	
}
