package box.cont.join;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import vo.RegisterVO;
import box.dao.JoinDao;

@Controller
public class JoinController {
	@Autowired
	private JoinDao dao;
	
	//회원가입 요청
	@RequestMapping(value="/addEmployee.box", method=RequestMethod.POST)
	public ModelAndView addEmployee(RegisterVO vo,
			@RequestParam String post1, @RequestParam String post2, 
			@RequestParam String addr1, @RequestParam String addr2) {
		System.out.println(post1+"-"+post2);
		StringBuffer addrv = new StringBuffer();
		addrv.append(post1).append("-").append(post2);
		addrv.append(addr1).append(" ").append(addr2);
		vo.setAddress(addrv.toString());
		
		System.out.println(addrv);
		dao.addEmployee(vo);
		ModelAndView mav = new ModelAndView("redirect:/index.box");
		mav.addObject("name", vo.getName());
		return mav;
	}
	
	// 아이디 중복확인!
		@RequestMapping(value="/idcheck.kosta")
		public ModelAndView idChk(String id){
			int res = dao.idChk(id);
			ModelAndView mav = new ModelAndView("idchk");
			mav.addObject("cnt", res);
			return mav;
		}
		
		
}
