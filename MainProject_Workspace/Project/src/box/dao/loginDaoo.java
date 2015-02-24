package box.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.EmployeeVO;

@Repository
public class loginDaoo {

	@Autowired
	private SqlSessionTemplate ss;

	public int login(EmployeeVO vo) {
		return ss.selectOne("login.loginok", vo);
	}
	
	public int seldoctor(EmployeeVO vo) {
		return ss.selectOne("login.seldoctor", vo);
	}
	
	public int selnurse(EmployeeVO vo) {
		return ss.selectOne("login.selnurse", vo);
	}
	
//	public int selstaff(EmployeeVO vo) {
//		return ss.selectOne("login.selstaff", vo);
//	}
}
