package box.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.InvenVO;
import vo.SearchVO;

@Repository
public class InventoryDao {
	@Autowired
	private SqlSessionTemplate ss;
	
	public int getTotalCount() {
		return ss.selectOne("invent.cnt");
	}
	
	public int getTotalSearchCount(SearchVO vo) {
		return ss.selectOne("invent.invensearch", vo);
	}
	
	public List<InvenVO> getListSearch(SearchVO vo) {
		return ss.selectList("invent.getlistsearch", vo);
	}
}
