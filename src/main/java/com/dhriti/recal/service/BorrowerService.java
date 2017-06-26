package com.dhriti.recal.service;

import javax.servlet.http.HttpServletRequest;

import com.dhriti.recal.pojo.BorrowerDetails;

/**
 * @author Giridhar
 *
 */
public interface BorrowerService {

	/**
	 * 
	 * @param userLogin
	 * @return
	 */
	BorrowerDetails createBorrowerUser(BorrowerDetails userLogin, HttpServletRequest request);

	public String getBankNames(HttpServletRequest request, String keyId) throws Exception;

}
