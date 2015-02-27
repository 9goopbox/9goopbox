package box.cont.management;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import vo.EmployeeVO;
import box.dao.ManageDao;
import box.util.PageVoFactory;


@Controller
public class ManageRetireDetailController {
	@Autowired
	private ManageDao mdao;
	@Autowired
	private PageVoFactory pageVoFactory;
	
	@RequestMapping(value="/management_retire_detail.box")
	public ModelAndView getManagementStaffDetail(String id) {
		ModelAndView mav = new ModelAndView("management/management_retire_detail");
		
		EmployeeVO evo = mdao.getIdByEmp(id);
//		System.out.println("호이!컨트롤러"+evo.getId());
		mav.addObject("manageRetireDetailList", evo);
		
		return mav;
	}
}

