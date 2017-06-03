package com.dhriti.recal.pojo;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

import com.dhriti.recal.enums.LoanStatus;

public class LoanDetails implements Serializable {

	private static final long serialVersionUID = 6333905995722259588L;

	private String loanNo;
	private LoanStatus status;
	private Date dueDate;
	private String currency;
	private String applicantName;
	private BigDecimal amount;
	private String tenure;
	private String percentage;
	private String referalCode;
	private Date organizeDate;
	private String requestNumber;

	// For Loan Report
	private Date createdOn;
	private String barrowerId;
	private float profitRate;
	private BigDecimal principalBalance;
	private BigDecimal interestPaidYtd;

	public String getLoanNo() {
		return loanNo;
	}

	public void setLoanNo(String loanNo) {
		this.loanNo = loanNo;
	}

	public LoanStatus getStatus() {
		return status;
	}

	public void setStatus(LoanStatus status) {
		this.status = status;
	}

	public Date getDueDate() {
		return dueDate;
	}

	public void setDueDate(Date dueDate) {
		this.dueDate = dueDate;
	}

	public String getCurrency() {
		return currency;
	}

	public void setCurrency(String currency) {
		this.currency = currency;
	}

	public String getApplicantName() {
		return applicantName;
	}

	public void setApplicantName(String applicantName) {
		this.applicantName = applicantName;
	}

	public BigDecimal getAmount() {
		return amount;
	}

	public void setAmount(BigDecimal amount) {
		this.amount = amount;
	}

	public String getTenure() {
		return tenure;
	}

	public void setTenure(String tenure) {
		this.tenure = tenure;
	}

	public String getPercentage() {
		return percentage;
	}

	public void setPercentage(String percentage) {
		this.percentage = percentage;
	}

	public String getReferalCode() {
		return referalCode;
	}

	public void setReferalCode(String referalCode) {
		this.referalCode = referalCode;
	}

	public Date getOrganizeDate() {
		return organizeDate;
	}

	public void setOrganizeDate(Date organizeDate) {
		this.organizeDate = organizeDate;
	}

	public String getRequestNumber() {
		return requestNumber;
	}

	public void setRequestNumber(String requestNumber) {
		this.requestNumber = requestNumber;
	}

	public Date getCreatedOn() {
		return createdOn;
	}

	public void setCreatedOn(Date createdOn) {
		this.createdOn = createdOn;
	}

	public String getBarrowerId() {
		return barrowerId;
	}

	public void setBarrowerId(String barrowerId) {
		this.barrowerId = barrowerId;
	}

	public float getProfitRate() {
		return profitRate;
	}

	public void setProfitRate(float profitRate) {
		this.profitRate = profitRate;
	}

	public BigDecimal getPrincipalBalance() {
		return principalBalance;
	}

	public void setPrincipalBalance(BigDecimal principalBalance) {
		this.principalBalance = principalBalance;
	}

	public BigDecimal getInterestPaidYtd() {
		return interestPaidYtd;
	}

	public void setInterestPaidYtd(BigDecimal interestPaidYtd) {
		this.interestPaidYtd = interestPaidYtd;
	}

}
