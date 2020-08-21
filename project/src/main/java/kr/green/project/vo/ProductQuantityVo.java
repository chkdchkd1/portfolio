package kr.green.project.vo;

public class ProductQuantityVo {
	
	private int gCode;
	private String qType;
	private String round;
	private String roundTime;
	private int quantity;
	private String goodsType;
	public int getgCode() {
		return gCode;
	}
	public void setgCode(int gCode) {
		this.gCode = gCode;
	}
	public String getqType() {
		return qType;
	}
	public void setqType(String qType) {
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
		return "ProductQuantityVo [gCode=" + gCode + ", qType=" + qType + ", round=" + round + ", roundTime="
				+ roundTime + ", quantity=" + quantity + ", goodsType=" + goodsType + "]";
	}
	
	
	
	
	
	

}
