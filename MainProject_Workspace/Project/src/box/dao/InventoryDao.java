package box.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.InvenVO;

@Repository
public class InventoryDao {
	@Autowired
	private SqlSessionTemplate ss;
	
	public List<InvenVO> getList() {
		return ss.selectList("");
	}
}
