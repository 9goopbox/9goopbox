package box.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.EmployeeVO;

@Repository
public class joinDao {
	@Autowired
	private SqlSessionTemplate ss;
	
	public void addEmployee(EmployeeVO vo) {
		ss.insert("joinemp.join", vo);
	}
	
	public int idChk(String id) {
		return ss.selectOne("joinemp.idChk", id);
	}
	
}
