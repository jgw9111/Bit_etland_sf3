package com.bit_trade.web.proxy;


import javax.servlet.http.HttpServletRequest;


public class Pagination implements Proxy{
	private int pageNum, count, pageSize, blockSize,
				   startRow,endRow, startPage, endPage,
				   prevBlock,nextBlock, rowCount;
	private boolean existPrev,existNext;
	
	@Override
	public void carryOut(Object o) {
		System.out.println("==페이지네이션 CarryOut==");
		
		HttpServletRequest request = (HttpServletRequest)o;
		String _pageNum = request.getParameter("page_num");
		pageNum = (_pageNum==null)? 1 : Integer.parseInt(_pageNum); 
		String _pageSize = request.getParameter("page_size");
		pageSize = (_pageSize==null)? 5 : Integer.parseInt(_pageSize);
		//System.out.println("====="+pageSize);
		String _blockSize = request.getParameter("block_size");
		blockSize = (_blockSize==null)? 5 : Integer.parseInt(_blockSize);
		
		/* rowCount = CustomerServiceImpl.getInstance().countCustomers(null); */
		//System.out.println("전체 카운트 :: "+rowCount);

		startRow = (pageNum -1)*pageSize +1;
		endRow = (rowCount > startRow + (pageSize-1) )? startRow + (pageSize-1) : rowCount;
		
		/*if(rowCount % pageSize != 0) {
		endRow = rowCount - (pageSize * pageNum) + pageSize;
		startRow = endRow - (pageSize -1) ;
		}else {
			endRow = rowCount - (pageSize * pageNum) + pageSize;
			startRow = endRow - (pageSize -1);
		}*/
		
/*		System.out.println("==EndRow ::"+endRow);
		System.out.println("==StartRow ::"+startRow);
		System.out.println("BlockSize ::"+blockSize);
		System.out.println("PageNum ::"+pageNum);
		System.out.println("PageSize ::"+pageSize);*/

		int blockNum = (pageNum-1) / blockSize ;
		
		startPage = blockNum * blockSize + 1 ;
		endPage = startPage + (blockSize-1);
		
		prevBlock = startPage - pageSize;
		nextBlock = startPage + pageSize;
		
		/*System.out.println("--block num-->"+ blockNum );
		System.out.println("--start page-->"+startPage);
		System.out.println("--end page-->"+endPage);
		System.out.println("--pre block-->"+prevBlock);*/
		if(prevBlock < 0) {
			existNext = false;
			existPrev = true;
		}else {
			existNext = true;
			existPrev = false;
		}
	}
}
