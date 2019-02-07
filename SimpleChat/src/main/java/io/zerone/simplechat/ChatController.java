package io.zerone.simplechat;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import io.zerone.simplechat.DAO.ChatDAO;
import io.zerone.simplechat.VO.Chat;
import io.zerone.simplechat.VO.Room;

@Controller
public class ChatController {

	@Autowired
	ChatDAO dao;

	@RequestMapping(value = "/listRoom", method = RequestMethod.GET)
	public String listRoom(Model model) {
		ArrayList<Room> roomList = null;
		roomList = dao.selectRoomList();
		model.addAttribute("roomList", roomList);
		return "list";
	}

	@RequestMapping(value = "/createRoom", method = RequestMethod.GET)
	public String createRoom(Room room, HttpSession session) {
		
		room.setUser_id("admin");
//		String user_id = (String) session.getAttribute("user_id");
		
		dao.insertRoom(room);
		
		return "redirect:/chat?chatNum=" + room.getRoom_seq();
	}

	
	@RequestMapping(value = "/chat", method = RequestMethod.GET)
	public String chat(int chatNum) {
		
		Room room = dao.selectRoom(chatNum);
		ArrayList<Chat> chatList = dao.selectChatList(chatNum);
		
		
		return "chat";
	}
	
	@RequestMapping(value = "/message", method = RequestMethod.POST)
	public String message(Chat chat) {
		
		dao.insertChat()
		
		return "redirect:/chat";
	}
	
}
