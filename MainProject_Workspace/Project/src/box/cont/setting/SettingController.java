package box.cont.setting;

import java.io.IOException;
import java.io.PrintWriter;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import box.dao.SettingDao;
import vo.SettingEmpVO;

@Controller
public class SettingController {
	@Autowired
	private SettingDao dao;
	
	@RequestMapping(value="/pwdUpdate.box", method=RequestMethod.POST)
	public ModelAndView pwdup(SettingEmpVO vo,
			HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		vo.setId((String) session.getAttribute("userid"));
		System.out.println("pwd : "+vo.getPassword());
		System.out.println("pwdch : "+vo.getPasswordch());
		System.out.println(vo.getPassword().equals(vo.getPasswordch()));
		
		if (!(vo.getPassword().equals(vo.getPasswordch()))) {
			System.out.println("pwdch : " + vo.getPasswordch());
			PrintWriter writer = null;
			response.setCharacterEncoding("EUC-KR");
			response.setContentType("text/html;charset=EUC-KR");
			try {
				writer = response.getWriter();
				writer.println("<script type='text/javascript'>");
				writer.println("alert('비밀번호를 다시 확인해주세요.');");
				writer.println("history.back();");
				writer.println("</script>");
				writer.flush();
			} catch (IOException e) {
				System.out.println("errrrrrrrrrrrrrrrr");
				e.printStackTrace();
			} finally {
				if (writer != null)
					writer.close();
			}
		}
		dao.pwdUpdate(vo);
		ModelAndView mav = new ModelAndView("util/ajax_redirect");
		mav.addObject("address", "../settings.box");
		
		return mav;
	}
	
	// 프로필 변경	
	@RequestMapping(value="/profileUpdate.box", method=RequestMethod.POST)
	public ModelAndView profile(SettingEmpVO vo, HttpSession session) {
		vo.setId((String) session.getAttribute("userid"));
		System.out.println("이름 : "+ vo.getName());
		dao.profileUpdate(vo);
		ModelAndView mav = new ModelAndView("redirect:/settings.box");
		mav.addObject("address", vo.getAddress());
		System.out.println("동네 : " + vo.getAddress());
		mav.addObject(vo);
		System.out.println("주소 : " + vo.getAddress());
		return mav;
	}
}
