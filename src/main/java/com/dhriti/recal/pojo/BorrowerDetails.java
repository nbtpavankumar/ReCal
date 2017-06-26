package com.dhriti.recal.pojo;

import java.io.Serializable;

public class BorrowerDetails implements Serializable {

	private static final long serialVersionUID = 4462954153923939923L;

	private String keyid;
	
	private String uid;
	
	private String respStatus;
	// We use LoginToken as the definition of User ID, since UserID is a an
	// auto-increment field
	private String loginToken;

	private String password;

	private String userToken;

	private Double loanAmount;

	private String loanTerms;

	private String profitRate;

	private Double monthlyInstallment;

	// Loan Details

	private String purpose;

	private String icNo;

	private String borrowerName;

	private String mobileNo;

	private String residenceAddress;

	private String postalCode;

	private String city;

	// Employment Details

	private String employmentType;

	private String employerName;

	private String industry;

	private String lengthService;

	private String employerAddress;

	private String employerPostCode;

	private String employerCity;

	private String referralCode;

	// Disbursement

	private String bankName;

	private String accountNo;

	private String accountHolderName;

	public String getKeyid() {
		return keyid;
	}

	public void setKeyid(String keyid) {
		this.keyid = keyid;
	}

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public String getRespStatus() {
		return respStatus;
	}

	public void setRespStatus(String respStatus) {
		this.respStatus = respStatus;
	}

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

	public Double getLoanAmount() {
		return loanAmount;
	}

	public void setLoanAmount(Double loanAmount) {
		this.loanAmount = loanAmount;
	}

	public String getLoanTerms() {
		return loanTerms;
	}

	public void setLoanTerms(String loanTerms) {
		this.loanTerms = loanTerms;
	}

	public String getProfitRate() {
		return profitRate;
	}

	public void setProfitRate(String profitRate) {
		this.profitRate = profitRate;
	}

	public Double getMonthlyInstallment() {
		return monthlyInstallment;
	}

	public void setMonthlyInstallment(Double monthlyInstallment) {
		this.monthlyInstallment = monthlyInstallment;
	}

	public String getPurpose() {
		return purpose;
	}

	public void setPurpose(String purpose) {
		this.purpose = purpose;
	}

	public String getIcNo() {
		return icNo;
	}

	public void setIcNo(String icNo) {
		this.icNo = icNo;
	}

	public String getBorrowerName() {
		return borrowerName;
	}

	public void setBorrowerName(String borrowerName) {
		this.borrowerName = borrowerName;
	}

	public String getMobileNo() {
		return mobileNo;
	}

	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}

	public String getResidenceAddress() {
		return residenceAddress;
	}

	public void setResidenceAddress(String residenceAddress) {
		this.residenceAddress = residenceAddress;
	}

	public String getPostalCode() {
		return postalCode;
	}

	public void setPostalCode(String postalCode) {
		this.postalCode = postalCode;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getEmploymentType() {
		return employmentType;
	}

	public void setEmploymentType(String employmentType) {
		this.employmentType = employmentType;
	}

	public String getEmployerName() {
		return employerName;
	}

	public void setEmployerName(String employerName) {
		this.employerName = employerName;
	}

	public String getIndustry() {
		return industry;
	}

	public void setIndustry(String industry) {
		this.industry = industry;
	}

	public String getLengthService() {
		return lengthService;
	}

	public void setLengthService(String lengthService) {
		this.lengthService = lengthService;
	}

	public String getEmployerAddress() {
		return employerAddress;
	}

	public void setEmployerAddress(String employerAddress) {
		this.employerAddress = employerAddress;
	}

	public String getEmployerPostCode() {
		return employerPostCode;
	}

	public void setEmployerPostCode(String employerPostCode) {
		this.employerPostCode = employerPostCode;
	}

	public String getEmployerCity() {
		return employerCity;
	}

	public void setEmployerCity(String employerCity) {
		this.employerCity = employerCity;
	}

	public String getReferralCode() {
		return referralCode;
	}

	public void setReferralCode(String referralCode) {
		this.referralCode = referralCode;
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

	public String getAccountHolderName() {
		return accountHolderName;
	}

	public void setAccountHolderName(String accountHolderName) {
		this.accountHolderName = accountHolderName;
	}

	@Override
	public String toString() {
		return "UserLogin [loginToken=" + loginToken + ", password=" + password + ", userToken=" + userToken + "]";
	}

}