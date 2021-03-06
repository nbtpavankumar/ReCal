package com.dhriti.recal.service;

/**
 * @author Giridhar
 */

public interface AdminService {

	/**
	 * 
	 * @param loginid
	 * @param password
	 * @return
	 */
	public String adminAuthentication(String loginid, String password);

	/**
	 * 
	 * @return
	 */
	public String getAuthKey();

	/**
	 * 
	 * @param uid
	 * @param keyId
	 * @return
	 */
	public String loanSummaryDetails(String uid, String keyId);

	/**
	 * 
	 * @param uid
	 * @param keyId
	 * @return
	 */
	public String recentApplicationDetails(String uid, String keyId);

	/**
	 * 
	 * @param searchval
	 * @param uid
	 * @param keyId
	 * @return
	 */
	public String loanDetailsbyStatus(String searchval, String uid, String keyId);

}
