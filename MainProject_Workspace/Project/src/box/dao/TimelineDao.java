package box.dao;

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
		public TimelineVO renewTime(String updated) {
			return ss.selectOne("time.getid", updated);
			
		}
		

		public TimelineVO updateTimelineById(String id) {
			// TODO Auto-generated method stub
			return ss.selectOne("time.getid", id);
		}
}
