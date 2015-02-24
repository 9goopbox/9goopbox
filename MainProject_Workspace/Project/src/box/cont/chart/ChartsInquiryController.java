package box.cont.chart;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import vo.ChartDisplayVO;
import box.dao.ChartDao;

@Controller
public class ChartsInquiryController {
	@Autowired
	private ChartDao dao;
	
	@RequestMapping(value="/charts_inquiry.box")
	public ModelAndView charts_detail() {
		ModelAndView mav = new ModelAndView("charts/charts_inquiry");
		
		List<ChartDisplayVO> list = dao.getList();
		mav.addObject("chartDisplayList", list);
		
		return mav;
	}
}
