package box.cont.management;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import vo.EmployeeVO;
import vo.PageVO;
import vo.SearchVO;
import box.dao.LoginDao;
import box.dao.ManageDao;
import box.util.PageVoFactory;

@Controller
public class ManageRetireDetailController {
	@Autowired
	private ManageDao dao;
	@Autowired
	private LoginDao dao2;
	@Autowired
	private PageVoFactory pageVoFactory;
	
	@RequestMapping(value="/management_retire_detail.box")
	public ModelAndView managementPay(SearchVO svo, Integer page, HttpSession session) {
		ModelAndView mav = new ModelAndView("management/management_retire_detail");
		
		EmployeeVO evo = new EmployeeVO();
//		${sessionScope.userid}
		String idInSession = (String) session.getAttribute("userid");
		evo.setId(idInSession);
		
		PageVO pageInfo = null;
		if (svo.getSearchType() == null || 
				svo.getSearchValue() == null ||
				svo.getSearchType().equals("") ||
				svo.getSearchValue().equals("")) {
			System.out.println("no searchType or no keyword");
			pageInfo = pageVoFactory.makePageVO(page, dao.getTotalCount2());
		} else {
			System.out.println("keyword : " + svo.getSearchValue());
			pageInfo = pageVoFactory.makePageVO(page, dao.getTotalSearchCount(svo));
		}
		svo.setBegin(String.valueOf(pageInfo.getStartRow()));
		svo.setEnd(String.valueOf(pageInfo.getEndRow()));
		
		System.out.println("begin : " + svo.getBegin());
		System.out.println("end : " + svo.getEnd());
		System.out.println("searchPayValue : " +  evo.getId());
		
		
		svo.setSearchType("1");
		svo.setSearchValue(evo.getId());
		System.out.println("searchPayType : " + svo.getSearchType());
		System.out.println("searchPayValue : " + svo.getSearchValue());
		
		List<EmployeeVO> list = dao.getRetireList2Search(svo);
		System.out.println("list size : " + list.size());
		
		mav.addObject("manageRetireDisplay2List", list);
		mav.addObject("pageInfo", pageInfo);
		mav.addObject("pageURL", "../management_staff.box");
		
		// nullables
		mav.addObject("searchType", 1);
		mav.addObject("searchValue",  evo.getId());
		
		return mav;
	}
}
