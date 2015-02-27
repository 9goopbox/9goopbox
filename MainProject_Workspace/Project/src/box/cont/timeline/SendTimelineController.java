package box.cont.timeline;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import vo.EmployeeVO;
import box.dao.ManageDao;
import box.util.PageVoFactory;


@Controller
public class SendTimelineController {
	@Autowired
	private ManageDao mdao;
	@Autowired
	private PageVoFactory pageVoFactory;
	
	@RequestMapping(value="/timeline_article_json.box")
	public ModelAndView getManagementStaffDetail() {
		ModelAndView mav = new ModelAndView("timeline/timeline_article_json");
		
//		EmployeeVO evo = mdao.getIdByEmp(id);
//		System.out.println("호이!컨트롤러"+evo.getId());
//		mav.addObject("manageRetireDetailList", evo);
		
		return mav;
	}
}

