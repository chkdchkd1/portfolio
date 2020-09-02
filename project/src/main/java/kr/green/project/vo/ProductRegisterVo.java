package kr.green.project.vo;

public class ProductRegisterVo {
	private int code;
	private String genre;
	private String title;
	private String ratings;
	private String startDate;
	private String endDate;
	private String place;
	private String godType;
	private int weekDif;
	private int limitAmount;
	private String enterInfo;
	private String infoTime;
	private String infoNotice;
	private int infoNum;
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getRatings() {
		return ratings;
	}
	public void setRatings(String ratings) {
		this.ratings = ratings;
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
	public String getGodType() {
		return godType;
	}
	public void setGodType(String godType) {
		this.godType = godType;
	}
	public int getWeekDif() {
		return weekDif;
	}
	public void setWeekDif(int weekDif) {
		this.weekDif = weekDif;
	}
	public int getLimitAmount() {
		return limitAmount;
	}
	public void setLimitAmount(int limitAmount) {
		this.limitAmount = limitAmount;
	}
	public String getEnterInfo() {
		return enterInfo;
	}
	public void setEnterInfo(String enterInfo) {
		this.enterInfo = enterInfo;
	}
	public String getInfoTime() {
		return infoTime;
	}
	public void setInfoTime(String infoTime) {
		this.infoTime = infoTime;
	}
	public String getInfoNotice() {
		return infoNotice;
	}
	public void setInfoNotice(String infoNotice) {
		this.infoNotice = infoNotice;
	}
	public int getInfoNum() {
		return infoNum;
	}
	public void setInfoNum(int infoNum) {
		this.infoNum = infoNum;
	}
	@Override
	public String toString() {
		return "ProductRegisterVo [code=" + code + ", genre=" + genre + ", title=" + title + ", ratings=" + ratings
				+ ", startDate=" + startDate + ", endDate=" + endDate + ", place=" + place + ", godType=" + godType
				+ ", weekDif=" + weekDif + ", limitAmount=" + limitAmount + ", enterInfo=" + enterInfo + ", infoTime="
				+ infoTime + ", infoNotice=" + infoNotice + ", infoNum=" + infoNum + "]";
	}
	
	
	
	
	
}
