package com.dhriti.recal.pojo;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

public class DisbursementReporingList implements Serializable {

	private static final long serialVersionUID = 484636834346374801L;

	private Date disbursementDate;
	private String loanNo;
	private String barrowerID;
	private String barrowerName;
	private String address;
	private BigDecimal loanAmount;
	private String currency;
	private BigDecimal profitRate;
	private BigDecimal processingFee;
	private BigDecimal adminFees;
	private BigDecimal disburseAmt;

	public Date getDisbursementDate() {
		return disbursementDate;
	}

	public void setDisbursementDate(Date disbursementDate) {
		this.disbursementDate = disbursementDate;
	}

	public String getLoanNo() {
		return loanNo;
	}

	public void setLoanNo(String loanNo) {
		this.loanNo = loanNo;
	}

	public String getBarrowerID() {
		return barrowerID;
	}

	public void setBarrowerID(String barrowerID) {
		this.barrowerID = barrowerID;
	}

	public String getBarrowerName() {
		return barrowerName;
	}

	public void setBarrowerName(String barrowerName) {
		this.barrowerName = barrowerName;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public BigDecimal getLoanAmount() {
		return loanAmount;
	}

	public void setLoanAmount(BigDecimal loanAmount) {
		this.loanAmount = loanAmount;
	}

	public String getCurrency() {
		return currency;
	}

	public void setCurrency(String currency) {
		this.currency = currency;
	}

	public BigDecimal getProfitRate() {
		return profitRate;
	}

	public void setProfitRate(BigDecimal profitRate) {
		this.profitRate = profitRate;
	}

	public BigDecimal getProcessingFee() {
		return processingFee;
	}

	public void setProcessingFee(BigDecimal processingFee) {
		this.processingFee = processingFee;
	}

	public BigDecimal getAdminFees() {
		return adminFees;
	}

	public void setAdminFees(BigDecimal adminFees) {
		this.adminFees = adminFees;
	}

	public BigDecimal getDisburseAmt() {
		return disburseAmt;
	}

	public void setDisburseAmt(BigDecimal disburseAmt) {
		this.disburseAmt = disburseAmt;
	}

}
