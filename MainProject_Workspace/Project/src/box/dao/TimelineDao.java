package box.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.EmployeeVO;
import vo.SettingEmpVO;
import vo.view.TimelineVO;
@Repository
public class TimelineDao {
		@Autowired
		private SqlSessionTemplate ss;
		
		
		public List<TimelineVO> renewTime(TimelineVO vo) {
			return ss.selectList("time.getid", vo);
			
		}
//		
//		public TimelineVO updateTimelineById(String id) {
//			// TODO Auto-generated method stub
//			return ss.selectOne("time.getid", id);
//		}
		
		public void addTimeline(TimelineVO vo) {
			ss.insert("time.timelineadd", vo);
			return ;
			
		}
}
