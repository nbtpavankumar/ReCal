package com.dhriti.recal.controller;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dhriti.recal.service.AdminService;
import com.dhriti.recal.service.BorrowerService;

/**
 * 
 * @author Giridhar
 *
 */

@Controller
public class AdminController {

	@Autowired
	AdminService adminService;
	
	@Autowired
	BorrowerService borrowerService;

	// Welcome page
	@GetMapping("/home")
	public String adminHome(Model model) {
		return "home";
	}

	@GetMapping("/companyGo")
	public String adminHomeContinue(Model model) {
		return "companyGo";
	}

	@GetMapping("/personalDetailsView")
	public String signUpPersonalDetailsView(Model model) {
		return "admin/personalDetailsView";
	}

	// While Click on Terms and Condition will go this page
	@GetMapping("/termsConditions")
	public String LoginTermsCondition(Model model) {
		return "admin/termsConditions";
	}

	// Admin Login Page
	@GetMapping("/admin")
	public String adminLogin(Model model) {
		
		return "admin/login";
	}

	// Validate the user credentials
	@RequestMapping(value = "/admin/checklogin", method = RequestMethod.POST)
	@ResponseBody
	public String adminLogin(@RequestParam String loginid, @RequestParam String password, HttpServletResponse resp) {

		String result = "";

		try {
			if ("sebadmin".equalsIgnoreCase(loginid)) {
				result = adminService.adminAuthentication(loginid, password);
			} else {
				result = borrowerService.userAuthentication(loginid, password, resp);
			}
		} catch (Exception exp) {
			exp.printStackTrace();
		}

		return result;
	}

	// Admin Dashboard
	@RequestMapping(value = "/admin/dashboard", method = RequestMethod.GET)
	public String dashboard(ModelMap model) {
		model.addAttribute("page", "dashboard");
		return "admin/dashboard";
	}

	@RequestMapping(value = "/admin/borrowerList", method = RequestMethod.GET)
	public String barrowerList(ModelMap model) {
		model.addAttribute("page", "borrowerList");
		return "admin/borrowerList";
	}

	@RequestMapping(value = "/admin/salesRep", method = RequestMethod.GET)
	public String salesRep(ModelMap model) {
		model.addAttribute("page", "salesRep");
		return "admin/salesRep";
	}

	@RequestMapping(value = "/admin/createSalesRep", method = RequestMethod.GET)
	public String createSalesRep(ModelMap model) {
		model.addAttribute("page", "createSalesRep");
		return "admin/createSalesRep";
	}

	@RequestMapping(value = "/admin/applicationslist", method = RequestMethod.GET)
	public String applicationslist(@RequestParam String searchval, ModelMap model) {
		model.addAttribute("page", "listapplications");
		model.addAttribute("search", searchval);
		return "admin/listapplications";
	}

