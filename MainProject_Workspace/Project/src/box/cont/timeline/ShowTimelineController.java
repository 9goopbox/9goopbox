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
public class ShowTimelineController {
	@Autowired
	private TimelineDao tdao;
	
	@RequestMapping(value="/timeline_article_post.box")
	public ModelAndView showTimeline(TimelineVO tvo, HttpSession session) {
		ModelAndView mav = new ModelAndView("timeline/timeline_article_post");
		System.out.println(tvo.getCont());
		tvo.setWriter_id((String)session.getAttribute("userid"));
		tdao.addTimeline(tvo);
		
		List<TimelineVO> tvolist = tdao.renewTime(tvo);
		
		mav.addObject("tvolist", tvolist);
		System.out.println("../timeline_article_post?id=" + tvo.getArt_id());
		mav.addObject("../timeline_article_post?id=" + tvo.getArt_id());
		
		return mav;
	}
}
