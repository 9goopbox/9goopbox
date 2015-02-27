package box.cont.patient;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import vo.PageVO;
import vo.SearchVO;
import vo.view.PatientDisplayVO;
import box.dao.PatientDao;
import box.util.PageVoFactory;

@Controller
public class PatientInquiryController {
	@Autowired
	private PatientDao dao;
	@Autowired
	private PageVoFactory pageVoFactory;
	
	@RequestMapping(value="/patient_inquiry.box")
	public ModelAndView Patients_detail(SearchVO svo, Integer page) {
		ModelAndView mav = new ModelAndView("patients/patient_inquiry");
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
		 
		List<PatientDisplayVO> list = dao.getList(svo);
		
		mav.addObject("patientDisplayList", list);
		mav.addObject("pageInfo", pageInfo);
		mav.addObject("pageURL", "../patient_inquiry.box");
		
		// nullables
		mav.addObject("searchType", svo.getSearchType());
		mav.addObject("searchValue", svo.getSearchValue());
		
		return mav;
	}
}

