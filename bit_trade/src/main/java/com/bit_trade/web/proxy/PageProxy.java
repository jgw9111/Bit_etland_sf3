package com.bit_trade.web.proxy;

public class PageProxy implements Proxy{
	private Pagination page;
	
	public Pagination getPage() {
		return page;
	}

	public void setPage(Pagination page) {
		this.page = page;
	}

	@Override
	public void carryOut(Object o) {
		setPage((Pagination) o); //다운캐스팅 처리 -> object 타입을 pagenation타입으로 형변환
	}

}
