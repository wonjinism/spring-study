package kr.kfc.kiosk;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.kfc.kiosk.DAO.MenuDAO;
import kr.kfc.kiosk.VO.Menu;

@Controller
public class MenuController {

	@Autowired
	MenuDAO dao;
	
	@RequestMapping(value = "/selectMenuList", method = RequestMethod.GET)
	public String selectMenuList(@RequestParam(defaultValue="consumer") String jsp, Model model) {
		ArrayList<Menu> menuList = dao.selectMenuList();
		model.addAttribute("menuList", menuList);
		return jsp;
	}	

	@RequestMapping(value = "/addMenu", method = RequestMethod.GET)
	public String addMenu(Menu menu, RedirectAttributes ra) {
		ra.addAttribute("jsp", "admin");
		return "redirect:/selectMenuList";
	}
	
	@RequestMapping(value = "/updateMenu", method = RequestMethod.GET)
	public String updateMenu(Menu menu, RedirectAttributes ra) {
		ra.addAttribute("jsp", "admin");
		return "redirect:/selectMenuList";
	}
	
	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public String detail(int menu_seq) {
//		Menu menu = dao.selectMenu(menu_seq);
		
//		return "detail";
		return "redirect:/selectMenuList";
	}	
	
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String search(String search, String jsp) {
		
		return jsp;
	}


	
	
//	updateMenu(Menu menu)
//	
//	페이징 기능 있음 (우선순위 낮음)
//	searchMenuList(String search, String jsp)
}
