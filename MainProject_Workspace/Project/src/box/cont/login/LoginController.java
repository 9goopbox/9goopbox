package box.cont.login;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import vo.EmployeeVO;
import box.dao.LoginDao;

@Controller
public class LoginController {
	@Autowired
	private LoginDao dao;
	
	@RequestMapping(value="/loginok.box", method=RequestMethod.POST)
	public ModelAndView loginok(EmployeeVO vo, HttpSession session) {
		
		ModelAndView mav = new ModelAndView();
		
		// 임시
		if (true) {
			mav.setViewName("redirect:/user_page.box");
			return mav;
		}
		int res = dao.login(vo);
		if(res>0) {
			int doc = dao.seldoctor(vo);
			int nur = dao.selnurse(vo);
						
			if(doc>0) { //의사라면
				session.setAttribute("userid", vo.getId());
				mav.setViewName("redirect:/doctor_page.box");
			}else if(nur>0){ //간호사 일 경우
				session.setAttribute("userid", vo.getId());
				mav.setViewName("redirect:/nurse_page.box");
			}else{
				session.setAttribute("userid", vo.getId());
				mav.setViewName("redirect:/staff_page.box");
			}
		}else{
			//error페이지
			mav.setViewName("login_false");
			//error페이지에 메시지 전달
			mav.addObject("err_msg", "로그인 실패");
			mav.addObject("status", "LoginError");
		}
		return mav;
	}
	
	@RequestMapping(value="logout.box")
	public ModelAndView logout(HttpSession session) {
		session.removeAttribute("userid");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/index.box");
		return mav;
	}
	
}
