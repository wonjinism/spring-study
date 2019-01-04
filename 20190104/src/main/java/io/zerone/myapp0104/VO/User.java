package io.zerone.myapp0104.VO;

public class User {
	private String id;
	private String pw;

	public User(String id, String pw) {
		this.id = id;
		this.pw = pw;
	}

	public User() {
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", pw=" + pw + "]";
	}

}
