package box.cont.chart;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import vo.ChartDisplayVO;
import vo.PageVO;
import vo.SearchVO;
import box.dao.ChartDao;
import box.util.PageVoFactory;

@Controller
public class ChartsInquiryController {
	@Autowired
	private ChartDao dao;
	@Autowired
	private PageVoFactory pageVoFactory;
	
	@RequestMapping(value="/charts_inquiry.box")
	public ModelAndView charts_detail(SearchVO svo, Integer page) {
		ModelAndView mav = new ModelAndView("charts/charts_inquiry");
		PageVO pageInfo = null;
		if (svo.getSearchType() == null || 
				svo.getSearchValue() == null ||
				svo.getSearchType().equals("") ||
				svo.getSearchValue().equals("")) {
			System.out.println("no searchType or no keyword");
			pageInfo = pageVoFactory.makePageVO(page, dao.getListSize());
		} else {
			System.out.println("keyword : " + svo.getSearchValue());
			pageInfo = pageVoFactory.makePageVO(page, dao.getListSizeSearch(svo));
		}
		svo.setBegin(String.valueOf(pageInfo.getStartRow()));
		svo.setEnd(String.valueOf(pageInfo.getEndRow()));
		System.out.println("begin : " + svo.getBegin());
		System.out.println("end : " + svo.getEnd());
		System.out.println("searchValue : " + svo.getSearchValue());
		System.out.println("searchType : " + svo.getSearchType());
		
		List<ChartDisplayVO> list = dao.getList(svo);
		
		mav.addObject("chartDisplayList", list);
		mav.addObject("pageInfo", pageInfo);
		mav.addObject("pageURL", "../charts_inquiry.box");
		
		return mav;
	}
}

