package box.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.DeptVO;
import vo.EmployeeVO;

@Repository
public class ManageDao {

	@Autowired
	private SqlSessionTemplate ss;

//	public int login(EmployeeVO vo) {
//		return ss.selectOne("login.loginok", vo);
//	}

	public int selname(EmployeeVO vo) {
		return ss.selectOne("login.selname", vo);
	}
	
	public int selposition(EmployeeVO vo) {
		return ss.selectOne("login.selposition", vo);
	}
	
	public int seldept(DeptVO vo2) {
		return ss.selectOne("login.seldept", vo2);
	}
	
	public int selsome(EmployeeVO vo) {
		return ss.selectOne("login.selsome", vo);
	}
}
