package kr.kfc.kiosk.DAO;

import java.util.ArrayList;

import kr.kfc.kiosk.VO.Menu;

public interface MenuMapper {
	public int insertMenu(Menu menu);
	public int updateMenu(Menu menu);
	public ArrayList<Menu> selectMenuList();
	public Menu selectMenu(int menu_id);
}
