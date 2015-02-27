package box.cont.chart;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import vo.ChartVO;
import vo.PageVO;
import vo.PatientVO;
import vo.SearchVO;
import vo.TreatmentVO;
import vo.view.ChartDisplayVO;
import vo.view.ChartTreatmentVO;
import box.dao.ChartDao;
import box.dao.ChartMakeDao;
import box.util.PageVoFactory;

@Controller
public class ChartsMakeController {
	@Autowired
	private ChartMakeDao dao;
	@Autowired
	private PageVoFactory pageVoFactory;

	@RequestMapping(value = "/charts_make_treatment_search.box")
	public ModelAndView charts_make_treatment_search(SearchVO svo, Integer page) {
		ModelAndView mav = new ModelAndView(
				"charts/charts_make_treatment_search");
		System.out.println("---------------");
		PageVO pageInfo = null;
		if (svo.getSearchType() == null || svo.getSearchValue() == null
				|| svo.getSearchType().equals("")
				|| svo.getSearchValue().equals("")) {
			System.out.println("no searchType or no keyword");
			pageInfo = pageVoFactory.makePageVO(page, dao.getListSize());
		} else {
			System.out.println("keyword : " + svo.getSearchValue());
			pageInfo = pageVoFactory.makePageVO(page,
					dao.getListSizeSearch(svo));
		}
		svo.setBegin(String.valueOf(pageInfo.getStartRow()));
		svo.setEnd(String.valueOf(pageInfo.getEndRow()));
		System.out.println("begin : " + svo.getBegin());
		System.out.println("end : " + svo.getEnd());
		System.out.println("searchValue : " + svo.getSearchValue());
		System.out.println("searchType : " + svo.getSearchType());

		List<ChartTreatmentVO> list = dao.getList(svo);

		mav.addObject("chartTreatmentList", list);
		mav.addObject("pageInfo", pageInfo);
		mav.addObject("pageURL", "../charts_make_treatment_search.box");

		// nullables
		mav.addObject("searchType", svo.getSearchType());
		mav.addObject("searchValue", svo.getSearchValue());

		return mav;
	}

	@RequestMapping(value = "/charts_make.box")
	public ModelAndView charts_detail(Integer id) {
		if (id == null) {
			System.out.println("itisnull");
			ModelAndView mav =  charts_make_treatment_search(new SearchVO(), null);
			return mav;
		}
		ModelAndView mav = new ModelAndView("charts/charts_make");
		PatientVO pvo = dao.getPatientByTreatmentId(id);
		mav.addObject("treatment_id", id);
		mav.addObject("patientvo", pvo);
		return mav;
	}
	
	@RequestMapping(value="/charts_submit.box")
	public ModelAndView charts_submit(ChartVO vo) {
		ModelAndView mav = new ModelAndView("util/ajax_redirect");
		dao.addChart(vo);
		
		System.out.println("../charts_detail.box?id=" + vo.getId());
		
		
		mav.addObject("address", "../charts_detail.box?id=" + vo.getId());
		return mav;
	}
	
	@RequestMapping(value="/charts_edit_submit.box")
	public ModelAndView charts_edit_submit(ChartVO vo) {
		ModelAndView mav = new ModelAndView("util/ajax_redirect");
		System.out.println("../charts_detail.box?id=" + vo.getId());
		
		dao.updateChart(vo);
		mav.addObject("address", "../charts_detail.box?id=" + vo.getId());
		//mav.addObject("alertValue","수정되었습니다.");
		return mav;
	}
}
