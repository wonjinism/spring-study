package global.sesoc.test.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import global.sesoc.test.vo.BookReview;

@Repository
public class BookReviewDAO {
	
	@Autowired
	SqlSession session;

	private static final Logger logger = LoggerFactory.getLogger(BookReviewDAO.class);

	public List<BookReview> reviewList() {
		//
		return null;
	}
	public int reviewWrite(BookReview bookReview) {
		//
		return 0;

	}
	public int reviewDelete(int seq) {
		//
		
		return 0;
	}
}
