package com.dhriti.recal.pojo;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

/**
 * @author Giridhar
 *
 */
public class InvestorWithdrawList implements Serializable {

	private static final long serialVersionUID = 7463440168781794551L;

	private String investorStatus;
	private BigDecimal disburseAmt;
	private BigDecimal withdrawFee;
	private String investorId;
	private String investorName;
	private String bankName;
	private String accountNo;
	private String accountholderName;
	private Date createdOn;

	public String getInvestorStatus() {
		return investorStatus;
	}

	public void setInvestorStatus(String investorStatus) {
		this.investorStatus = investorStatus;
	}

	public BigDecimal getDisburseAmt() {
		return disburseAmt;
	}

	public void setDisburseAmt(BigDecimal disburseAmt) {
		this.disburseAmt = disburseAmt;
	}

	public BigDecimal getWithdrawFee() {
		return withdrawFee;
	}

	public void setWithdrawFee(BigDecimal withdrawFee) {
		this.withdrawFee = withdrawFee;
	}

	public String getInvestorId() {
		return investorId;
	}

	public void setInvestorId(String investorId) {
		this.investorId = investorId;
	}

	public String getInvestorName() {
		return investorName;
	}

	public void setInvestorName(String investorName) {
		this.investorName = investorName;
	}

	public String getBankName() {
		return bankName;
	}

	public void setBankName(String bankName) {
		this.bankName = bankName;
	}

	public String getAccountNo() {
		return accountNo;
	}

	public void setAccountNo(String accountNo) {
		this.accountNo = accountNo;
	}

	public String getAccountholderName() {
		return accountholderName;
	}

	public void setAccountholderName(String accountholderName) {
		this.accountholderName = accountholderName;
	}

	public Date getCreatedOn() {
		return createdOn;
	}

	public void setCreatedOn(Date createdOn) {
		this.createdOn = createdOn;
	}

}
