package box.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.RegisterVO;

@Repository
public class JoinDao {
	@Autowired
	private SqlSessionTemplate ss;
	
	//회원가입 구현
	public void addEmployee(RegisterVO vo) {
		ss.insert("register.join", vo);
	}
		
		
	// 아이디 중복 확인
		public int idChk(String id){
			System.out.println("11111111");
			return ss.selectOne("register.idChk", id);
		}	
}
