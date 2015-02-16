package box.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.EmployeeVO;

@Repository
public class setting {
	@Autowired
	private SqlSessionTemplate ss;
	
	public void pwdUpdate(EmployeeVO vo) {
		System.out.println("password : "+vo.getPassword());
		ss.update("setting.pwdupdate", vo);
	}
}
