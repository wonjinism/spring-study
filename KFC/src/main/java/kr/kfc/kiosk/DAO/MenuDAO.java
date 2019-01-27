package kr.kfc.kiosk.DAO;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.kfc.kiosk.VO.Menu;

@Repository
public class MenuDAO {
	
	@Autowired
	SqlSession session;
	
	public ArrayList<Menu> selectMenuList(){
		MenuMapper mapper = session.getMapper(MenuMapper.class);
		ArrayList<Menu> menuList = null;
		try {
			menuList = mapper.selectMenuList();
		} catch (Exception e) {
			e.printStackTrace();
			return menuList;
		}
		return menuList;
	}

	public Menu selectMenu(int menu_id){
		MenuMapper mapper = session.getMapper(MenuMapper.class);
		Menu menu = null;
		try {
			menu = mapper.selectMenu(menu_id);
		} catch (Exception e) {
			e.printStackTrace();
			return menu;
		}
		return menu;
	}
}
