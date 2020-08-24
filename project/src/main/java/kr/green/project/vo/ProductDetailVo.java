package kr.green.project.vo;

public class ProductDetailVo {

	private int code;
	private String title;
	private String genre;
	private String startDate;
	private String endDate;
	private String place;
	private String ratings;
	private String enterInfo;
	private String infoTime;
	private String infoNotice;
	private int weekDif;
	private String godType;
	
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
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
	public String getRatings() {
		return ratings;
	}
	public void setRatings(String ratings) {
		this.ratings = ratings;
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
	public int getWeekDif() {
		return weekDif;
	}
	public void setWeekDif(int weekDif) {
		this.weekDif = weekDif;
	}
	public String getGodType() {
		return godType;
	}
	public void setGodType(String godType) {
		this.godType = godType;
	}
	@Override
	public String toString() {
		return "ProductDetailVo [code=" + code + ", title=" + title + ", genre=" + genre + ", startDate=" + startDate
				+ ", endDate=" + endDate + ", place=" + place + ", ratings=" + ratings + ", enterInfo=" + enterInfo
				+ ", infoTime=" + infoTime + ", infoNotice=" + infoNotice + ", weekDif=" + weekDif + ", godType="
				+ godType + "]";
	}
	
	

	
	


}
