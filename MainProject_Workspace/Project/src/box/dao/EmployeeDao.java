package box.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.EmployeeVO;

@Repository
public class EmployeeDao {

	@Autowired
	private SqlSessionTemplate ss;

	public int login(EmployeeVO vo) {
		return ss.selectOne("login.loginok", vo);
	}
	
	public EmployeeVO getEmployeeById(String id) {
		return ss.selectOne("emp.byid", id);
	}
}
