package com.dhriti.recal.pojo;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

import com.dhriti.recal.enums.LoanStatus;

public class RepaymentScheduleList implements Serializable {

	private static final long serialVersionUID = 2144826102657403123L;

	private String loanNumber;
	private LoanStatus status;
	private Date dueDateSince;
	private String statementNumber;
	private Date StatementDate;
	private Date GraceDate;
	private String currency;
	private BigDecimal paymentAmount;
	private String Principal;
	private float interest;

	public String getLoanNumber() {
		return loanNumber;
	}

	public void setLoanNumber(String loanNumber) {
		this.loanNumber = loanNumber;
	}

	public LoanStatus getStatus() {
		return status;
	}

	public void setStatus(LoanStatus status) {
		this.status = status;
	}

	public Date getDueDateSince() {
		return dueDateSince;
	}

	public void setDueDateSince(Date dueDateSince) {
		this.dueDateSince = dueDateSince;
	}

	public String getStatementNumber() {
		return statementNumber;
	}

	public void setStatementNumber(String statementNumber) {
		this.statementNumber = statementNumber;
	}

	public Date getStatementDate() {
		return StatementDate;
	}

	public void setStatementDate(Date statementDate) {
		StatementDate = statementDate;
	}

	public Date getGraceDate() {
		return GraceDate;
	}

	public void setGraceDate(Date graceDate) {
		GraceDate = graceDate;
	}

	public String getCurrency() {
		return currency;
	}

	public void setCurrency(String currency) {
		this.currency = currency;
	}

	public BigDecimal getPaymentAmount() {
		return paymentAmount;
	}

	public void setPaymentAmount(BigDecimal paymentAmount) {
		this.paymentAmount = paymentAmount;
	}

	public String getPrincipal() {
		return Principal;
	}

	public void setPrincipal(String principal) {
		Principal = principal;
	}

	public float getInterest() {
		return interest;
	}

	public void setInterest(float interest) {
		this.interest = interest;
	}

}
