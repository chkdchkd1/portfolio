package kr.green.project.vo;

import java.text.SimpleDateFormat;
import java.util.Date;

public class ReservedSameVo {
	
	private String rvNum;
	private String rvId;
	private Date rvDate;
	private int totalPrice;
	private String revocable;
	private int gsCode;
	private String type;
	private int price;
	private Date cancelDate;
	
	public String getRvNum() {
		return rvNum;
	}
	public void setRvNum(String rvNum) {
		this.rvNum = rvNum;
	}
	public String getRvId() {
		return rvId;
	}
	public void setRvId(String rvId) {
		this.rvId = rvId;
	}
	public String getRvDate() {
		SimpleDateFormat format1 = new SimpleDateFormat("yyyy.MM.dd");
		String to2 = format1.format(rvDate);
		return to2;
	}
	public void setRvDate(Date rvDate) {
		this.rvDate = rvDate;
	}
	public int getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}
	public String getRevocable() {
		return revocable;
	}
	public void setRevocable(String revocable) {
		this.revocable = revocable;
	}
	public int getGsCode() {
		return gsCode;
	}
	public void setGsCode(int gsCode) {
		this.gsCode = gsCode;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getCancelDate() {
		SimpleDateFormat format1 = new SimpleDateFormat("yyyy.MM.dd");
		String to3 = format1.format(cancelDate);
		return to3;
	}
	public void setCancelDate(Date cancelDate) {
		this.cancelDate = cancelDate;
	}
	
	@Override
	public String toString() {
		return "ReservedSameVo [rvNum=" + rvNum + ", rvId=" + rvId + ", rvDate=" + rvDate + ", totalPrice=" + totalPrice
				+ ", revocable=" + revocable + ", gsCode=" + gsCode + ", type=" + type + ", price=" + price
				+ ", cancelDate=" + cancelDate + "]";
	}
	
	
	
	
}
