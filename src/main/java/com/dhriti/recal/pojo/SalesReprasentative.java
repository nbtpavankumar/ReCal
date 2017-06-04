package com.dhriti.recal.pojo;

import java.io.Serializable;

public class SalesReprasentative implements Serializable {

	private static final long serialVersionUID = -4170026518081172402L;

	private String salesPerson;
	private String referralCode;
	private String email;

	public String getSalesPerson() {
		return salesPerson;
	}

	public void setSalesPerson(String salesPerson) {
		this.salesPerson = salesPerson;
	}

	public String getReferralCode() {
		return referralCode;
	}

	public void setReferralCode(String referralCode) {
		this.referralCode = referralCode;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

}
