package box.cont.setting;

import java.io.PrintWriter;
import java.util.Collection;
import java.util.Map;

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
	public ModelAndView pwdup(SettingEmpVO vo) {
		
		System.out.println("pwd : "+vo.getPassword());
		System.out.println("pwdch : "+vo.getPasswordch());
		System.out.println(vo.getPassword().equals(vo.getPasswordch()));
		
		if(!(vo.getPassword().equals(vo.getPasswordch()))) {
			System.out.println("pwdch : "+ vo.getPasswordch());
			
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
