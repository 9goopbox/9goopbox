package box.cont.timeline;

import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;




import vo.view.TimelineVO;
import box.dao.TimelineDao;


@Controller
public class SendTimelineController {
	@Autowired
	private TimelineDao mdao;
	
	@RequestMapping(value="/timeline_article_json.box")
	public ModelAndView getManagementStaffDetail(long date,HttpSession session) {
		
		
		
		TimelineVO tvo = new TimelineVO();
		tvo.setUpdated(new Date(date));
		String idInSession = (String) session.getAttribute("userid");
		tvo.setId(idInSession);
		
		List<TimelineVO> tvolist = mdao.renewTime(tvo);
		
		ModelAndView mav = new ModelAndView("timeline/timeline_article_json");
	
		mav.addObject("tvolist", tvolist);
		
		return mav;
	}
}

