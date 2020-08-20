package kr.green.project.vo;

import java.util.Date;

public class product1Vo {
	//상품-가격-수량
	private int code;
	private String startDate;
	private String endDate;
	private String place;
	private String limitType;
	private int limitAmount;
	private String Type;
	private int price;
//	private String qType;
//	private String round;
//	private int quantity;
//	private String goodsType;
	
	
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
	public String getLimitType() {
		return limitType;
	}
	public void setLimitType(String limitType) {
		this.limitType = limitType;
	}
	public int getLimitAmount() {
		return limitAmount;
	}
	public void setLimitAmount(int limitAmount) {
		this.limitAmount = limitAmount;
	}
	public String getType() {
		return Type;
	}
	public void setType(String type) {
		Type = type;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
//	public String getqType() {
//		return qType;
//	}
//	public void setqType(String qType) {
//		this.qType = qType;
//	}
//	public String getRound() {
//		return round;
//	}
//	public void setRound(String round) {
//		this.round = round;
//	}
//	public int getQuantity() {
//		return quantity;
//	}
//	public void setQuantity(int quantity) {
//		this.quantity = quantity;
//	}
//	public String getGoodsType() {
//		return goodsType;
//	}
//	public void setGoodsType(String goodsType) {
//		this.goodsType = goodsType;
//	}
//	
//	@Override
//	public String toString() {
//		return "product1Vo [code=" + code + ", startDate=" + startDate + ", endDate=" + endDate + ", place=" + place
//				+ ", limitType=" + limitType + ", limitAmount=" + limitAmount + ", Type=" + Type + ", price=" + price
//				+ ", qType=" + qType + ", round=" + round + ", quantity=" + quantity + ", goodsType=" + goodsType + "]";
//	}
//	
	@Override
	public String toString() {
		return "product1Vo [code=" + code + ", startDate=" + startDate + ", endDate=" + endDate + ", place=" + place
				+ ", limitType=" + limitType + ", limitAmount=" + limitAmount + ", Type=" + Type + ", price=" + price
				+ "]";
	}
	
	
	

	
	

	
	
}
