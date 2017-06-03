package com.dhriti.recal.pojo;

import java.io.Serializable;

/**
 * @author Giridhar
 *
 */
public class MessageTemplate implements Serializable {

	private static final long serialVersionUID = -5788378522596542174L;

	private String templateName;
	private Boolean isActive;
	private String semdVia;
	private String description;

	public String getTemplateName() {
		return templateName;
	}

	public void setTemplateName(String templateName) {
		this.templateName = templateName;
	}

	public Boolean getIsActive() {
		return isActive;
	}

	public void setIsActive(Boolean isActive) {
		this.isActive = isActive;
	}

	public String getSemdVia() {
		return semdVia;
	}

	public void setSemdVia(String semdVia) {
		this.semdVia = semdVia;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

}
