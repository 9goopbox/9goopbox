package box.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.employeeVO;

@Repository
public class employeeDao {

	@Autowired
	private SqlSessionTemplate ss;

	public int login(employeeVO vo) {
		return ss.selectOne("login.loginok", vo);
	}
	
}
