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
//	public EmployeeVO getShopView(int num){
//		return ss.selectOne("manage.view", num);
//	}

	public int getTotalSearchCount(SearchVO vo) {
		return ss.selectOne("manage.somecnt", vo);
	}
	public List<EmployeeVO> getListSearch(SearchVO vo) {
		return ss.selectList("manage.getlistsearch", vo);
	}
	public List<EmployeeVO> getRetireListSearch(SearchVO vo) {
		return ss.selectList("manage.getretirelistsearch", vo);
	}
	
}
