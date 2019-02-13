package io.zerone.todolist;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import io.zerone.todolist.DAO.TodoDAO;

@Controller
public class TodoController {
	
	@Autowired
	TodoDAO dao;
	
	@RequestMapping( value = "/selectTodoList", method = RequestMethod.GET)
	public String selectTodoList() {
		return "home";
	}
}
