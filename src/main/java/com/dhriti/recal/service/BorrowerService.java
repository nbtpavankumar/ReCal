package com.dhriti.recal.service;

import com.dhriti.recal.pojo.UserLogin;

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
	Boolean createBorrowerUser(UserLogin userLogin);

}
