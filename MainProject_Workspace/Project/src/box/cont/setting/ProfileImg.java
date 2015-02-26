package box.cont.setting;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import vo.SettingEmpVO;
import box.dao.SettingDao;

@Controller
public class ProfileImg {
	
	@Autowired
	private SettingDao dao;
	
	@RequestMapping(value="/imgup.box", method=RequestMethod.POST)
	public ModelAndView saveImg(SettingEmpVO vo, HttpServletRequest req) {
		
		System.out.println("vo.getUprofile_img: "+vo.getUprofile_img());
		String path = req.getRealPath("/upload");
		System.out.println("path : " +path);
		String upPath = path+"\\"+vo.getUprofile_img().getOriginalFilename();
		System.out.println("upPath : "+upPath);
		File f = new File(upPath);
		
		try {
			vo.getUprofile_img().transferTo(f);
		}catch(IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		vo.setUp_profile_img(vo.getUprofile_img().getOriginalFilename());
		System.out.println("FileName : "+vo.getUp_profile_img());
		
		dao.imgUp(vo);
		ModelAndView mav = new ModelAndView("common/settings");
		mav.addObject("imgName", vo.getUprofile_img().getOriginalFilename());
		mav.addObject("vo", vo);
		return mav;
	}
}
