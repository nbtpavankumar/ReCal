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

	/**
	 * 
	 * @param loginid
	 * @param password
	 * @param resp
	 * @return
	 */
	public String userAuthentication(String loginid, String password, HttpServletResponse resp);

	/**
	 * 
	 * @param request
	 * @param keyId
	 * @param uid
	 * @return
	 * @throws Exception
	 */
	public String getBankNames(HttpServletRequest request, String keyId, String uid) throws Exception;

	/**
	 * 
	 * @param request
	 * @param keyId
	 * @param uid
	 * @return
	 * @throws Exception
	 */
	public String getEmploymentType(HttpServletRequest request, String keyId, String uid) throws Exception;

	/**
	 * 
	 * @param request
	 * @param keyId
	 * @param uid
	 * @throws Exception
	 * @return
	 */
	public String getIndustryDetails(HttpServletRequest request, String keyId, String uid) throws Exception;

	/**
	 * 
	 * @param request
	 * @param keyId
	 * @param uid
	 * @throws Exception
	 * @return
	 */
	public String getServiceLength(HttpServletRequest request, String keyId, String uid) throws Exception;

}
