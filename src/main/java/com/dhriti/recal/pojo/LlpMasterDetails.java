package com.dhriti.recal.pojo;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

/**
 * @author Giridhar
 *
 */
public class LlpMasterDetails implements Serializable {

	private static final long serialVersionUID = 4309996414614689089L;

	private String email;
	private String password;
	private String icNo;
	private String name;
	private BigDecimal maxAnnualReturn;
	private BigDecimal withdrawFee;
	private Integer mobileNo;
	private String accountNo;
	private String bankName;

	// for Report
	private Date lastLoginDate;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getIcNo() {
		return icNo;
	}

	public void setIcNo(String icNo) {
		this.icNo = icNo;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public BigDecimal getMaxAnnualReturn() {
		return maxAnnualReturn;
	}

	public void setMaxAnnualReturn(BigDecimal maxAnnualReturn) {
		this.maxAnnualReturn = maxAnnualReturn;
	}

	public BigDecimal getWithdrawFee() {
		return withdrawFee;
	}

	public void setWithdrawFee(BigDecimal withdrawFee) {
		this.withdrawFee = withdrawFee;
	}

	public Integer getMobileNo() {
		return mobileNo;
	}

	public void setMobileNo(Integer mobileNo) {
		this.mobileNo = mobileNo;
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

	public Date getLastLoginDate() {
		return lastLoginDate;
	}

	public void setLastLoginDate(Date lastLoginDate) {
		this.lastLoginDate = lastLoginDate;
	}

}
