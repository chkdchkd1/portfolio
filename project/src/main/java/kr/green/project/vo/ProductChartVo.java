package kr.green.project.vo;

public class ProductChartVo {
	private String title;
	private int amount;
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	
	@Override
	public String toString() {
		return "ProductChartVo [title=" + title + ", amount=" + amount + "]";
	}
	
	

}
