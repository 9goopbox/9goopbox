package box.cont.join;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		@RequestMapping(value="/idcheck.box")
		public ModelAndView idChk(String id, HttpServletRequest request,
				HttpServletResponse response) {
			
			System.out.println("id : "+id);
			
			int res = dao.idChk(id);
			
			
			
//			response.setCharacterEncoding("EUC-KR");
//			PrintWriter writer = null;
//			if(res>0) {
//				try{
//					writer = response.getWriter();
//					writer.println("<script type='text/javascript'>");
//					writer.println("alert('ID가 중복되었습니다.');");
//					writer.println("history.back();");
//					writer.println("</script>");
//					writer.flush();
//				} catch(IOException e) {
//					e.printStackTrace();
//				} finally {
//					if(writer != null) {
//						writer.close();
//					}
//				}
//			}else{
//				try{
//					writer = response.getWriter();
//					writer.println("<script type='text/javascript'>");
//					writer.println("alert('사용가능한 ID입니다.');");
//					writer.println("history.back();");
//					writer.println("</script>");
//					writer.flush();
//				} catch(IOException e) {
//					e.printStackTrace();
//				} finally {
//					if(writer != null) {
//						writer.close();
//					}
//				}
//			}
			
			ModelAndView mav = new ModelAndView("auth/idchk");
			mav.addObject("cnt", res);
			return mav;
		}
		
		
}
