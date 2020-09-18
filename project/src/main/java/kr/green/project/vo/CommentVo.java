package kr.green.project.vo;

import java.text.SimpleDateFormat;
import java.util.Date;

public class CommentVo {

	private int indexComments;
	private Date dateComment;
	private int boNum;
	private String mentWriter;
	private	String comment;
	private char isDel;
	private char isModify;
	private Date delDateComment;
	private int classComment;
	private int order;
	private int groupNum;
	
	public int getIndexComments() {
		return indexComments;
	}
	public void setIndexComments(int indexComments) {
		this.indexComments = indexComments;
	}
	public String getDateComment() {
		SimpleDateFormat transFormat = new SimpleDateFormat("yy.MM.dd HH:mm:ss");
		String date = transFormat.format(dateComment);
		return date;
	}
	public void setDateComment(Date dateComment) {
		this.dateComment = dateComment;
	}
	public int getBoNum() {
		return boNum;
	}
	public void setBoNum(int boNum) {
		this.boNum = boNum;
	}
	public String getMentWriter() {
		return mentWriter;
	}
	public void setMentWriter(String mentWriter) {
		this.mentWriter = mentWriter;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public char getIsDel() {
		return isDel;
	}
	public void setIsDel(char isDel) {
		this.isDel = isDel;
	}
	public char getIsModify() {
		return isModify;
	}
	public void setIsModify(char isModify) {
		this.isModify = isModify;
	}
	public String getDelDateComment() {
		if (delDateComment == null)
			return ""; 
		SimpleDateFormat transFormat = new SimpleDateFormat("yy/MM/dd HH:mm:ss");
		String date = transFormat.format(delDateComment);
		return date;
	}
	public void setDelDateComment(Date delDateComment) {
		this.delDateComment = delDateComment;
	}
	public int getClassComment() {
		return classComment;
	}
	public void setClassComment(int classComment) {
		this.classComment = classComment;
	}
	public int getOrder() {
		return order;
	}
	public void setOrder(int order) {
		this.order = order;
	}
	public int getGroupNum() {
		return groupNum;
	}
	public void setGroupNum(int groupNum) {
		this.groupNum = groupNum;
	}
	@Override
	public String toString() {
		return "CommentVo [indexComments=" + indexComments + ", dateComment=" + dateComment + ", boNum=" + boNum
				+ ", mentWriter=" + mentWriter + ", comment=" + comment + ", isDel=" + isDel + ", isModify=" + isModify
				+ ", delDateComment=" + delDateComment + ", classComment=" + classComment + ", order=" + order
				+ ", groupNum=" + groupNum + "]";
	}
	
	
	
	
	
}
