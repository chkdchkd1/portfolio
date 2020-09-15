package kr.green.project.vo;

import java.text.SimpleDateFormat;
import java.util.Date;

public class QnAVo {
	private int boardNum;
	private String boardTitle;
	private Date boardDate;
	private String boardWriter;
	private String boardContent;
	private char boardDel;
	private char usePw;
	private String boardPw;
	private int views;
	private Date boardDelDate;
	
	public int getBoardNum() {
		return boardNum;
	}
	public void setBoardNum(int boardNum) {
		this.boardNum = boardNum;
	}
	public String getBoardTitle() {
		return boardTitle;
	}
	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}
	public String getBoardDate() {
		SimpleDateFormat format1 = new SimpleDateFormat("yyyy.MM.dd");
		String to2 = format1.format(boardDate);
		return to2;
	}
	public void setBoardDate(Date boardDate) {
		this.boardDate = boardDate;
	}
	public String getBoardWriter() {
		return boardWriter;
	}
	public void setBoardWriter(String boardWriter) {
		this.boardWriter = boardWriter;
	}
	public String getBoardContent() {
		return boardContent;
	}
	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}
	public char getBoardDel() {
		return boardDel;
	}
	public void setBoardDel(char boardDel) {
		this.boardDel = boardDel;
	}
	public char getUsePw() {
		return usePw;
	}
	public void setUsePw(char usePw) {
		this.usePw = usePw;
	}
	public String getBoardPw() {
		return boardPw;
	}
	public void setBoardPw(String boardPw) {
		this.boardPw = boardPw;
	}
	public int getViews() {
		return views;
	}
	public void setViews(int views) {
		this.views = views;
	}
	public Date getBoardDelDate() {
		return boardDelDate;
	}
	public void setBoardDelDate(Date boardDelDate) {
		this.boardDelDate = boardDelDate;
	}
	
	@Override
	public String toString() {
		return "QnAVo [boardNum=" + boardNum + ", boardTitle=" + boardTitle + ", boardDate=" + boardDate
				+ ", boardWriter=" + boardWriter + ", boardContent=" + boardContent + ", boardDel=" + boardDel
				+ ", usePw=" + usePw + ", boardPw=" + boardPw + ", views=" + views + ", boardDelDate=" + boardDelDate
				+ "]";
	}
	
	
	
	
	
	
	

}
