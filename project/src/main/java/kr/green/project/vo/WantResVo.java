package kr.green.project.vo;


public class WantResVo{
	
	private int selectCode;
	private String selectDate;
	private String selectRound;
	
	public int getSelectCode() {
		return selectCode;
	}
	public void setSelectCode(int selectCode) {
		this.selectCode = selectCode;
	}
	public String getSelectDate() {
		return selectDate;
	}
	public void setSelectDate(String selectDate) {
		this.selectDate = selectDate;
	}
	public String getSelectRound() {
		return selectRound;
	}
	public void setSelectRound(String selectRound) {
		this.selectRound = selectRound;
	}
	
	@Override
	public String toString() {
		return "WantResVo [selectCode=" + selectCode + ", selectDate=" + selectDate + ", selectRound=" + selectRound
				+ "]";
	}
	
	
	
	
	
	

	
}
