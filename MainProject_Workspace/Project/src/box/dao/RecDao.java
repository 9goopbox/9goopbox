package box.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.PatientVO;
import vo.RecVO;

@Repository
public class RecDao {
	@Autowired
	private SqlSessionTemplate ss;
	
	public void addReceive(RecVO vo) {
		System.out.println("patient id6 : "+vo.getPatient_id());
		ss.insert("receive.recok", vo);
	}
	
	public void addPatient(RecVO vo) {
		System.out.println("patinet id7 : " +vo.getId());
		ss.insert("receive.patiok", vo);
	}
}