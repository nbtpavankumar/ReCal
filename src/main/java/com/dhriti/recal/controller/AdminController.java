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

/**
 * 
 * @author Giridhar
 *
 */

@Controller
public class AdminController {

	@Autowired
	private Environment env;

	@GetMapping("/admin")
	public String hello(Model model) {
		return "admin/login";
	}

	@RequestMapping(value = "/admin/checklogin", method = RequestMethod.POST)
	@ResponseBody
	public String adminLogin(@RequestParam String loginid, @RequestParam String password) {

		String result = "";

		try {
			result = adminAuthentication(loginid, password);
		} catch (Exception exp) {
			exp.printStackTrace();
		}

		// your logic here
		return result;
	}

	@RequestMapping(value = "/admin/dashboard", method = RequestMethod.GET)
	public String dashboard(ModelMap model) {
		model.addAttribute("page", "dashboard");
		return "admin/dashboard";
	}

	public String adminAuthentication(String loginId, String password) {
		String[] strAuthKey = getAuthKey().split(":");

		String siteMode = env.getRequiredProperty("site.mode");
		String userName = env.getRequiredProperty("api.username");
		String pass = env.getRequiredProperty("api.password");

		String apiUrl = "";

		if (siteMode.equalsIgnoreCase("development"))
			apiUrl = env.getRequiredProperty("api.dev.adminlogin.url");
		else
			apiUrl = env.getRequiredProperty("api.prod.adminlogin.url");

		// create resteasy clinet
		ResteasyClient client = new ResteasyClientBuilder().build();
		ResteasyWebTarget target = client.target(apiUrl);
		target.register(new BasicAuthentication(userName, pass));

		String jsonRequest = "";
		// AdminLoginObject alobj = new AdminLoginObject();

		try {
			PublicKey publicKey = PasswordUtil.generatePublicKey(strAuthKey[0]);

			// create json string
			jsonRequest = "{\"adminLoginId\": \"" + loginId + "\", \"password\": \""
					+ PasswordUtil.toHex(PasswordUtil.encrypt(password.getBytes(), publicKey)) + "\"}";

		} catch (Exception exp) {
			exp.printStackTrace();
		}

		Response response = target.request().header("key", strAuthKey[0]).header("keyid", strAuthKey[1])
				.post(Entity.entity(jsonRequest, javax.ws.rs.core.MediaType.APPLICATION_JSON_TYPE));

		String result = response.readEntity(String.class);
		// System.out.println(result);

		response.close(); // You should close connections!

		String status = "";
		String msg = "";
		String retResult = "";
		long adminId = 0;

		try {

			// parse json to get key and keyid
			JSONParser parser = new JSONParser();
			JSONObject jsonObject = (JSONObject) parser.parse(result);

			status = (String) jsonObject.get("serverStatus");
			msg = (String) jsonObject.get("message");

			JSONObject objDetails = (JSONObject) jsonObject.get("responseDetails");
			adminId = (Long) objDetails.get("adminId");

			// System.out.println("adminId"+adminId);

			// check status and message
			if (status.equalsIgnoreCase("SERVER_SUCCESS") && msg.equalsIgnoreCase("AUTHENTICATE_SUCCESS")) {
				retResult = "success:" + adminId + ":" + strAuthKey[1];
			} else {
				retResult = "failure:0:";
			}

		} catch (ParseException e) {
			e.printStackTrace();
		}

		return retResult;

	}

	public String getAuthKey() {

		String siteMode = env.getRequiredProperty("site.mode");
		String userName = env.getRequiredProperty("api.username");
		String password = env.getRequiredProperty("api.password");

		String apiUrl = "";

		if (siteMode.equalsIgnoreCase("development"))
			apiUrl = env.getRequiredProperty("api.dev.key.url");
		else
			apiUrl = env.getRequiredProperty("api.prod.key.url");

		// create resteasy clinet
		ResteasyClient client = new ResteasyClientBuilder().build();
		ResteasyWebTarget target = client.target(apiUrl);
		target.register(new BasicAuthentication(userName, password));

		// send request and get response
		Response response = target.request()
				.post(Entity.entity(null, javax.ws.rs.core.MediaType.APPLICATION_JSON_TYPE));

		String result = response.readEntity(String.class);

		response.close(); // You should close connections!

		String publickey = "";
		String keyId = "";

		try {

			// parse json to get key and keyid
			JSONParser parser = new JSONParser();
			JSONObject jsonObject = (JSONObject) parser.parse(result);

			// get response dtails
			JSONObject responseDetails = (JSONObject) jsonObject.get("responseDetails");

			publickey = (String) responseDetails.get("publicKey");
			// keyId = String.valueOf(((Long)
			// responseDetails.get("keyId")).intValue());
			keyId = (String) responseDetails.get("keyId");

		} catch (ParseException e) {
			e.printStackTrace();
		}

		return publickey + ":" + keyId;

	}

}
