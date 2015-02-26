package box.cont.management;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import vo.EmployeeVO;
import box.dao.LoginDao;
import box.dao.ManageDao;

@Controller
public class ManagePayController {
	@Autowired
	private ManageDao dao;
	
	@RequestMapping(value="/management_pay.box", method=RequestMethod.POST)
	public ModelAndView loginok(EmployeeVO vo, HttpSession session) {
	
	ModelAndView mav = new ModelAndView();
//		
//		// 임시
//		if (true) {
//			mav.setViewName("redirect:/user_page.box");
//			return mav;
//		}
//		
//		int res = dao.login(vo);
//		if(res>0) {
//		
//			int doc = dao.seldoctor(vo);
//			int nur = dao.selnurse(vo);
//			int stf = dao.selstaff(vo);
//						
//			if(doc>0) { //의사라면
//				System.out.println("나는 의사이다");
//				session.setAttribute("userid", vo.getId());
//				mav.setViewName("redirect:/management_pay.box");
//				//mav.setViewName("redirect:/user_page.box");
//			}else if(nur>0){ //간호사 일 경우
//				System.out.println("나는 간호사이다");
//				session.setAttribute("userid", vo.getId());
//				mav.setViewName("redirect:/management_retire.box");
//				//mav.setViewName("redirect:/user_page.box");
//			}else if(stf>0){//스태프일 경우
//				System.out.println("나는 스태프이다");
//				session.setAttribute("userid", vo.getId());
//				mav.setViewName("redirect:/staff_page.box");
//				//mav.setViewName("redirect:/user_page.box");
//			}else{
//				//error페이지
//				mav.setViewName("login_false");
//				//error페이지에 메시지 전달
//				mav.addObject("err_msg", "로그인 실패");
//				mav.addObject("status", "LoginError");
//			}
//		}else{
//			//error페이지
//			mav.setViewName("login_false");
//			//error페이지에 메시지 전달
//			mav.addObject("err_msg", "로그인 실패");
//			mav.addObject("status", "LoginError");
//		}
		return mav;
	}
	//<!--------------------------------------------------------!>
//	//아이디 중복 확인
//		@RequestMapping(value="/idcheck.box")
//		public ModelAndView idChk(String id) {
//			int res = dao.idChk(id);
//			ModelAndView mav = new ModelAndView("idchk");
//			mav.addObject("cnt", res);
//			return mav;
//		}
//<!--------------------------------------------------------!>
}
