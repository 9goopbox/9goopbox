package box.cont.chart;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ChartsInquiryController {

	@RequestMapping(value="/charts_inquiry.box")
	public ModelAndView charts_detail() {
		ModelAndView mav = new ModelAndView("charts/charts_inquiry");
		
		
		
		return mav;
	}
}
