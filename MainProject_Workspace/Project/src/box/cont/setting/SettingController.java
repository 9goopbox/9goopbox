package box.cont.setting;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.Writer;
import java.util.Collection;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.Response;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import box.dao.SettingDao;
import vo.EmployeeVO;
import vo.SettingEmpVO;

@Controller
public class SettingController {
	@Autowired
	private SettingDao dao;
	
	@RequestMapping(value="/pwdUpdate.box", method=RequestMethod.POST)
	public ModelAndView pwdup(SettingEmpVO vo,
			HttpServletRequest request, HttpServletResponse response) {
		
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
		ModelAndView mav = new ModelAndView("redirect:/settings.box");
		
		return mav;
	}
	
	
	@RequestMapping(value="/profileUpdate.box", method=RequestMethod.POST)
	public ModelAndView profile(SettingEmpVO vo) {
		System.out.println(vo.getName());
		dao.profileUpdate(vo);
		ModelAndView mav = new ModelAndView("redirect:/settings.box");
		mav.addObject(vo);
		
		return mav;
	}
	
}
