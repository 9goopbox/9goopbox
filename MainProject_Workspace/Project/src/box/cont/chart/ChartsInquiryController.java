package box.cont.chart;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import vo.ChartDisplayVO;
import vo.PageVO;
import box.dao.ChartDao;
import box.util.PageVoFactory;

@Controller
public class ChartsInquiryController {
	@Autowired
	private ChartDao dao;
	@Autowired
	private PageVoFactory pageVoFactory;
	
	@RequestMapping(value="/charts_inquiry.box")
	public ModelAndView charts_detail() {
		ModelAndView mav = new ModelAndView("charts/charts_inquiry");
		
		List<ChartDisplayVO> list = dao.getList();
		
		PageVO pageInfo = pageVoFactory.makePageVO(null, list.size());
		
		mav.addObject("chartDisplayList", list);
		mav.addObject("pageInfo", pageInfo);
		
		return mav;
	}
}
