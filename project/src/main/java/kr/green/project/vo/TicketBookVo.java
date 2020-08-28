package kr.green.project.vo;

public class TicketBookVo {
	
	private int gsCode;
	private String rvId;
	private String finaldate;
	private int roundNum;
	private int paymethod;
	private int methodBank;
	
	public int getGsCode() {
		return gsCode;
	}
	public void setGsCode(int gsCode) {
		this.gsCode = gsCode;
	}
	public String getRvId() {
		return rvId;
	}
	public void setRvId(String rvId) {
		this.rvId = rvId;
	}
	public String getFinaldate() {
		return finaldate;
	}
	public void setFinaldate(String finaldate) {
		this.finaldate = finaldate;
	}
	public int getRoundNum() {
		return roundNum;
	}
	public void setRoundNum(int roundNum) {
		this.roundNum = roundNum;
	}
	public int getPaymethod() {
		return paymethod;
	}
	public void setPaymethod(int paymethod) {
		this.paymethod = paymethod;
	}
	public int getMethodBank() {
		return methodBank;
	}
	public void setMethodBank(int methodBank) {
		this.methodBank = methodBank;
	}
	
	@Override
	public String toString() {
		return "TicketBookVo [gsCode=" + gsCode + ", rvId=" + rvId + ", finaldate=" + finaldate + ", roundNum="
				+ roundNum + ", paymethod=" + paymethod + ", methodBank=" + methodBank + "]";
	}
	
	
	

}
