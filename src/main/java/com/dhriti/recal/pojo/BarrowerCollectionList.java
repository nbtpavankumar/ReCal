package com.dhriti.recal.pojo;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

import com.dhriti.recal.enums.CollectionStatus;

public class BarrowerCollectionList implements Serializable {

	private static final long serialVersionUID = -4149255994937199949L;

	private String paymentAmount;
	private String loanId;
	private String billReferenceNo;
	private String txReferenceNo;
	private Date txDate;
	private String remark;
	private Date createdOn;
	private CollectionStatus status;

	// Collection Report
	private String barrowerId;
	private String barrowerName;
	private String barrowerAdderss;
	private BigDecimal amount;
	private Date collectionDate;

	public String getPaymentAmount() {
		return paymentAmount;
	}

	public void setPaymentAmount(String paymentAmount) {
		this.paymentAmount = paymentAmount;
	}

	public String getLoanId() {
		return loanId;
	}

	public void setLoanId(String loanId) {
		this.loanId = loanId;
	}

	public String getBillReferenceNo() {
		return billReferenceNo;
	}

	public void setBillReferenceNo(String billReferenceNo) {
		this.billReferenceNo = billReferenceNo;
	}

	public String getTxReferenceNo() {
		return txReferenceNo;
	}

	public void setTxReferenceNo(String txReferenceNo) {
		this.txReferenceNo = txReferenceNo;
	}

	public Date getTxDate() {
		return txDate;
	}

	public void setTxDate(Date txDate) {
		this.txDate = txDate;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public Date getCreatedOn() {
		return createdOn;
	}

	public void setCreatedOn(Date createdOn) {
		this.createdOn = createdOn;
	}

	public CollectionStatus getStatus() {
		return status;
	}

	public void setStatus(CollectionStatus status) {
		this.status = status;
	}

	public String getBarrowerId() {
		return barrowerId;
	}

	public void setBarrowerId(String barrowerId) {
		this.barrowerId = barrowerId;
	}

	public String getBarrowerName() {
		return barrowerName;
	}

	public void setBarrowerName(String barrowerName) {
		this.barrowerName = barrowerName;
	}

	public String getBarrowerAdderss() {
		return barrowerAdderss;
	}

	public void setBarrowerAdderss(String barrowerAdderss) {
		this.barrowerAdderss = barrowerAdderss;
	}

	public BigDecimal getAmount() {
		return amount;
	}

	public void setAmount(BigDecimal amount) {
		this.amount = amount;
	}

	public Date getCollectionDate() {
		return collectionDate;
	}

	public void setCollectionDate(Date collectionDate) {
		this.collectionDate = collectionDate;
	}

}
