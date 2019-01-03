package io.zerone.myapp0103;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import VO.Message;

@Controller
public class ChattingController {
	static ArrayList<Message> messageList = new ArrayList<Message>();
	
	@RequestMapping(value = "/chatting", method = RequestMethod.GET)
	public void chatting(HttpSession session, Model model) {
		model.addAttribute("messageList", messageList);
	}
	
	@RequestMapping(value = "/sendMessage", method = RequestMethod.POST)
	public String sendMessage(Message message, Model model) {
		messageList.add(0, message);
		
		for (Message msg : messageList) {
			System.out.println(msg.toString());
		}
		model.addAttribute("messageList", messageList);
		return "chatting";
	}
}
