package box.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.employeeVO;

@Repository
public class loginDao {

	@Autowired
	private SqlSessionTemplate ss;

	public int login(employeeVO vo) {
		return ss.selectOne("login.loginok", vo);
	}
	
	public int seldoctor(employeeVO vo) {
		return ss.selectOne("login.seldoctor", vo);
	}
	
	public int selnurse(employeeVO vo) {
		return ss.selectOne("login.selnurse", vo);
	}
	
//	public int selstaff(employeeVO vo) {
//		return ss.selectOne("login.selstaff", vo);
//	}
}
