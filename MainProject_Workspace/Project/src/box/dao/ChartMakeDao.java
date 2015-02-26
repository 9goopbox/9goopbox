package box.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.SearchVO;
import vo.view.ChartDisplayVO;

@Repository
public class ChartMakeDao {
	@Autowired
	private SqlSessionTemplate ss;
	
	public List<ChartDisplayVO> getList(SearchVO vo) {
		return ss.selectList("chartsMake.list", vo);
	}
	
	public int getListSize() {
		return ss.selectOne("chartsMake.size");
	}
	public int getListSizeSearch(SearchVO vo) {
		return ss.selectOne("chartsMake.sizeSearch", vo);
	}
}
