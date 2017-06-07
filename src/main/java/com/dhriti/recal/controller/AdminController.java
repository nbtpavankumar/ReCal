package com.dhriti.recal.controller;

import java.security.PublicKey;

import javax.ws.rs.client.Entity;
import javax.ws.rs.core.Response;

import org.jboss.resteasy.client.jaxrs.BasicAuthentication;
import org.jboss.resteasy.client.jaxrs.ResteasyClient;
import org.jboss.resteasy.client.jaxrs.ResteasyClientBuilder;
import org.jboss.resteasy.client.jaxrs.ResteasyWebTarget;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ReCAL.libs.PasswordUtil;
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
	public String hello(Model model) {
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

}
