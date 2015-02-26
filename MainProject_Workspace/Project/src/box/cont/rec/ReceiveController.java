package box.cont.rec;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import vo.RecVO;
import box.dao.RecDao;

@Controller
public class ReceiveController {
	
	@Autowired
	private RecDao dao;
	
	@RequestMapping(value="/recRegi.box", method=RequestMethod.POST)
	public ModelAndView recRegi(RecVO vo) {
		System.out.println("cost_get1 : "+vo.getCost_get());
		System.out.println("patinet name2 : " + vo.getName());
		System.out.println("patient id3 :" + vo.getPatient_id());
		
		dao.addPatient(vo);
		System.out.println("patient id4 : "+ vo.getPatient_id());
		System.out.println("patient insert ok5");
		dao.addReceive(vo);
		System.out.println("receive insert ok6");
		
		ModelAndView mav = new ModelAndView("redirect:/receive_register.box");
		return mav;
	}
}
