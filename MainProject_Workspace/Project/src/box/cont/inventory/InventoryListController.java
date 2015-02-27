package box.cont.inventory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import box.dao.InventoryDao;
import vo.SearchVO;

@Controller
public class InventoryListController {
	@Autowired
	private InventoryDao dao;
	
	@RequestMapping(value="/invenSearch.box")
	public ModelAndView getInvenList(int page, SearchVO vo) {
		
		
		
		return null;
	}
}
