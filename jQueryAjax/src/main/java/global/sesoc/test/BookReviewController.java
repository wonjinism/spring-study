package global.sesoc.test;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import global.sesoc.test.dao.BookReviewDAO;

@Controller
public class BookReviewController {
	@Autowired
	BookReviewDAO dao;

	@RequestMapping(value ="/", method = RequestMethod.GET)
	public String home() {
		return "book";
	}

}