package box.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.ChartVO;
import vo.PatientVO;
import vo.SearchVO;
import vo.view.ChartDisplayVO;
import vo.view.ChartTreatmentVO;

@Repository
public class ChartMakeDao {
	@Autowired
	private SqlSessionTemplate ss;
	
	public List<ChartTreatmentVO> getList(SearchVO vo) {
		return ss.selectList("chartsMake.list", vo);
	}
	
	public int getListSize() {
		return ss.selectOne("chartsMake.size");
	}
	public int getListSizeSearch(SearchVO vo) {
		return ss.selectOne("chartsMake.sizeSearch", vo);
	}
	public PatientVO getPatientByTreatmentId(int id) {
		return ss.selectOne("chartsMake.patientByTreatmentId", id);
	};
	
	public void addChart(ChartVO vo) {
		ss.insert("chartsMake.addChart", vo);
		return;
	}

	public void updateChart(ChartVO vo) {
		// TODO Auto-generated method stub
		ss.update("chartsMake.updateChart", vo);
		return;
	}
}
