package kr.green.project.vo;

public class ProductQuantityVo {
	
	private int qNum;
	private int gCode;
	private int qType;
	private String round;
	private String roundTime;
	private int quantity;
	private String goodsType;
	
	public int getqNum() {
		return qNum;
	}
	public void setqNum(int qNum) {
		this.qNum = qNum;
	}
	public int getgCode() {
		return gCode;
	}
	public void setgCode(int gCode) {
		this.gCode = gCode;
	}
	public int getqType() {
		return qType;
	}
	public void setqType(int qType) {
		this.qType = qType;
	}
	public String getRound() {
		return round;
	}
	public void setRound(String round) {
		this.round = round;
	}
	public String getRoundTime() {
		return roundTime;
	}
	public void setRoundTime(String roundTime) {
		this.roundTime = roundTime;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getGoodsType() {
		return goodsType;
	}
	public void setGoodsType(String goodsType) {
		this.goodsType = goodsType;
	}
	@Override
	public String toString() {
		return "ProductQuantityVo [qNum=" + qNum + ", gCode=" + gCode + ", qType=" + qType + ", round=" + round
				+ ", roundTime=" + roundTime + ", quantity=" + quantity + ", goodsType=" + goodsType + "]";
	}
	
	
	
	
	
	

}
