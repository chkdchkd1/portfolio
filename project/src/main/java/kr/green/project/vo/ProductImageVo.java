package kr.green.project.vo;

public class ProductImageVo {
	
	private int goodsInfoNum;
	private int pLocation;
	private String file;
	
	public int getGoodsInfoNum() {
		return goodsInfoNum;
	}
	public void setGoodsInfoNum(int goodsInfoNum) {
		this.goodsInfoNum = goodsInfoNum;
	}
	public int getpLocation() {
		return pLocation;
	}
	public void setpLocation(int pLocation) {
		this.pLocation = pLocation;
	}
	public String getFile() {
		return file;
	}
	public void setFile(String file) {
		this.file = file;
	}
	
	@Override
	public String toString() {
		return "ProductImageVo [goodsInfoNum=" + goodsInfoNum + ", pLocation=" + pLocation + ", file=" + file + "]";
	}
	
	
	
	
	

}
