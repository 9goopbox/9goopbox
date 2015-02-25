package box.cont.management;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import vo.EmployeeVO;
import vo.PageVO;
import vo.SearchVO;
import box.dao.ManageDao;
import box.util.PageVoFactory;

@Controller
public class ManageStaffController {
	@Autowired
	private ManageDao dao;
	@Autowired
	private PageVoFactory pvof;
	
	/**
	 * shoplist를 따라한 검색출력 컨트롤러
	 * @param vo 검색 vo (검색어 : 필수)
	 * @param page 보고싶은 페이지 (null 가능)
	 * @return mav (컨트롤러임.)
	 */
	// 메서드 오버로딩을 사용해서 검색값이 왔을 때 동작되는 메서드
	@RequestMapping(value = "/management_staff.box")
	public ModelAndView getListSearch(Integer page) {
		SearchVO vo = new SearchVO();
		System.out.println("Test ----------------------------------------");
		//System.out.println("SearchType :" + vo.getSearchType());
		
		// 페이지 정보를 만들때, 검색 결과의 갯수를 기준으로 만듦 
		PageVO pageInfo = pvof.makePageVO(page, dao.getTotalSearchCount(vo));
		
		ModelAndView mav = new ModelAndView("management/management_staff");
		// 기존에 VO값에서 -  검색값이 있다면 포함된 값 - 페이지 범위값을 저장
		vo.setBegin(String.valueOf(pageInfo.getStartRow()));
		vo.setEnd(String.valueOf(pageInfo.getEndRow()));
		System.out.println("pageInfo begin : " + vo.getBegin() + ", end : " + vo.getEnd());
		
		
		List<EmployeeVO> list = dao.getListSearch(vo);
		
		for(EmployeeVO e : list){
			System.out.println("C : "+e.getName());
		}
		System.out.println("search 갯수 : " + list.size());
		
		mav.addObject("pageInfo", pageInfo);
		mav.addObject("glist", list);
		
		// 검색 결과의 보존
		mav.addObject("searchType", vo.getSearchType());
		mav.addObject("searchValue", vo.getSearchValue());
		return mav;
	}
	
	@RequestMapping(value = "/managelist.box")
	public ModelAndView getList(Integer page,SearchVO vo) {

		
//		if (!vo.getSearchType().equals("") || vo.getSearchType() == null) {
//			return getListSearch(vo, page);
//		}
//		
		ModelAndView mav = new ModelAndView();
		
		// 검색시에도 사용하기 위해 일반화함! (메소드화)
		PageVO pageInfo = pvof.makePageVO(page, dao.getTotalCount());
		
		mav.setViewName("management_staff");
		// 기존에 VO값에서 -  검색값이 있다면 포함된 값 - 페이지 범위값을 저장
		vo.setBegin(String.valueOf(pageInfo.getStartRow()));
		vo.setEnd(String.valueOf(pageInfo.getEndRow()));
		
		// vo를 보내어서 서브쿼리로 페이지로 분할된 검색값을 얻어온다.
		List<EmployeeVO> list = dao.getShopList2(vo);
		// shopList.jsp 로 forward 한다.
		mav.addObject("pageInfo", pageInfo);
		mav.addObject("glist", list);
		return mav;
	}
	
	
	@RequestMapping(value = "/management_staff.box", method = RequestMethod.POST)
	public ModelAndView getview(int num) {
		ModelAndView mav = new ModelAndView("manageview");
		EmployeeVO v = dao.getShopView(num);
		mav.addObject("vo", v);
		return mav;
	}
	
//	@RequestMapping(value = "/management_staff.box", method = RequestMethod.POST)
//	public ModelAndView loginok(EmployeeVO vo1, DeptVO vo2, HttpSession session) {
//
//		ModelAndView mav = new ModelAndView();
//		// //////////////////이름,부서,직급
//
//
//		int name = dao.selname(vo1);
//		int pos = dao.selposition(vo1);
//		int dept = dao.seldept(vo2);
//
//		//if (searchValue=name) { // 이름검색
//		if (name>0) {
//			System.out.println("나는 이름을 검색 하였다");
//			session.setAttribute("userid", vo1.getName());
//			mav.addObject("cnt", name);
//		} if (pos>0) {
//		//else if (searchValue=pos) { // 직급검색
//			System.out.println("나는 직급을 검색 하였다");
//			session.setAttribute("posid", vo1.getPosition());
//			mav.addObject("cnt", pos);
//		} if (dept>0) {
//		//else if (searchValue=dept) {// 부서검색
//			System.out.println("나는 부서를 검색 하였다");
//			session.setAttribute("deptid", vo2.getDept_name());
//			mav.addObject("cnt", dept);
//		} else {
//			// error페이지
//			mav.setViewName("login_false");
//			// error페이지에 메시지 전달
//			mav.addObject("err_msg", "로그인 실패");
//			mav.addObject("status", "LoginError");
//		}
//
//		return mav;
//	}
	// <!--------------------------------------------------------!>
	// //아이디 중복 확인
	// @RequestMapping(value="/idcheck.box")
	// public ModelAndView idChk(String id) {
	// int res = dao.idChk(id);
	// ModelAndView mav = new ModelAndView("idchk");
	// mav.addObject("cnt", res);
	// return mav;
	// }
	// <!--------------------------------------------------------!>
}
