package kr.green.project.pagination;

public class Criteria {
	
	private int page;
	//현재페이지
	private int perPageNum;
	
	
	public Criteria() {
		page = 1;
		perPageNum = 4;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		if(page <= 0)
			this.page = 1;
		else
			this.page = page;

	}
	public int getPerPageNum() {
		return perPageNum;
	}
	public void setPerPageNum(int perPageNum) {
		if(perPageNum <1 )
			this.perPageNum = 4; 
		this.perPageNum = perPageNum;
	}
	
	public int getPageStart () {
		return (page - 1)*perPageNum;
	}
	@Override
	public String toString() {
		return "Criteria [page=" + page + ", perPageNum=" + perPageNum + "]";
	}
	
	
	

}
