package com.dhriti.recal.pojo;

import java.io.Serializable;
import java.math.BigDecimal;

/**
 * 
 * @author Giridhar
 *
 */
public class BarrowerProfileInfo implements Serializable {

	private static final long serialVersionUID = -3906631518808106193L;

	// personal Details
	private String icNO;
	private String barrowerName;
	private String mobileNo;
	private String address;
	private String city;
	private String postalCode; 
	private String email;
	private String dob;
	private String password;

	// Employment Details
	private String typeofEmployment;
	private String EmployerName;
	private String industry;
	private String businessOperation;
	private String employerAddress;
	private String employerCity;
	private String employerPostalCode;
	private String referralCode;

	// Disbursement Details
	private String bankName;
	private String accountNumber;
	private String accountHolderName;
	private byte[] documents;

	// Term Details
	private BigDecimal amount;
	private String terms;
	private String profitRate;
	private String monthlyInstallment;
	private String CurrencyType;

	public String getIcNO() {
		return icNO;
	}

	public void setIcNO(String icNO) {
		this.icNO = icNO;
	}

	public String getBarrowerName() {
		return barrowerName;
	}

	public void setBarrowerName(String barrowerName) {
		this.barrowerName = barrowerName;
	}

	public String getMobileNo() {
		return mobileNo;
	}

	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getPostalCode() {
		return postalCode;
	}

	public void setPostalCode(String postalCode) {
		this.postalCode = postalCode;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getTypeofEmployment() {
		return typeofEmployment;
	}

	public void setTypeofEmployment(String typeofEmployment) {
		this.typeofEmployment = typeofEmployment;
	}

	public String getEmployerName() {
		return EmployerName;
	}

	public void setEmployerName(String employerName) {
		EmployerName = employerName;
	}

	public String getIndustry() {
		return industry;
	}

	public void setIndustry(String industry) {
		this.industry = industry;
	}

	public String getBusinessOperation() {
		return businessOperation;
	}

	public void setBusinessOperation(String businessOperation) {
		this.businessOperation = businessOperation;
	}

	public String getEmployerAddress() {
		return employerAddress;
	}

	public void setEmployerAddress(String employerAddress) {
		this.employerAddress = employerAddress;
	}

	public String getEmployerCity() {
		return employerCity;
	}

	public void setEmployerCity(String employerCity) {
		this.employerCity = employerCity;
	}

	public String getEmployerPostalCode() {
		return employerPostalCode;
	}

	public void setEmployerPostalCode(String employerPostalCode) {
		this.employerPostalCode = employerPostalCode;
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

	public String getAccountNumber() {
		return accountNumber;
	}

	public void setAccountNumber(String accountNumber) {
		this.accountNumber = accountNumber;
	}

	public String getAccountHolderName() {
		return accountHolderName;
	}

	public void setAccountHolderName(String accountHolderName) {
		this.accountHolderName = accountHolderName;
	}

	public byte[] getDocuments() {
		return documents;
	}

	public void setDocuments(byte[] documents) {
		this.documents = documents;
	}

	public BigDecimal getAmount() {
		return amount;
	}

	public void setAmount(BigDecimal amount) {
		this.amount = amount;
	}

	public String getTerms() {
		return terms;
	}

	public void setTerms(String terms) {
		this.terms = terms;
	}

	public String getProfitRate() {
		return profitRate;
	}

	public void setProfitRate(String profitRate) {
		this.profitRate = profitRate;
	}

	public String getMonthlyInstallment() {
		return monthlyInstallment;
	}

	public void setMonthlyInstallment(String monthlyInstallment) {
		this.monthlyInstallment = monthlyInstallment;
	}

	public String getCurrencyType() {
		return CurrencyType;
	}

	public void setCurrencyType(String currencyType) {
		CurrencyType = currencyType;
	}

}
