package kr.green.project.vo;

import java.text.SimpleDateFormat;
import java.util.Date;

public class ReviewVo {
	
	private int reviewNum;
	private String writer;
	private String content;
	private Date registerDate;
	private int like;
	private String isDel;
	private String reviewRvNum;
	private String isModify;
	private Date delDate;
	
	public int getReviewNum() {
		return reviewNum;
	}
	public void setReviewNum(int reviewNum) {
		this.reviewNum = reviewNum;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getRegisterDate() {
		SimpleDateFormat format1 = new SimpleDateFormat("yyyy.MM.dd");
		String to2 = format1.format(registerDate);
		return to2;
	}
	public void setRegisterDate(Date registerDate) {
		this.registerDate = registerDate;
	}
	public int getLike() {
		return like;
	}
	public void setLike(int like) {
		this.like = like;
	}
	public String getIsDel() {
		return isDel;
	}
	public void setIsDel(String isDel) {
		this.isDel = isDel;
	}
	public String getReviewRvNum() {
		return reviewRvNum;
	}
	public void setReviewRvNum(String reviewRvNum) {
		this.reviewRvNum = reviewRvNum;
	}
	public String getIsModify() {
		return isModify;
	}
	public void setIsModify(String isModify) {
		this.isModify = isModify;
	}
	public Date getDelDate() {
		return delDate;
	}
	public void setDelDate(Date delDate) {
		this.delDate = delDate;
	}
	@Override
	public String toString() {
		return "ReviewVo [reviewNum=" + reviewNum + ", writer=" + writer + ", content=" + content + ", registerDate="
				+ registerDate + ", like=" + like + ", isDel=" + isDel + ", reviewRvNum=" + reviewRvNum + ", isModify="
				+ isModify + ", delDate=" + delDate + "]";
	}
	
	
	

}
