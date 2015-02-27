package box.cont.notaop.login;

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
		
		int res = dao.login(vo);
		System.out.println("login:"+res);
		if(res>0) {
		
			int doc = dao.seldoctor(vo);
			int nur = dao.selnurse(vo);
			int stf = dao.selstaff(vo);
						
			if(doc>0) { //의사라면
				System.out.println("나는 의사이다");
				session.setAttribute("userid", vo.getId());
				mav.setViewName("redirect:/doctor_page.box");
				//mav.setViewName("redirect:/user_page.box");
			}else if(nur>0){ //간호사 일 경우
				System.out.println("나는 간호사이다");
				session.setAttribute("userid", vo.getId());
				mav.setViewName("redirect:/nurse_page.box");
				//mav.setViewName("redirect:/user_page.box");
			}else if(stf>0){//스태프일 경우
				System.out.println("나는 스태프이다");
				session.setAttribute("userid", vo.getId());
				mav.setViewName("redirect:/staff_page.box");
				//mav.setViewName("redirect:/user_page.box");
			}else{
				//error페이지
				mav.setViewName("login_false");
				//error페이지에 메시지 전달
				mav.addObject("err_msg", "로그인 실패");
				mav.addObject("status", "LoginError");
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
