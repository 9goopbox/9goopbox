package box.cont.management;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import vo.DeptVO;
import vo.EmployeeVO;
import box.dao.LoginDao;
import box.dao.ManageDao;

@Controller
public class ManageStaffController {
	@Autowired
	private ManageDao dao;

	@RequestMapping(value = "/management_staff.box", method = RequestMethod.POST)
	public ModelAndView loginok(EmployeeVO vo1, DeptVO vo2, HttpSession session) {

		ModelAndView mav = new ModelAndView();
		// //////////////////이름,부서,직급

		// // 임시
		// if (true) {
		// mav.setViewName("redirect:/user_page.box");
		// return mav;
		// }

		int name = dao.selname(vo1);
		int pos = dao.selposition(vo1);
		int dept = dao.seldept(vo2);

		//if (searchValue=name) { // 이름검색
		if (name>0) {
			System.out.println("나는 이름을 검색 하였다");
			session.setAttribute("userid", vo1.getName());
			mav.addObject("cnt", name);
		} if (pos>0) {
		//else if (searchValue=pos) { // 직급검색
			System.out.println("나는 직급을 검색 하였다");
			session.setAttribute("posid", vo1.getPosition());
			mav.addObject("cnt", pos);
		} if (dept>0) {
		//else if (searchValue=dept) {// 부서검색
			System.out.println("나는 부서를 검색 하였다");
			session.setAttribute("deptid", vo2.getDept_name());
			mav.addObject("cnt", dept);
		} else {
			// error페이지
			mav.setViewName("login_false");
			// error페이지에 메시지 전달
			mav.addObject("err_msg", "로그인 실패");
			mav.addObject("status", "LoginError");
		}

		return mav;
	}
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
