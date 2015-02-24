package box.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.EmployeeVO;

@Repository
public class employeeDaoo {

	@Autowired
	private SqlSessionTemplate ss;

	public int login(EmployeeVO vo) {
		return ss.selectOne("login.loginok", vo);
	}
	
}
