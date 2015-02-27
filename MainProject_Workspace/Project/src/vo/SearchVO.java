package vo;



public class SearchVO {
	private EmployeeVO vo;
	private String searchType,searchValue, begin, end ;

	public String getSearchType() {
		return searchType;
	}

//	public String getSearchPayType() {
//		return searchPayType;
//	}
//
//	public void setSearchPayType(String searchPayType) {
//		this.searchPayType = searchPayType;
//	}
//
//	public String getSearchPayValue() {
//		return searchPayValue;
//	}
//
//	public void setSearchPayValue(String searchPayValue) {
//		this.searchPayValue = searchPayValue;
//	}

	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}

	public String getSearchValue() {
		return searchValue;
	}

	public void setSearchValue(String searchValue) {
		this.searchValue = searchValue;
	}

	public String getBegin() {
		return begin;
	}

	public void setBegin(String begin) {
		this.begin = begin;
	}

	public String getEnd() {
		return end;
	}

	public void setEnd(String end) {
		this.end = end;
	}

}
