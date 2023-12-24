package com.ddobagi.domain;

/**
 * 페이징 처리를 계산하는 기준의 정보를 저장
 */
public class Criteria {
	
	private int page;
	//private int pageStart; //쿼리에서 실행하는 지점. 시작인덱스
	private int pageSize;
	// 생성자
	public Criteria() {
		this.page = 1;
		this.pageSize = 10;
		// 1페이지를 10개씩 보여주겠다는 기본 세팅
	}
	// get, set 메서드(위치조정- set메서드끼리,get메서드끼리)
	
	public void setPage(int page) {
		if(page <= 0) {
			this.page = 1;
			return;
		}
		this.page = page;
	}

	public void setPageSize(int pageSize) {
		if(pageSize <=0 || pageSize > 100) {
			this.pageSize = 10;
			return;
		}
		this.pageSize = pageSize;
	}
	
	// 변수를 저장하기 위한 목적 아님(위에 변수없음)
	// mapper에서 호출되는 메서드 #{pageStart}을 호출
	
	public int getPageStart() {
		// 출력문 (필요에 따라)
		return (this.page - 1) * pageSize;
	}
	public int getPage() {
		return page;
	}

	public int getPageSize() {
		return pageSize;
	}
	
	// alt shift s + s : toString 메서드
	@Override
	public String toString() {
		return "Criteria [page=" + page + ", pageSize=" + pageSize + "]";
	}
	
	
	
	
	
}
