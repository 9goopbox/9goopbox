package box.cont.timeline;

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
	public ModelAndView getManagementStaffDetail(String date,HttpSession session) {
		TimelineVO evo = new TimelineVO();
		String idInSession = (String) session.getAttribute("userid");
		evo.setId(idInSession);
		
		ModelAndView mav = new ModelAndView("timeline/timeline_article_json");
		
		evo = mdao.renewTime(date);
		

		evo = mdao.updateTimelineById(evo.getId());
//		System.out.println("호이!컨트롤러"+evo.getId());
		mav.addObject("sendTimelineList", evo);
		
		return mav;
	}
}

