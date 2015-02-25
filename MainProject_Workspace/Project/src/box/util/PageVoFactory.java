package box.util;

import org.springframework.stereotype.Repository;

import vo.PageVO;

@Repository
public class PageVoFactory {
	private int rowsPerPage = 5; // 한페이지당 보여줄 목록수 - properties
	private int pagesPerBlock = 5; // 한 블록당 보여줄 페이지 수 - properties
	
	public int getRowsPerPage() {
		return rowsPerPage;
	}

	public void setRowsPerPage(int rowsPerPage) {
		this.rowsPerPage = rowsPerPage;
	}

	public int getPagesPerBlock() {
		return pagesPerBlock;
	}

	public void setPagesPerBlock(int pagesPerBlock) {
		this.pagesPerBlock = pagesPerBlock;
	}

	
	public PageVO makePageVO(Integer page, int totalRows) {
		PageVO pageInfo = new PageVO();
		
		// page를 Integer로 바꾸는 것에 대응 (파라미터 미제공시)
		if (page == null) page = 0;
		if(page  == 0) page = 1; //페이지 초기화
		int currentPage = page; // 현재 페이지 값
		int currentBlock = 0; // 현재 블록 초기화
		if (currentPage % pagesPerBlock == 0) { // 현재 블록 초기값
			currentBlock = currentPage / pagesPerBlock;
		} else { // 다음 블록이냐
			currentBlock = currentPage / pagesPerBlock + 1;
		}
		int startRow = (currentPage - 1) * rowsPerPage + 1; // 시작목록값연산
		int endRow = currentPage * rowsPerPage;// 마지막 목록값 연산
		
		System.out.println("totalRows:" + totalRows);
		// 전체 페이지 구하는 공식
		int totalPages = 0;
		if (totalRows % rowsPerPage == 0) {
			totalPages = totalRows / rowsPerPage;
		} else {
			totalPages = totalRows / rowsPerPage + 1;
		}
		// 전체 블록값을 구하는 공식
		int totalBlocks = 0;
		if (totalPages % pagesPerBlock == 0) {
			totalBlocks = totalPages / pagesPerBlock;
		} else {
			totalBlocks = totalPages / pagesPerBlock + 1;
		}
		// 모든 연산된정보를 PageVO에 저장한다.
		pageInfo.setCurrentPage(currentPage);
		pageInfo.setCurrentBlock(currentBlock);
		pageInfo.setRowsPerPage(rowsPerPage);
		pageInfo.setPagesPerBlock(pagesPerBlock);
		pageInfo.setStartRow(startRow);
		pageInfo.setEndRow(endRow);
		pageInfo.setTotalRows(totalRows);
		pageInfo.setTotalPages(totalPages);
		pageInfo.setTotalBlocks(totalBlocks);
		
		
		return pageInfo;
	}
}
