package box.cont.setting;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import box.dao.employeeDaoo;
import vo.EmployeeVO;

@Controller
public class SettingController {
	@Autowired
	private employeeDaoo dao;
	
	@RequestMapping(value="/pwdupdate.box", method=RequestMethod.POST)
	public ModelAndView pwdup(EmployeeVO vo) {
		System.out.println("pwd : "+vo.getPassword());
		
		return null;
	}
}
