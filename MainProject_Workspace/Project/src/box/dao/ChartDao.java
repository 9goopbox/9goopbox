package box.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.ChartDisplayVO;

@Repository
public class ChartDao {
	@Autowired
	private SqlSessionTemplate ss;
	
	public List<ChartDisplayVO> getList() {
		return ss.selectList("charts.list");
	}
}
