package com.dhriti.recal.service.impl;

import java.security.PublicKey;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.ws.rs.client.Entity;
import javax.ws.rs.core.Response;

import org.apache.log4j.Logger;
import org.jboss.resteasy.client.jaxrs.BasicAuthentication;
import org.jboss.resteasy.client.jaxrs.ResteasyClient;
import org.jboss.resteasy.client.jaxrs.ResteasyClientBuilder;
import org.jboss.resteasy.client.jaxrs.ResteasyWebTarget;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Service;

import com.ReCAL.libs.PasswordUtil;
import com.dhriti.recal.core.utils.Global;
import com.dhriti.recal.pojo.BorrowerDetails;
import com.dhriti.recal.service.AdminService;
import com.dhriti.recal.service.BorrowerService;

@Service
public class BorrowerServiceImpl implements BorrowerService {

	private static final Logger LOG = Logger.getLogger(Global.BORROWER_LOG);

	@Autowired
	private Environment env;

	@Autowired
	AdminService adminService;

	@Override
	public BorrowerDetails createBorrowerUser(BorrowerDetails userLogin, HttpServletRequest request) {

		HttpSession session = request.getSession();
		String[] strAuthKey = adminService.getAuthKey().split(":");

		String siteMode = env.getRequiredProperty("site.mode");
		String userName = env.getRequiredProperty("api.username");
		String pass = env.getRequiredProperty("api.password");

		BorrowerDetails isUserCreated = userLogin;
		String apiUrl = "";

		if (siteMode.equalsIgnoreCase("development"))
			apiUrl = env.getRequiredProperty("api.dev.userregistration.url");
		else
			apiUrl = env.getRequiredProperty("api.prod.userregistration.url");

		// create resteasy clinet
		ResteasyClient client = new ResteasyClientBuilder().build();
		ResteasyWebTarget target = client.target(apiUrl);
		target.register(new BasicAuthentication(userName, pass));

		String jsonRequest = "";
		try {
			PublicKey publicKey = PasswordUtil.generatePublicKey(strAuthKey[0]);

			// create json string
			jsonRequest = "{\"loginToken\": \"" + userLogin.getLoginToken() + "\", \"password\": \""
					+ PasswordUtil.toHex(PasswordUtil.encrypt(userLogin.getPassword().getBytes(), publicKey))
					+ "\",\"userToken\":\"" + userLogin.getUserToken() + "\"}";
			LOG.info("JASON Request ::" + jsonRequest);
		} catch (Exception exp) {
			exp.printStackTrace();
		}

		Response response = target.request().header("key", strAuthKey[0]).header("keyid", strAuthKey[1])
				.post(Entity.entity(jsonRequest, javax.ws.rs.core.MediaType.APPLICATION_JSON_TYPE));
		String result = response.readEntity(String.class);

		isUserCreated.setKeyid(strAuthKey[1]);
		response.close();

		String status = "", loginToken = "";
		String msg = "";
		String retResult = "";
		String userId = "0";

		try {
			JSONParser parser = new JSONParser();
			JSONObject jsonObject = (JSONObject) parser.parse(result);

			status = (String) jsonObject.get("serverStatus");
			msg = (String) jsonObject.get("message");

			JSONObject objDetails = (JSONObject) jsonObject.get("responseDetails");
			// userId = (Long) objDetails.get("userId");
			isUserCreated.setUid(userId);

			LOG.info("REPONSE SUCCESS STATUS :: " + status);
			if (status.equalsIgnoreCase("SERVER_SUCCESS") && msg.equalsIgnoreCase("SUCCESS_USR_REG")) {
				retResult = "success:" + userLogin.getLoginToken() + ":" + strAuthKey[1];
				isUserCreated.setRespStatus("SUCCESS_USR_REG");
			} else {
				retResult = "failure:0:";
			}

		} catch (Exception exp) {
			LOG.info("Getting Exception while getting Response :: " + exp.getMessage());
			exp.printStackTrace();
		}

		return isUserCreated;
	}

	@Override
	public String userAuthentication(String loginid, String password, HttpServletResponse resp) {

		String[] strAuthKey = adminService.getAuthKey().split(":");

		String siteMode = env.getRequiredProperty("site.mode");
		String userName = env.getRequiredProperty("api.username");
		String pass = env.getRequiredProperty("api.password");
		String userToken = null;

		String apiUrl = "";

		if (siteMode.equalsIgnoreCase("development"))
			apiUrl = env.getRequiredProperty("api.dev.userlogin.url");
		else
			apiUrl = env.getRequiredProperty("api.prod.userlogin.url");

		// create resteasy clinet
		ResteasyClient client = new ResteasyClientBuilder().build();
		ResteasyWebTarget target = client.target(apiUrl);
		target.register(new BasicAuthentication(userName, pass));

		String jsonRequest = "";

		try {
			PublicKey publicKey = PasswordUtil.generatePublicKey(strAuthKey[0]);

			// create json string
			jsonRequest = "{\"loginToken\": \"" + loginid + "\", \"password\": \""
					+ PasswordUtil.toHex(PasswordUtil.encrypt(password.getBytes(), publicKey)) + "\"}";

		} catch (Exception exp) {
			exp.printStackTrace();
		}

		Response response = target.request().header("key", strAuthKey[0]).header("keyid", strAuthKey[1])
				.post(Entity.entity(jsonRequest, javax.ws.rs.core.MediaType.APPLICATION_JSON_TYPE));
		String result = response.readEntity(String.class);
		response.close();

		LOG.info("RESULT :: " + result);
		String status = "";
		String msg = "";
		String retResult = "";
		long userId = 0;

		try {

			JSONParser parser = new JSONParser();
			JSONObject jsonObject = (JSONObject) parser.parse(result);

			status = (String) jsonObject.get("serverStatus");
			msg = (String) jsonObject.get("message");

			JSONObject objDetails = (JSONObject) jsonObject.get("responseDetails");
			userId = (Long) objDetails.get("userId");

			// check status and message
			if (status.equalsIgnoreCase("SERVER_SUCCESS") && msg.equalsIgnoreCase("AUTHENTICATE_SUCCESS")) {
				retResult = "success:" + userId + ":" + strAuthKey[1];
				resp.addCookie(new Cookie("userId", Long.toString(userId)));
				resp.addCookie(new Cookie("keyId", strAuthKey[1]));
			} else {
				retResult = "failure:0:";
				resp.addCookie(new Cookie("userId", ""));
				resp.addCookie(new Cookie("keyId", ""));
			}

		} catch (ParseException e) {
			e.printStackTrace();
		}

		return retResult;

	}

