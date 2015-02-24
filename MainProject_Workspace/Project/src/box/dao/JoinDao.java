package box.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.EmployeeVO;
import vo.RegisterVO;

@Repository
public class JoinDao {
	@Autowired
	private SqlSessionTemplate ss;
	
	//회원가입 구현
	public void addEmployee(EmployeeVO vo) {
		ss.insert("register.join", vo);
	}
		
		
	// 아이디 중복 확인
		public int idChk(String id){
			return ss.selectOne("register.idChk", id);
		}	
}
