package box.cont.chart;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import box.dao.ChartDao;
import box.dao.EmployeeDao;
import box.dao.PatientDao;
import vo.ChartVO;
import vo.EmployeeVO;
import vo.PatientVO;


@Controller
public class ChartsDetailController {
	@Autowired
	ChartDao cdao;
	
	@Autowired
	EmployeeDao edao;
	
	@Autowired
	PatientDao pdao;
	
	@RequestMapping(value="/charts_detail.box")
	ModelAndView getChartsDetail(Integer id) {
		if (id == null) {
			ModelAndView mav = new ModelAndView("util/ajax_redirect");
			mav.addObject("address", "charts/charts_inquiry");
			return mav;
		}
		
		ModelAndView mav = new ModelAndView("charts/charts_detail");
		ChartVO cvo = cdao.getChartById(id);
		EmployeeVO evo = edao.getEmployeeById(cvo.getDoctor_id());
		PatientVO pvo = pdao.getPatientById(cvo.getPatient_id());
		
		mav.addObject("cvo", cvo); // chart vo
		mav.addObject("evo", evo); // doctor employee vo
		mav.addObject("pvo", pvo); // patient vo
		return mav;
	}
}
