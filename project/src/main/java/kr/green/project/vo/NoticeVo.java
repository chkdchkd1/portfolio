package kr.green.project.vo;

import java.text.SimpleDateFormat;
import java.util.Date;

public class NoticeVo {
	private int boOpenNum;
	private String cateType;
	private String openTitle;
	private String openDate;
	private String openProduct;
	private String productInfo;
	private String priceInfo;
	private String enterInfo;
	private String noticeInfo;
	private String openImage;
	private Date openRegisterDate;
	private int openViews;
	
	public int getBoOpenNum() {
		return boOpenNum;
	}
	public void setBoOpenNum(int boOpenNum) {
		this.boOpenNum = boOpenNum;
	}
	public String getCateType() {
		return cateType;
	}
	public void setCateType(String cateType) {
		this.cateType = cateType;
	}
	public String getOpenTitle() {
		return openTitle;
	}
	public void setOpenTitle(String openTitle) {
		this.openTitle = openTitle;
	}
	public String getOpenDate() {
		return openDate;
	}
	public void setOpenDate(String openDate) {
		this.openDate = openDate;
	}
	public String getOpenProduct() {
		return openProduct;
	}
	public void setOpenProduct(String openProduct) {
		this.openProduct = openProduct;
	}
	public String getProductInfo() {
		return productInfo;
	}
	public void setProductInfo(String productInfo) {
		this.productInfo = productInfo;
	}
	public String getPriceInfo() {
		return priceInfo;
	}
	public void setPriceInfo(String priceInfo) {
		this.priceInfo = priceInfo;
	}
	public String getEnterInfo() {
		return enterInfo;
	}
	public void setEnterInfo(String enterInfo) {
		this.enterInfo = enterInfo;
	}
	public String getNoticeInfo() {
		return noticeInfo;
	}
	public void setNoticeInfo(String noticeInfo) {
		this.noticeInfo = noticeInfo;
	}
	public String getOpenImage() {
		return openImage;
	}
	public void setOpenImage(String openImage) {
		this.openImage = openImage;
	}
	public String getOpenRegisterDate() {
		SimpleDateFormat format1 = new SimpleDateFormat("yyyy.MM.dd");
		String to2 = format1.format(openRegisterDate);
		return to2;
	}
	public void setOpenRegisterDate(Date openRegisterDate) {
		this.openRegisterDate = openRegisterDate;
	}
	public int getOpenViews() {
		return openViews;
	}
	public void setOpenViews(int openViews) {
		this.openViews = openViews;
	}
	@Override
	public String toString() {
		return "NoticeVo [boOpenNum=" + boOpenNum + ", cateType=" + cateType + ", openTitle=" + openTitle
				+ ", openDate=" + openDate + ", openProduct=" + openProduct + ", productInfo=" + productInfo
				+ ", priceInfo=" + priceInfo + ", enterInfo=" + enterInfo + ", noticeInfo=" + noticeInfo
				+ ", openImage=" + openImage + ", openRegisterDate=" + openRegisterDate + ", openViews=" + openViews
				+ "]";
	}
	
	

	
	



}
