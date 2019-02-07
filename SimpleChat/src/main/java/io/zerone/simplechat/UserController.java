package io.zerone.simplechat;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import io.zerone.simplechat.DAO.UserDAO;
import io.zerone.simplechat.VO.User;

@Controller
public class UserController {

	@Autowired
	UserDAO dao;
	
	@RequestMapping(value = "/signUp", method = RequestMethod.POST)
	public String signUp(User user, Model model) {
		User checkUser = dao.selectUser(user);
		if(checkUser == null) {
			dao.insertUser(user);
			model.addAttribute("user_id", user.getUser_id());
			model.addAttribute("warning", "ȸ�� ������ �Ϸ�ƽ��ϴ�.");
			return "home";
		}else {
			model.addAttribute("user_id", user.getUser_id());
			model.addAttribute("warning", "�̹� ���Ե� �����Դϴ�.");
			return "join";
		}
	}
	
	@RequestMapping(value = "/signIn", method = RequestMethod.POST)
	public String signIn(User user, Model model, HttpSession session) {
		User checkUser = dao.selectUser(user);
		if(checkUser == null) {
			model.addAttribute("warning", "�������� ���� ID�Դϴ�.");
			model.addAttribute("user_id", user.getUser_id());
			return "home";
		}else if(checkUser.getUser_password().equals(user.getUser_password())) {
			System.out.println("�α��� ����! " + checkUser); //// 
			session.setAttribute("user_id", user.getUser_id());
			System.out.println(user.getUser_id() + " ���� ����"); //// 
			return "redirect:/list";
		}else {
			model.addAttribute("warning", "��� ��ȣ�� Ȯ���� �ּ���.");
			model.addAttribute("user_id", user.getUser_id());
			return "home";
		}
	}
}
