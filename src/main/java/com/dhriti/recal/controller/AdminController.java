package com.dhriti.recal.controller;

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

/**
 * 
 * @author Giridhar
 *
 */

@Controller
public class AdminController {

	@Autowired
	AdminService adminService;

	@GetMapping("/admin")
	public String adminLogin(Model model) {
		return "admin/login";
	}

	@RequestMapping(value = "/admin/checklogin", method = RequestMethod.POST)
	@ResponseBody
	public String adminLogin(@RequestParam String loginid, @RequestParam String password) {

		String result = "";

		try {
			result = adminService.adminAuthentication(loginid, password);
		} catch (Exception exp) {
			exp.printStackTrace();
		}

		return result;
	}

	@RequestMapping(value = "/admin/dashboard", method = RequestMethod.GET)
	public String dashboard(ModelMap model) {
		model.addAttribute("page", "dashboard");
		return "admin/dashboard";
	}

	@RequestMapping(value = "/admin/applicationslist", method = RequestMethod.GET)
	public String applicationslist(@RequestParam String searchval, ModelMap model) {
		model.addAttribute("page", "applications");
		model.addAttribute("search", searchval);
		return "admin/listapplications";
	}

	@RequestMapping(value = "/admin/loansummary", method = RequestMethod.POST)
	@ResponseBody
	public String loansummary(@RequestParam String uid, @RequestParam String keyId) {

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

}
