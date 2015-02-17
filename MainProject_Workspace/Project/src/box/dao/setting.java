package box.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.EmployeeVOo;

@Repository
public class setting {
	@Autowired
	private SqlSessionTemplate ss;
	
	//password 변경
	public void pwdUpdate(EmployeeVOo vo) {
		System.out.println("password : "+vo.getPassword());
		ss.update("setting.pwdupdate", vo);
	}
}
