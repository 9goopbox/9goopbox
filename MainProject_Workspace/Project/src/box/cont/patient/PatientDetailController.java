package box.cont.patient;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import box.dao.PatientDao;
import box.dao.EmployeeDao;
import vo.PatientVO;
import vo.EmployeeVO;


@Controller
public class PatientDetailController {
	@Autowired
	EmployeeDao edao;
	
	@Autowired
	PatientDao pdao;
	
	@RequestMapping(value="/patient_detail.box")
	ModelAndView getPatientsDetail(Integer id) {
		if (id == null) {
			ModelAndView mav = new ModelAndView("util/ajax_redirect");
			mav.addObject("address", "patient/patient_inquiry");
			return mav;
		}
		
		ModelAndView mav = new ModelAndView("patient/patient_detail");
		PatientVO pvo = pdao.getPatientById(id);
		EmployeeVO evo = edao.getEmployeeById(pvo.getDoctor_id());
		
		mav.addObject("evo", evo); // doctor employee vo
		mav.addObject("pvo", pvo); // patient vo
		return mav;
	}
}
