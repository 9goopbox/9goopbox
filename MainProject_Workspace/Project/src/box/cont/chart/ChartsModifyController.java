package box.cont.chart;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import vo.ChartVO;
import vo.EmployeeVO;
import vo.PageVO;
import vo.PatientVO;
import vo.SearchVO;
import vo.TreatmentVO;
import vo.view.ChartDisplayVO;
import vo.view.ChartTreatmentVO;
import box.dao.ChartDao;
import box.dao.ChartMakeDao;
import box.dao.EmployeeDao;
import box.dao.PatientDao;
import box.util.PageVoFactory;

@Controller
public class ChartsModifyController {
	@Autowired
	ChartDao cdao;
	
	@Autowired
	EmployeeDao edao;
	
	@Autowired
	PatientDao pdao;;

	@RequestMapping(value = "/charts_remove.box")
	public ModelAndView removeChart(int id) {
		int deletedCount = cdao.removeById(id);
		ModelAndView mav = new ModelAndView("util/ajax_redirect");
		if (deletedCount != 0) {
			mav.addObject("address", "../charts_inquiry.box");
			mav.addObject("alertValue", deletedCount + "개의 차트를 삭제하는데 성공했습니다!");
		} else {
			mav.addObject("address", "../charts_detail.box?id="+id);
			mav.addObject("alertValue", "차트를 삭제하지 못했습니다");
		}
		
		return mav;
	}

	@RequestMapping(value="/charts_edit.box")
	ModelAndView getChartsDetail(int id) {
		
		ModelAndView mav = new ModelAndView("charts/charts_edit");
		ChartVO cvo = cdao.getChartById(id);
		EmployeeVO evo = edao.getEmployeeById(cvo.getDoctor_id());
		PatientVO pvo = pdao.getPatientById(cvo.getPatient_id());
		
		mav.addObject("cvo", cvo); // chart vo
		mav.addObject("evo", evo); // doctor employee vo
		mav.addObject("pvo", pvo); // patient vo
		return mav;
	}
	
}
