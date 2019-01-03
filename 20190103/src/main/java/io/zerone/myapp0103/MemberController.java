package io.zerone.myapp0103;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MemberController {
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public void login() {

	}

	// VO를 만들어서 받아주는 방식
//	@RequestMapping(value = "/success", method = RequestMethod.GET)
//	public String success(User user, Model model) {
//		String result = user.getId() + " " + user.getPw();
//		System.out.println(result);
//		return "login";
//	}
	
	// Name을 파라미터로 바로 받아주는 방식
	@RequestMapping(value = "/success", method = RequestMethod.POST)
	public String success(String id, String pw, HttpSession session) {
		String result = id + " " + pw;
		System.out.println(result);
		session.setAttribute("id", id); // 3시간 정도 저장됨
		System.out.println(session.getAttribute("id"));
		return "chatting";
	}
}
