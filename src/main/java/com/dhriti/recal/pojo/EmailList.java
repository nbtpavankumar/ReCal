package com.dhriti.recal.pojo;

import java.io.Serializable;
import java.util.Date;

/**
 * @author Giridhar
 *
 */
public class EmailList implements Serializable {

	private static final long serialVersionUID = 2833636699120637443L;

	private String subject;
	private String receiver;
	private String sender;
	private Date sentOn;
	private Date createdOn;
	private String sentTries;

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getReceiver() {
		return receiver;
	}

	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}

	public String getSender() {
		return sender;
	}

	public void setSender(String sender) {
		this.sender = sender;
	}

	public Date getSentOn() {
		return sentOn;
	}

	public void setSentOn(Date sentOn) {
		this.sentOn = sentOn;
	}

	public Date getCreatedOn() {
		return createdOn;
	}

	public void setCreatedOn(Date createdOn) {
		this.createdOn = createdOn;
	}

	public String getSentTries() {
		return sentTries;
	}

	public void setSentTries(String sentTries) {
		this.sentTries = sentTries;
	}

}
