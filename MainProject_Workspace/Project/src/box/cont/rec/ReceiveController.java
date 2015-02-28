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
		System.out.println("patient id5 : "+ vo.getPatient_id());
		System.out.println("patient insert ok6");
		
		int pid=vo.getPatient_id();
		vo.setPatient_id(pid-1);
		System.out.println("pid-1 7: " + vo.getPatient_id());
		
		dao.addReceive(vo);
		System.out.println("receive insert ok11");
		
		ModelAndView mav = new ModelAndView("/receive_register.box");
		return mav;
	}		
}
