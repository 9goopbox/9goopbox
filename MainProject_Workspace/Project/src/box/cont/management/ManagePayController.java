package box.cont.management;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import vo.EmployeeVO;
import vo.PageVO;
import vo.SearchVO;
import box.dao.LoginDao;
import box.dao.ManageDao;
import box.util.PageVoFactory;

@Controller
public class ManagePayController {
	@Autowired
	private ManageDao dao;
	@Autowired
	private LoginDao dao2;
	@Autowired
	private PageVoFactory pageVoFactory;
	
//	@RequestMapping(value="/management_pay.box")
//	public ModelAndView charts_detail(SearchVO svo, Integer page) {
//		ModelAndView mav = new ModelAndView("management/management_pay");
//		PageVO pageInfo = null;
//		if (svo.getSearchType() == null || 
//				svo.getSearchPayValue() == null ||
//				svo.getSearchType().equals("") ||
//				svo.getSearchPayValue().equals("")) {
//			System.out.println("no searchType or no keyword");
//			pageInfo = pageVoFactory.makePageVO(page, dao.getTotalCount());
//		} else {
//			System.out.println("keyword : " + svo.getSearchPayValue());
//			pageInfo = pageVoFactory.makePageVO(page, dao.getTotalSearchCount(svo));
//		}
//		svo.setBegin(String.valueOf(pageInfo.getStartRow()));
//		svo.setEnd(String.valueOf(pageInfo.getEndRow()));
//		System.out.println("begin : " + svo.getBegin());
//		System.out.println("end : " + svo.getEnd());
//		System.out.println("searchPayValue : " + svo.getSearchPayValue());
//		System.out.println("searchPayType : " + svo.getSearchType());
//		List<EmployeeVO> list = dao.getListSearch(svo);
//		System.out.println("list size : " + list.size());
//		
//		mav.addObject("managePayDisplayList", list);
//		mav.addObject("pageInfo", pageInfo);
//		mav.addObject("pageURL", "../management_pay.box");
//		
//		// nullables
//		mav.addObject("searchPayType", svo.getSearchType());
//		mav.addObject("searchPayValue", svo.getSearchPayValue());
//		
//		return mav;
//	}
	@RequestMapping(value="/management_pay.box")
	public ModelAndView managementPay(SearchVO svo, Integer page, HttpSession session) {
		ModelAndView mav = new ModelAndView("management/management_pay");
		
		EmployeeVO evo = new EmployeeVO();
//		${sessionScope.userid}
		String idInSession = (String) session.getAttribute("userid");
		evo.setId(idInSession);
		
		PageVO pageInfo = null;
		if (svo.getSearchType() == null || 
				svo.getSearchPayValue() == null ||
				svo.getSearchType().equals("") ||
				svo.getSearchPayValue().equals("")) {
			System.out.println("no searchType or no keyword");
			pageInfo = pageVoFactory.makePageVO(page, dao.getTotalCount2());
		} else {
			System.out.println("keyword : " + svo.getSearchPayValue());
			pageInfo = pageVoFactory.makePageVO(page, dao.getTotalSearchCount(svo));
		}
		svo.setBegin(String.valueOf(pageInfo.getStartRow()));
		svo.setEnd(String.valueOf(pageInfo.getEndRow()));
		
		System.out.println("begin : " + svo.getBegin());
		System.out.println("end : " + svo.getEnd());
		System.out.println("searchPayValue : " +  evo.getId());
		System.out.println("searchPayType : " + 1);
		
		List<EmployeeVO> list = dao.getPayListSearch(svo);
//		EmployeeVO vo = dao.getPayListSearch(svo);
		System.out.println("list size : " + list.size());
		
		mav.addObject("managePayDisplayList", list);
//		mav.addObject("managePayDisplayList", vo);
		mav.addObject("pageInfo", pageInfo);
		mav.addObject("pageURL", "../management_pay.box");
		
		// nullables
		mav.addObject("searchType", 1);
		mav.addObject("searchValue",  evo.getId());
		
		return mav;
	}
}
