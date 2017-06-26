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
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
	
	@RequestMapping(value = "/borrower/dashboard", method = RequestMethod.GET)
	public String dashboard(ModelMap model) {
		return "borrower/dashboard";
	}
	
	@RequestMapping(value = "/borrower/borrowing", method = RequestMethod.GET)
	public String borrowing(ModelMap model) {
		return "borrower/borrowing";
	}
	
	@RequestMapping(value = "/borrower/borrowerTxHistory", method = RequestMethod.GET)
	public String borrowerTxHistory(ModelMap model) {
		return "borrower/borrowerTxHistory";
	}
	
	@RequestMapping(value = "/borrower/borrowerRepayment", method = RequestMethod.GET)
	public String borrowerRepayment(ModelMap model) {
		return "borrower/borrowerRepayment";
	}
	
	@RequestMapping(value = "/borrower/borrowerProfile", method = RequestMethod.GET)
	public String borrowerProfile(ModelMap model) {
		return "borrower/borrowerProfile";
	}
	
	
	
	@RequestMapping(value = "/borrower/borrowerSignup", method = RequestMethod.POST)
	public String saveRegistration(@ModelAttribute("userLogin") BorrowerDetails userLogin, BindingResult result, HttpServletRequest request) {

		BorrowerDetails isUserCreated = borrowerService.createBorrowerUser(userLogin, request);
		String uid = isUserCreated.getUid() !=null ? isUserCreated.getUid() : "1";
		request.getSession().setAttribute("keyId", isUserCreated.getKeyid());
		request.getSession().setAttribute("uid", uid);
		
		LOG.info("Stauts : " + isUserCreated);
		if (isUserCreated.getRespStatus().equals("SUCCESS_USR_REG")) {
			return "redirect:/borrower/borrowerPersonalDetails?uid="+uid+"&keyId="+isUserCreated.getKeyid();
		} else {
			return "redirect:/borrower/signUp";
		}

	}

	// After click on GetQuote wil display below Page
	@GetMapping("/borrower/borrowerPersonalDetails")
	public String signUpPersonalDetails(@RequestParam String uid, @RequestParam String keyId, Model model, HttpServletRequest request) {

		/*
		 * model.addAttribute("employmentType","");
		 * model.addAttribute("industry","");
		 * model.addAttribute("lenghtService","");
		 */
		//long uid = (long) request.getSession().getAttribute("uid");
		/*try {
			model.addAttribute("bankNames", borrowerService.getBankNames(request, keyId, uid));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/

		return "borrower/personalDetails";
	}

	@RequestMapping(value = "/borrower/bankDetails", method = RequestMethod.POST)
	@ResponseBody
	public String getBankDetails(@RequestParam String uid, @RequestParam String keyId,  HttpServletRequest request) {
		String result = "";
		try {
			result = borrowerService.getBankNames(request, keyId, uid);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}
	
	@RequestMapping(value = "/borrower/employmentType", method = RequestMethod.POST)
	@ResponseBody
	public String getEmploymentType(@RequestParam String uid, @RequestParam String keyId,  HttpServletRequest request) {
		String result = "";
		try {
			result = borrowerService.getEmploymentType(request, keyId, uid);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}
	
	@RequestMapping(value = "/borrower/industryDetails", method = RequestMethod.POST)
	@ResponseBody
	public String getIndustryDetails(@RequestParam String uid, @RequestParam String keyId,  HttpServletRequest request) {
		String result = "";
		try {
			result = borrowerService.getIndustryDetails(request, keyId, uid);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}
	
	@RequestMapping(value = "/borrower/serviceLength", method = RequestMethod.POST)
	@ResponseBody
	public String getServiceLength(@RequestParam String uid, @RequestParam String keyId,  HttpServletRequest request) {
		String result = "";
		try {
			result = borrowerService.getServiceLength(request, keyId, uid);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}
	

}
