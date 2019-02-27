package io.zerone.moneydiary;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import io.zerone.moneydiary.DAO.AccountDAO;
import io.zerone.moneydiary.VO.Account;

@Controller
public class AccountController {
	
	@Autowired
	AccountDAO dao;
	
	@RequestMapping(value = "/newAccount", method = RequestMethod.POST)
	public @ResponseBody int insertAccount(Account account) {
		int result = dao.insertAccount(account);
		return result;
	}
	
	@RequestMapping(value = "/checkAccount", method = RequestMethod.POST)
	public @ResponseBody int selectAccount(Account account, HttpSession session) {
		Account result = dao.selectAccount(account);
		/*
		 * 0 : ID�� ���� ����
		 * -1 : ID�� ������ PW�� ����
		 * 1 : ID�� PW ��� ����
		 */
		if(result != null) {
			if(result.getPw().equals(account.getPw())) {
				session.setAttribute("id", account.getId());
				return 1; // ��� ��ȣ���� ����
			}else {
				return -1; // ��� ��ȣ ����
			}
		}else {
			return 0; // ������ ���� ����
		}
	}
	
}