	@RequestMapping(value = "/admin/loansummary", method = RequestMethod.POST)
	@ResponseBody
	String loansummary(@RequestParam String uid, @RequestParam String keyId) {

		String result = "";
		try {
			result = adminService.loanSummaryDetails(uid, keyId);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}

	@RequestMapping(value = "/admin/recentapplications", method = RequestMethod.POST)
	@ResponseBody
	public String recentapps(@RequestParam String uid, @RequestParam String keyId) {

		String result = "";
		try {
			result = adminService.recentApplicationDetails(uid, keyId);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}

	@RequestMapping(value = "/admin/listapplications", method = RequestMethod.POST)
	@ResponseBody
	public String listapplication(@RequestParam String searchval, @RequestParam String uid,
			@RequestParam String keyId) {

		String result = "{  \"data\": [";
		String jsonResult = "";

		try {
			result = adminService.loanDetailsbyStatus(searchval, uid, keyId);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}

	// Get Loan List Details
	@RequestMapping(value = "/admin/loanList", method = RequestMethod.GET)
	public String adminLoanList(ModelMap model) {
		model.addAttribute("page", "loanList");
		return "admin/loanList";
	}

	// Admin Loan Menus

	// Get Disbursment Details
	@RequestMapping(value = "/admin/disbursement", method = RequestMethod.GET)
	public String adminDisbursement(ModelMap model) {
		model.addAttribute("page", "disbursement");
		return "admin/disbursement";
	}

	// Get Admin Collection Details
	@RequestMapping(value = "/admin/repayCollections", method = RequestMethod.GET)
	public String adminCollections(ModelMap model) {
		model.addAttribute("page", "repayCollections");
		return "admin/repayCollections";
	}

	// Get Admin Collection Details
	@RequestMapping(value = "/admin/createBorrowerPayment", method = RequestMethod.GET)
	public String createBarrowerRepayment(ModelMap model) {
		model.addAttribute("page", "createBorrowerPayment");
		return "admin/createBorrowerPayment";
	}

	// Investor Menu pages

	// Get Disbursment Details
	@RequestMapping(value = "/admin/topupFunds", method = RequestMethod.GET)
	public String investorTopup(ModelMap model) {
		model.addAttribute("page", "topupFunds");
		return "admin/topupFunds";
	}

	@RequestMapping(value = "/admin/investorTopup", method = RequestMethod.GET)
	public String investorTopupfunds(ModelMap model) {
		model.addAttribute("page", "investorTopup");
		return "admin/investorTopup";
	}

	// Get Disbursment Details
	@RequestMapping(value = "/admin/withdrawalRequest", method = RequestMethod.GET)
	public String investorWithdrawal(ModelMap model) {
		model.addAttribute("page", "withdrawalRequest");
		return "admin/withdrawalRequest";
	}

	// Get Disbursment Details
	@RequestMapping(value = "/admin/llpMaster", method = RequestMethod.GET)
	public String investorLL(ModelMap model) {
		model.addAttribute("page", "llpMaster");
		return "admin/llpMaster";
	}

	@RequestMapping(value = "/admin/createLLPMaster", method = RequestMethod.GET)
	public String createLLPMaster(ModelMap model) {
		model.addAttribute("page", "createLLPMaster");
		return "admin/createLLPMaster";
	}

	// REPORTING MENUS
	@RequestMapping(value = "/admin/disbursementReport", method = RequestMethod.GET)
	public String disburseReport(ModelMap model) {
		model.addAttribute("page", "disbursementReport");
		return "admin/disbursementReport";
	}

	@RequestMapping(value = "/admin/collectionReport", method = RequestMethod.GET)
	public String collectionReport(ModelMap model) {
		model.addAttribute("page", "collectionReport");
		return "admin/collectionReport";
	}

	@RequestMapping(value = "/admin/loanReport", method = RequestMethod.GET)
	public String loanReport(ModelMap model) {
		model.addAttribute("page", "loanReport");
		return "admin/loanReport";
	}

	@RequestMapping(value = "/admin/declinedAppReport", method = RequestMethod.GET)
	public String declinedAppReport(ModelMap model) {
		model.addAttribute("page", "declinedAppReport");
		return "admin/declinedAppReport";
	}

	@RequestMapping(value = "/admin/delinquencyInfo", method = RequestMethod.GET)
	public String delinquencyInfo(ModelMap model) {
		model.addAttribute("page", "delinquencyInfo");
		return "admin/delinquencyInfo";
	}

	@RequestMapping(value = "/admin/ramciCreditInfo", method = RequestMethod.GET)
	public String ramciCreditInfo(ModelMap model) {
		model.addAttribute("page", "ramciCreditInfo");
		return "admin/ramciCreditInfo";
	}

	// Users Menus

	@RequestMapping(value = "/admin/authorizerusers", method = RequestMethod.GET)
	public String authorizerusersList(ModelMap model) {
		model.addAttribute("page", "authorizerusers");
		return "admin/authorizerusers";
	}

	@RequestMapping(value = "/admin/createAuthUser", method = RequestMethod.GET)
	public String createAuthUser(ModelMap model) {
		model.addAttribute("page", "createAuthUser");
		return "admin/createAuthUser";
	}

	@RequestMapping(value = "/admin/makerUsers", method = RequestMethod.GET)
	public String makerUsersList(ModelMap model) {
		model.addAttribute("page", "makerUsers");
		return "admin/makerUsers";
	}

	@RequestMapping(value = "/admin/createMaker", method = RequestMethod.GET)
	public String createMaker(ModelMap model) {
		model.addAttribute("page", "createMaker");
		return "admin/createMaker";
	}

	// Messages Menus

	@RequestMapping(value = "/admin/emailMsgList", method = RequestMethod.GET)
	public String emailMsgList(ModelMap model) {
		model.addAttribute("page", "emailMsgList");
		return "admin/emailMsgList";
	}

	@RequestMapping(value = "/admin/composeEmail", method = RequestMethod.GET)
	public String composeEmail(ModelMap model) {
		model.addAttribute("page", "composeEmail");
		return "admin/composeEmail";
	}

	@RequestMapping(value = "/admin/messageTemplateList", method = RequestMethod.GET)
	public String messageTemplateList(ModelMap model) {
		model.addAttribute("page", "messageTemplateList");
		return "admin/messageTemplateList";
	}

	@RequestMapping(value = "/admin/smsList", method = RequestMethod.GET)
	public String smsList(ModelMap model) {
		model.addAttribute("page", "smsList");
		return "admin/smsList";
	}

	@RequestMapping(value = "/admin/sendSms", method = RequestMethod.GET)
	public String sendSms(ModelMap model) {
		model.addAttribute("page", "sendSms");
		return "admin/sendSms";
	}

	// UAT Menus

	@RequestMapping(value = "/admin/repaymentSchedule", method = RequestMethod.GET)
	public String repaymentSchedule(ModelMap model) {
		model.addAttribute("page", "repaymentSchedule");
		return "admin/repaymentSchedule";
	}

	@RequestMapping(value = "/admin/scheduleTask", method = RequestMethod.GET)
	public String scheduleTask(ModelMap model) {
		model.addAttribute("page", "scheduleTask");
		return "admin/scheduleTask";
	}

	@RequestMapping(value = "/admin/socialTest", method = RequestMethod.GET)
	public String socialTest(ModelMap model) {
		model.addAttribute("page", "socialTest");
		return "admin/socialTest";
	}

	@RequestMapping(value = "/admin/cameraSocialTest", method = RequestMethod.GET)
	public String cameraSocialTest(ModelMap model) {
		model.addAttribute("page", "cameraSocialTest");
		return "admin/cameraSocialTest";
	}

	@RequestMapping(value = "/admin/smsSocialTest", method = RequestMethod.GET)
	public String smsSocialTest(ModelMap model) {
		model.addAttribute("page", "smsSocialTest");
		return "admin/smsSocialTest";
	}
}
