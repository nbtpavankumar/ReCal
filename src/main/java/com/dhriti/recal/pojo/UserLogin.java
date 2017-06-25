package com.dhriti.recal.pojo;

public class UserLogin {
	// We use LoginToken as the definition of User ID, since UserID is a an
	// auto-increment field
	private String loginToken;

	private String password;

	private String userToken;
	

	public String getLoginToken() {
		return loginToken;
	}

	public void setLoginToken(String loginToken) {
		this.loginToken = loginToken;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUserToken() {
		return userToken;
	}

	public void setUserToken(String userToken) {
		this.userToken = userToken;
	}

	@Override
	public String toString() {
		return "UserLogin [loginToken=" + loginToken + ", password=" + password + ", userToken=" + userToken + "]";
	}

}