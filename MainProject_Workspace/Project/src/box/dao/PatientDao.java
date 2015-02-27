package box.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.view.PatientDisplayVO;
import vo.PatientVO;
import vo.SearchVO;

@Repository
public class PatientDao {

	@Autowired
	private SqlSessionTemplate ss;
	
	public PatientVO getPatientById(int id) {
		return ss.selectOne("pat.byid", id);
	}
	public int getListSize() {
		return ss.selectOne("pat.size");
	}
	public int getListSizeSearch(SearchVO vo) {
		return ss.selectOne("pat.sizeSearch", vo);
	}
	public List<PatientDisplayVO> getList(SearchVO vo) {
		return ss.selectList("pat.list", vo); 
	}

}
