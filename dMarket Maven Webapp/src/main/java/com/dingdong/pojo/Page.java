package com.dingdong.pojo;

public class Page {
	private int totalNumber;// 总条数
	private int currentPage;// 目前页
	private int totalPage;// 总页数
	private int pageNumber = 10;// 每页显示条数
	private int dbIndex;// 从第几条开始取，limit中的参数
	private int dbNumber;// 每页显示条数，limit中的参数

	public int getTotalNumber() {
		return totalNumber;
	}

	public void setTotalNumber(int totalNumber) {
		this.totalNumber = totalNumber;
		count();
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getPageNumber() {
		return pageNumber;
	}

	public void setPageNumber(int pageNumber) {
		this.pageNumber = pageNumber;
	}

	public int getDbIndex() {
		return dbIndex;
	}

	public void setDbIndex(int dbIndex) {
		this.dbIndex = dbIndex;
	}

	public int getDbNumber() {
		return dbNumber;
	}

	public void setDbNumber(int dbNumber) {
		this.dbNumber = dbNumber;
	}

	private void count() {
		int totalPageTemp = (totalNumber / pageNumber)
				+ ((totalNumber % pageNumber == 0) ? 0 : 1);
		if (totalPageTemp <= 0) {
			totalPageTemp = 1;
		}
		this.totalPage = totalPageTemp;
		if (this.totalPage < this.currentPage) {
			this.currentPage = this.totalPage;
		}
		if (this.currentPage < 1) {
			this.currentPage = 1;
		}
		this.dbIndex = (this.currentPage - 1) * this.pageNumber;
		this.dbNumber = this.pageNumber;
	}
}
