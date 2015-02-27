package box.cont.elec;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import vo.ElectVO;
import vo.InvenVO;
import vo.PageVO;
import vo.SearchVO;
import box.dao.ElectDao;
import box.dao.InventoryDao;
import box.util.PageVoFactory;

@Controller
public class ElectronicApprovalController {
	@Autowired
	private ElectDao dao;
	@Autowired
	private PageVoFactory pageVoFactory;
	
	@RequestMapping(value="/electsave.box", method=RequestMethod.POST)
	public ModelAndView esave(ElectVO evo, SearchVO svo, Integer page) {
		
		System.out.println("내용 : "+evo.getCont());
		dao.addAppr(evo);
		System.out.println("결재id : "+evo.getId());
		System.out.println("결재제목 : "+evo.getTitle());
		System.out.println("id : "+evo.getAppr_id());
		int aid = evo.getAppr_id();
		evo.setId(aid-1);
		dao.addAppr_id(evo);
		
		
		PageVO pageInfo = null;
//		if (svo.getSearchType() == null || 
//				svo.getSearchValue() == null ||
//				svo.getSearchType().equals("") ||
//				svo.getSearchValue().equals("")) {
//			System.out.println("no searchType or no keyword");
//			pageInfo = pageVoFactory.makePageVO(page, dao.getTotalCount());
//			System.out.println("pageInfo : "+pageInfo);
//		} else {
			System.out.println("keyword : " + svo.getSearchValue());
			pageInfo = pageVoFactory.makePageVO(page, dao.getTotalSearchCount(svo));
//		}
		svo.setBegin(String.valueOf(pageInfo.getStartRow()));
		svo.setEnd(String.valueOf(pageInfo.getEndRow()));
		System.out.println("begin : " + svo.getBegin());
		System.out.println("end : " + svo.getEnd());
		System.out.println("searchValue : " + svo.getSearchValue());
		System.out.println("searchType : " + svo.getSearchType());
		
		List<ElectVO> list = dao.getListSearch(svo);
		
		
		ModelAndView mav = new ModelAndView("redirect:/electronic_approval.box");
		mav.addObject("listv", list);
		
		mav.addObject("pageInfo", pageInfo);
		
		return mav;
	}
}
