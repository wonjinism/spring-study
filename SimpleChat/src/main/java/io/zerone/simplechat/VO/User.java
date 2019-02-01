package io.zerone.simplechat.VO;

public class User {
	private String user_id;
	private String user_password;
	private String user_regdate;

	public User() {
	}

	public User(String user_id, String user_password, String user_regdate) {
		this.user_id = user_id;
		this.user_password = user_password;
		this.user_regdate = user_regdate;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_password() {
		return user_password;
	}

	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}

	public String getUser_regdate() {
		return user_regdate;
	}

	public void setUser_regdate(String user_regdate) {
		this.user_regdate = user_regdate;
	}

	@Override
	public String toString() {
		return "User [user_id=" + user_id + ", user_password=" + user_password + ", user_regdate=" + user_regdate + "]";
	}

}
