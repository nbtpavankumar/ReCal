package com.dhriti.recal.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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

	public String getBankNames(HttpServletRequest request, String keyId, long uid) throws Exception;

	/**
	 * 
	 * @param loginid
	 * @param password
	 * @param resp 
	 * @return
	 */
	public String userAuthentication(String loginid, String password, HttpServletResponse resp);

}
