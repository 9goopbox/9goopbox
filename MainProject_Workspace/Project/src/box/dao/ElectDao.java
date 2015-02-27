package box.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.ElectVO;
import vo.InvenVO;
import vo.SearchVO;

@Repository
public class ElectDao {
	@Autowired
	private SqlSessionTemplate ss;
	
	public void addAppr(ElectVO vo) {
		ss.insert("electsave.save", vo);
	}
	
	public void addAppr_id(ElectVO vo) {
		System.out.println("addappr_id : "+vo.getId());
		ss.insert("electsave.apprsave", vo);
	}
	
	public int getTotalCount() {
		return ss.selectOne("electsave.cnt");
	}
	
	public int getTotalSearchCount(SearchVO vo) {
		return ss.selectOne("electsave.apprsearch", vo);
	}
	
	public List<ElectVO> getListSearch(SearchVO vo) {
		return ss.selectList("electsave.getlistsearch", vo);
	}
}
