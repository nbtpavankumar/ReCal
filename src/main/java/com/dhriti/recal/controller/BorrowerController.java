/**
 * 
 */
package com.dhriti.recal.controller;

import java.io.Serializable;

import javax.servlet.http.HttpServletRequest;

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
import com.dhriti.recal.pojo.BorrowerDetails;
import com.dhriti.recal.service.BorrowerService;

/**
 * @author Giridhar
 *
 */
@Controller
//@RequestMapping(value = "/borrower")
public class BorrowerController implements Serializable {

	private static final long serialVersionUID = 6187185329195874019L;
	private static final Logger LOG = Logger.getLogger(Global.BORROWER_LOG);

	@Autowired
	BorrowerService borrowerService;

	// Create New Account
	@GetMapping("/borrower/signUp")
	public String userSignup(@ModelAttribute("userLogin") BorrowerDetails userLogin) {
		return "borrower/signUp";
	}
	
	@RequestMapping(value = "/borrower/borrowerSignup", method = RequestMethod.POST)
	public String saveRegistration(@ModelAttribute("userLogin") BorrowerDetails userLogin, BindingResult result, HttpServletRequest request) {

		BorrowerDetails isUserCreated = borrowerService.createBorrowerUser(userLogin, request);
		System.out.println("KeyId :: "+ isUserCreated.getKeyid());
		System.out.println("Session Id 1 :: "+ request.getSession());
		request.getSession().setAttribute("keyId", isUserCreated.getKeyid());
		LOG.info("Stauts : " + isUserCreated);
		if (isUserCreated.getRespStatus().equals("SUCCESS_USR_REG")) {
			return "redirect:/borrower/borrowerPersonalDetails";
		} else {
			return "redirect:/borrower/signUp";
		}

	}

	// After click on GetQuote wil display below Page
	@GetMapping("/borrower/borrowerPersonalDetails")
	public String signUpPersonalDetails(Model model, HttpServletRequest request) {

		/*
		 * model.addAttribute("employmentType","");
		 * model.addAttribute("industry","");
		 * model.addAttribute("lenghtService","");
		 */
		
		String  keyId = (String) request.getSession().getAttribute("keyId");
		System.out.println("Session Id:: "+ request.getSession());
		System.out.println("Session Key Id :"+ request.getSession().getAttribute("keyId"));
		try {
			model.addAttribute("bankNames", borrowerService.getBankNames(request, keyId));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "borrower/personalDetails";
	}

	

}
