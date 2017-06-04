package com.dhriti.recal.pojo;

import java.io.Serializable;
import java.util.Date;

/**
 * 
 * @author Giridhar
 *
 */
public class AdminUsers implements Serializable {

	private static final long serialVersionUID = -89746958864635043L;

	private String authorizeEmail;
	private String password;
	private String name;
	private String mobileNo;

	private Date createdOn;
	private Date lastLogin;

	public String getAuthorizeEmail() {
		return authorizeEmail;
	}

	public void setAuthorizeEmail(String authorizeEmail) {
		this.authorizeEmail = authorizeEmail;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getMobileNo() {
		return mobileNo;
	}

	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}

	public Date getCreatedOn() {
		return createdOn;
	}

	public void setCreatedOn(Date createdOn) {
		this.createdOn = createdOn;
	}

	public Date getLastLogin() {
		return lastLogin;
	}

	public void setLastLogin(Date lastLogin) {
		this.lastLogin = lastLogin;
	}

}
