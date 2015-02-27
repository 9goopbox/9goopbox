package box.cont.management;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import vo.EmployeeVO;
import vo.PageVO;
import vo.SearchVO;
import box.dao.ManageDao;
import box.util.PageVoFactory;

@Controller
public class ManageStaffController {
	@Autowired
	private ManageDao dao;
	@Autowired
	private PageVoFactory pageVoFactory;
	
	@RequestMapping(value="/management_staff.box")
	public ModelAndView charts_detail(SearchVO svo, Integer page) {
		ModelAndView mav = new ModelAndView("management/management_staff");
		PageVO pageInfo = null;
		if (svo.getSearchType() == null || 
				svo.getSearchValue() == null ||
				svo.getSearchType().equals("") ||
				svo.getSearchValue().equals("")) {
			System.out.println("no searchType or no keyword");
			pageInfo = pageVoFactory.makePageVO(page, dao.getTotalCount());
		} else {
			System.out.println("keyword : " + svo.getSearchValue());
			pageInfo = pageVoFactory.makePageVO(page, dao.getTotalSearchCount(svo));
		}
		svo.setBegin(String.valueOf(pageInfo.getStartRow()));
		svo.setEnd(String.valueOf(pageInfo.getEndRow()));
		System.out.println("begin : " + svo.getBegin());
		System.out.println("end : " + svo.getEnd());
		System.out.println("searchValue : " + svo.getSearchValue());
		System.out.println("searchType : " + svo.getSearchType());
		
		List<EmployeeVO> list = dao.getListSearch(svo);
				
		
		mav.addObject("manageDisplayList", list);
		mav.addObject("pageInfo", pageInfo);
		mav.addObject("pageURL", "../management_staff.box");
		
		// nullables
		mav.addObject("searchType", svo.getSearchType());
		mav.addObject("searchValue", svo.getSearchValue());
		
		return mav;
	}

}
