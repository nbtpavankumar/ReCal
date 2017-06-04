package com.dhriti.recal.pojo;

import java.io.Serializable;
import java.util.Date;

import com.dhriti.recal.enums.CollectionStatus;

public class BarrowerDisbursementList implements Serializable {

	private static final long serialVersionUID = 7018504944081343191L;

	private CollectionStatus status;
	private String loanNo;
	private String disburseAmt;
	private String accountNo;
	private String bankName;
	private String accountantName;
	private String icNumber;
	private Date disburseDate;
	private Date createdOn;

	public CollectionStatus getStatus() {
		return status;
	}

	public void setStatus(CollectionStatus status) {
		this.status = status;
	}

	public String getLoanNo() {
		return loanNo;
	}

	public void setLoanNo(String loanNo) {
		this.loanNo = loanNo;
	}

	public String getDisburseAmt() {
		return disburseAmt;
	}

	public void setDisburseAmt(String disburseAmt) {
		this.disburseAmt = disburseAmt;
	}

	public String getAccountNo() {
		return accountNo;
	}

	public void setAccountNo(String accountNo) {
		this.accountNo = accountNo;
	}

	public String getBankName() {
		return bankName;
	}

	public void setBankName(String bankName) {
		this.bankName = bankName;
	}

	public String getAccountantName() {
		return accountantName;
	}

	public void setAccountantName(String accountantName) {
		this.accountantName = accountantName;
	}

	public String getIcNumber() {
		return icNumber;
	}

	public void setIcNumber(String icNumber) {
		this.icNumber = icNumber;
	}

	public Date getDisburseDate() {
		return disburseDate;
	}

	public void setDisburseDate(Date disburseDate) {
		this.disburseDate = disburseDate;
	}

	public Date getCreatedOn() {
		return createdOn;
	}

	public void setCreatedOn(Date createdOn) {
		this.createdOn = createdOn;
	}

}
