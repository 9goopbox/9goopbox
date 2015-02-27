package box.cont.management;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import vo.EmployeeVO;
import box.dao.ManageDao;
import box.util.PageVoFactory;

@Controller
public class ManageStaffDetailController {
	@Autowired
	private ManageDao mdao;
	@Autowired
	private PageVoFactory pageVoFactory;
	
	@RequestMapping(value="/management_staff_detail.box")
	public ModelAndView getManagementStaffDetail(String id) {
		ModelAndView mav = new ModelAndView("management/management_staff_detail");
		
		EmployeeVO evo = mdao.getIdByEmp(id);
		
		mav.addObject("manageStaffDetail", evo);
		//1.파라미터로 받은 id를 employee 테이블에 있는 id와 비교한다
//		if(mdao.getIdByEmp(vo)==id){
//			List<EmployeeVO> list = mdao.getPayListSearch(vo);
//			mav.addObject("managePayDisplayList", list);
//			mav.addObject("searchType", 아이디);
//			mav.addObject("searchValue", 해당 아이디);
//		}
		//2.해당 칼럼 리스트를 보내준다
		//List<EmployeeVO> list = dao.getPayListSearch(svo);
		//3.
		//mav.addObject("managePayDisplayList", list);
		//mav.addObject("searchType", 아이디);
		//mav.addObject("searchValue", 해당 아이디);
		return mav;
	}
}
