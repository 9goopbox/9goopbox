package box.cont.login;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import vo.employeeVO;
import box.dao.employeeDao;

@Controller
public class LoginController {
	@Autowired
	private employeeDao dao;
	
	@RequestMapping(value="/loginok.box", method=RequestMethod.POST)
	public ModelAndView loginok(employeeVO vo, HttpSession session) {
		int res = dao.login(vo);
		ModelAndView mav = new ModelAndView();
		if(res>0) {
			session.setAttribute("userid", vo.getId());
			mav.setViewName("redirect:/index.box");
		}else{
			//error페이지
			mav.setViewName("error");
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
