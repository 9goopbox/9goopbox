package box.cont.setting;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import box.dao.SettingDao;
import vo.EmployeeVO;

@Controller
public class SettingController {
	@Autowired
	private SettingDao dao;
	
	@RequestMapping(value="/pwdUpdate.box", method=RequestMethod.POST)
	public ModelAndView pwdup(EmployeeVO vo) {
		
		System.out.println("pwd : "+vo.getPassword());
		
		dao.pwdUpdate(vo);
		ModelAndView mav = new ModelAndView("redirect:/settings.box");
		
		return mav;
	}
	
	@RequestMapping(value="/profileUpdate.box", method=RequestMethod.POST)
	public ModelAndView profile(EmployeeVO vo) {
		System.out.println(vo.getName());
		dao.profileUpdate(vo);
		ModelAndView mav = new ModelAndView("redirect:/settings.box");
		mav.addObject(vo);
		
		return mav;
	}
	
}
