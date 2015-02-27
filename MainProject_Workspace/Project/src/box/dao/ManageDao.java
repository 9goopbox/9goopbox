package box.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.DeptVO;
import vo.EmployeeVO;
import vo.SearchVO;

@Repository
public class ManageDao {

	@Autowired
	private SqlSessionTemplate ss;

//	public int login(EmployeeVO vo) {
//		return ss.selectOne("login.loginok", vo);
//	}

//	public int selname(EmployeeVO vo) {
//		return ss.selectOne("login.selname", vo);
//	}
//	
//	public int selposition(EmployeeVO vo) {
//		return ss.selectOne("login.selposition", vo);
//	}
//	
//	public int seldept(DeptVO vo2) {
//		return ss.selectOne("login.seldept", vo2);
//	}
//	
//	public List<EmployeeVO> getShopList2(SearchVO vo){
//		return ss.selectList("manage.list",vo);
//	}
	public int getTotalCount() {
		return ss.selectOne("manage.cnt");
	}
	public int getTotalCount2() {
		return ss.selectOne("manage.cnt2");
	}
	
//	public EmployeeVO getShopView(int num){
//		return ss.selectOne("manage.view", num);
//	}

	public int getTotalSearchCount(SearchVO vo) {
		return ss.selectOne("manage.somecnt", vo);
	}
	public List<EmployeeVO> getListSearch(SearchVO vo) {
		List<EmployeeVO> list = ss.selectList("manage.getlistsearch", vo);
		return list;
	}
	public List<EmployeeVO> getList2Search(SearchVO vo) {
		System.out.println("SearchVO type (dao) : " + vo.getSearchType());
		System.out.println("SearchVO beg (dao) : " + vo.getBegin());
		System.out.println("SearchVO ed (dao) : " + vo.getEnd());
		List<EmployeeVO> list = ss.selectList("manage.getlist2search", vo);
		return list;
	}
	public List<EmployeeVO> getRetireListSearch(SearchVO vo) {
		return ss.selectList("manage.getretirelistsearch", vo);
	}
	public List<EmployeeVO> getRetireList2Search(SearchVO vo) {
		return ss.selectList("manage.getretirelist2search", vo);
	}
	public List<EmployeeVO> getPayListSearch(SearchVO vo) {
//	public EmployeeVO getPayListSearch(SearchVO vo) {
		System.out.println("SearchVO type (dao) : " + vo.getSearchType());
		System.out.println("SearchVO beg (dao) : " + vo.getBegin());
		System.out.println("SearchVO ed (dao) : " + vo.getEnd());
		List<EmployeeVO> list = ss.selectList("manage.getpaylistsearch", vo);
//		EmployeeVO resvo = ss.selectOne("manage.getpaylistsearch", vo);
//		System.out.println("resvo ok");
//		System.out.println("resvo : " + resvo.getId());
//		System.out.println("EVO size (dao) : " + resvo.size());
		return list;
	}
	
	
}
