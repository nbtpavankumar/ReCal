package com.dhriti.recal.pojo;

import java.io.Serializable;
import java.util.Date;

public class ApplicationsDetails implements Serializable {

	private static final long serialVersionUID = -674730289471357792L;

	private String applicationId;
	private String ApplicantName;
	private String amount;
	private String currency;
	private String tennure;
	private String status;
	private Date ReceivedOn;
	private Date ExpiryDate;

	public String getApplicationId() {
		return applicationId;
	}

	public void setApplicationId(String applicationId) {
		this.applicationId = applicationId;
	}

	public String getApplicantName() {
		return ApplicantName;
	}

	public void setApplicantName(String applicantName) {
		ApplicantName = applicantName;
	}

	public String getAmount() {
		return amount;
	}

	public void setAmount(String amount) {
		this.amount = amount;
	}

	public String getCurrency() {
		return currency;
	}

	public void setCurrency(String currency) {
		this.currency = currency;
	}

	public String getTennure() {
		return tennure;
	}

	public void setTennure(String tennure) {
		this.tennure = tennure;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Date getReceivedOn() {
		return ReceivedOn;
	}

	public void setReceivedOn(Date receivedOn) {
		ReceivedOn = receivedOn;
	}

	public Date getExpiryDate() {
		return ExpiryDate;
	}

	public void setExpiryDate(Date expiryDate) {
		ExpiryDate = expiryDate;
	}

}
