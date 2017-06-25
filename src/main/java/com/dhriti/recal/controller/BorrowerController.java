/**
 * 
 */
package com.dhriti.recal.controller;

import java.io.Serializable;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dhriti.recal.core.utils.Global;
import com.dhriti.recal.pojo.UserLogin;
import com.dhriti.recal.service.BorrowerService;

/**
 * @author Giridhar
 *
 */
@Controller
@RequestMapping(value = "/borrower")
public class BorrowerController implements Serializable {

	private static final long serialVersionUID = 6187185329195874019L;
	private static final Logger LOG = Logger.getLogger(Global.BORROWER_LOG);

	@Autowired
	BorrowerService borrowerService;

	// Create New Account
	@GetMapping("/signUp")
	public String userSignup(@ModelAttribute("userLogin") UserLogin userLogin) {
		return "borrower/signUp";
	}

	// After click on GetQuote wil display below Page
	@GetMapping("/personalDetails")
	public String signUpPersonalDetails(Model model) {
		return "borrower/personalDetails";
	}

	@RequestMapping(value = "/borrowerSignup", method = RequestMethod.POST)
	public String saveRegistration(@ModelAttribute("userLogin") UserLogin userLogin, BindingResult result) {
		Boolean isUserCreated = borrowerService.createBorrowerUser(userLogin);
		LOG.info("Stauts : " + isUserCreated);
		if (isUserCreated) {
			return "redirect:/borrower/personalDetails";
		} else {
			return "redirect:borrower/signUp";
		}
	}

}
