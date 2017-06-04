package com.dhriti.recal.pojo;

import java.io.Serializable;
import java.util.Date;

public class ScheduleTasks implements Serializable {

	private static final long serialVersionUID = 8608630853980647782L;

	private String taskName;
	private Date setDate;
	private String loanId;

	public String getTaskName() {
		return taskName;
	}

	public void setTaskName(String taskName) {
		this.taskName = taskName;
	}

	public Date getSetDate() {
		return setDate;
	}

	public void setSetDate(Date setDate) {
		this.setDate = setDate;
	}

	public String getLoanId() {
		return loanId;
	}

	public void setLoanId(String loanId) {
		this.loanId = loanId;
	}

}
