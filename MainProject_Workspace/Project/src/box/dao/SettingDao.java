package box.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.EmployeeVO;

@Repository
public class SettingDao {
	@Autowired
	private SqlSessionTemplate ss;
	
	//password 변경
	public void pwdUpdate(EmployeeVO vo) {
		System.out.println("password : "+vo.getPassword());
		ss.update("setting.pwdupdate", vo);
	}
	
	public void profileUpdate(EmployeeVO vo) {
		System.out.println(vo.getName());
		ss.update("setting.profileupdate", vo);
	}
	
}
