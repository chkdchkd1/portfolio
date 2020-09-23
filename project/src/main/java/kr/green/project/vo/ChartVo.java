package kr.green.project.vo;

import java.text.SimpleDateFormat;
import java.util.Date;

public class ChartVo {

	private Date date;
	private int amount;
	
	public String getDate() {
		
		SimpleDateFormat format1 = new SimpleDateFormat("yyyy.MM.dd");
		String to2 = format1.format(date);
		return to2;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	
	@Override
	public String toString() {
		return "ChartVo [date=" + date + ", amount=" + amount + "]";
	}
	
	
	
}
