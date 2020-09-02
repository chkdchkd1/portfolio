package kr.green.project.vo;

public class ProductPriceVo {

	private int num;
	private int gooCode;
	private String Type;
	private int price;
	private int kinds;
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getType() {
		return Type;
	}
	public void setType(String type) {
		this.Type = type;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getKinds() {
		return kinds;
	}
	public void setKinds(int kinds) {
		this.kinds = kinds;
	}
	
	public int getGooCode() {
		return gooCode;
	}
	public void setGooCode(int gooCode) {
		this.gooCode = gooCode;
	}
	@Override
	public String toString() {
		return "ProductPriceVo [num=" + num + ", gooCode=" + gooCode + ", type=" + Type + ", price=" + price
				+ ", kinds=" + kinds + "]";
	}
	
	
	
	
	
	
	
	

}
