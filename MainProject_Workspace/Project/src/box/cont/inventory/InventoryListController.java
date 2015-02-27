package box.cont.inventory;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import box.dao.InventoryDao;
import box.util.PageVoFactory;
import vo.EmployeeVO;
import vo.InvenVO;
import vo.PageVO;
import vo.SearchVO;

@Controller
public class InventoryListController {
	@Autowired
	private InventoryDao dao;
	@Autowired
	private PageVoFactory pageVoFactory;
	
	@RequestMapping(value="/invenSearch.box")
	public ModelAndView getInvenList(SearchVO svo, Integer page) {
		ModelAndView mav = new ModelAndView("inventory/inventory_list");
		
		PageVO pageInfo = null;
		if (svo.getSearchType() == null || 
				svo.getSearchValue() == null ||
				svo.getSearchType().equals("") ||
				svo.getSearchValue().equals("")) {
			System.out.println("no searchType or no keyword");
			pageInfo = pageVoFactory.makePageVO(page, dao.getTotalCount());
			System.out.println("pageInfo : "+pageInfo);
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
		
		List<InvenVO> list = dao.getListSearch(svo);
				
		mav.addObject("searchType", svo.getSearchType());
		mav.addObject("manageDisplayList", list);
		mav.addObject("pageInfo", pageInfo);
		mav.addObject("pageURL", "../inventory_list.box");
		
		return mav;
	}
}
