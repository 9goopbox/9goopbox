package box.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.EmployeeVO;
import vo.SettingEmpVO;

@Repository
public class SettingDao {
	@Autowired
	private SqlSessionTemplate ss;
	
	//password 변경
	public void pwdUpdate(SettingEmpVO vo) {
		System.out.println("password : "+ vo.getPassword());
		ss.update("setting.pwdupdate", vo);
	}
	
	//프로필 변경
	public void profileUpdate(SettingEmpVO vo) {
		System.out.println(vo.getName());
		ss.update("setting.profileupdate", vo);
	}
	
	public void imgUp(SettingEmpVO vo) {
		System.out.println(vo.getUp_profile_img());
		ss.update("setting.imgup", vo);
	}
	
	
}