	@Override
	public String getBankNames(HttpServletRequest request, String keyId, String uid) throws Exception {

		HttpSession session = request.getSession();

		String jsonResult = "";
		String result = "";
		String siteMode = env.getProperty("site.mode");
		String userName = env.getProperty("api.username");
		String pass = env.getProperty("api.password");

		String apiUrl = "";

		if (siteMode.equalsIgnoreCase("development"))
			apiUrl = env.getProperty("api.dev.bank.url");
		else
			apiUrl = env.getProperty("api.prod.bank.url");

		// create resteasy clinet
		ResteasyClient client = new ResteasyClientBuilder().build();
		ResteasyWebTarget target = client.target(apiUrl);
		target.register(new BasicAuthentication(userName, pass));

		Response response = target.request().header("keyid", keyId).header("uid", uid).post(null);

		jsonResult = response.readEntity(String.class);

		response.close(); // You should close connections!

		// parse json to get key and keyid
		JSONParser parser = new JSONParser();
		JSONObject jsonObject = (JSONObject) parser.parse(jsonResult);
		result = jsonObject.toJSONString();
		return result;
	}

	@Override
	public String getEmploymentType(HttpServletRequest request, String keyId, String uid) throws Exception {

		HttpSession session = request.getSession();

		String jsonResult = "";
		String result = "";
		String siteMode = env.getProperty("site.mode");
		String userName = env.getProperty("api.username");
		String pass = env.getProperty("api.password");

		String apiUrl = "";

		if (siteMode.equalsIgnoreCase("development"))
			apiUrl = env.getProperty("api.dev.employmenttype.url");
		else
			apiUrl = env.getProperty("api.prod.employmenttype.url");

		// create resteasy clinet
		ResteasyClient client = new ResteasyClientBuilder().build();
		ResteasyWebTarget target = client.target(apiUrl);
		target.register(new BasicAuthentication(userName, pass));

		Response response = target.request().header("keyid", keyId).header("uid", uid).post(null);

		jsonResult = response.readEntity(String.class);

		response.close(); // You should close connections!

		// parse json to get key and keyid
		JSONParser parser = new JSONParser();
		JSONObject jsonObject = (JSONObject) parser.parse(jsonResult);
		result = jsonObject.toJSONString();
		return result;
	}

	@Override
	public String getIndustryDetails(HttpServletRequest request, String keyId, String uid) throws Exception {

		HttpSession session = request.getSession();

		String jsonResult = "";
		String result = "";
		String siteMode = env.getProperty("site.mode");
		String userName = env.getProperty("api.username");
		String pass = env.getProperty("api.password");

		String apiUrl = "";

		if (siteMode.equalsIgnoreCase("development"))
			apiUrl = env.getProperty("api.dev.industry.url");
		else
			apiUrl = env.getProperty("api.prod.industry.url");

		// create resteasy clinet
		ResteasyClient client = new ResteasyClientBuilder().build();
		ResteasyWebTarget target = client.target(apiUrl);
		target.register(new BasicAuthentication(userName, pass));

		Response response = target.request().header("keyid", keyId).header("uid", uid).post(null);

		jsonResult = response.readEntity(String.class);

		response.close(); // You should close connections!

		// parse json to get key and keyid
		JSONParser parser = new JSONParser();
		JSONObject jsonObject = (JSONObject) parser.parse(jsonResult);
		result = jsonObject.toJSONString();
		return result;
	}

	@Override
	public String getServiceLength(HttpServletRequest request, String keyId, String uid) throws Exception {

		HttpSession session = request.getSession();

		String jsonResult = "";
		String result = "";
		String siteMode = env.getProperty("site.mode");
		String userName = env.getProperty("api.username");
		String pass = env.getProperty("api.password");

		String apiUrl = "";

		if (siteMode.equalsIgnoreCase("development"))
			apiUrl = env.getProperty("api.dev.serviceLength.url");
		else
			apiUrl = env.getProperty("api.prod.serviceLength.url");

		// create resteasy clinet
		ResteasyClient client = new ResteasyClientBuilder().build();
		ResteasyWebTarget target = client.target(apiUrl);
		target.register(new BasicAuthentication(userName, pass));

		Response response = target.request().header("keyid", keyId).header("uid", uid).post(null);

		jsonResult = response.readEntity(String.class);

		response.close(); // You should close connections!

		// parse json to get key and keyid
		JSONParser parser = new JSONParser();
		JSONObject jsonObject = (JSONObject) parser.parse(jsonResult);
		result = jsonObject.toJSONString();
		return result;
	}

}
