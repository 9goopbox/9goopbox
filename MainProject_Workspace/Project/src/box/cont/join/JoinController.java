package box.cont.join;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import box.dao.JoinDao;
import box.vo.EmployeeVO;

@Controller
public class JoinController {
	@Autowired
	private JoinDao dao;
	
	//회원가입 요청
	@RequestMapping(value="addEmployee.box", method=RequestMethod.POST)
	public ModelAndView addEmployee(EmployeeVO vo,
			@RequestParam String post1, @RequestParam String post2) {
		System.out.println(post1+"-"+post2);
		StringBuffer postv = new StringBuffer();
		postv.append(post1).append("-").append(post2);
		vo.setAddress(postv.toString());
		
		dao.addEmployee(vo);
		ModelAndView mav = new ModelAndView("index.box");
		mav.addObject("name", vo.getName());
		return mav;
	}
	
	//아이디 중복 확인
	@RequestMapping(value="/idcheck.box")
	public ModelAndView idChk(String id) {
		int res = dao.idChk(id);
		ModelAndView mav = new ModelAndView("idchk");
		mav.addObject("cnt", res);
		return mav;
	}
}
