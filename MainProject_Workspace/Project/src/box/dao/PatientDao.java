package box.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.PatientVO;

@Repository
public class PatientDao {

	@Autowired
	private SqlSessionTemplate ss;
	
	public PatientVO getPatientById(int id) {
		return ss.selectOne("pat.byid", id);
	}

}
