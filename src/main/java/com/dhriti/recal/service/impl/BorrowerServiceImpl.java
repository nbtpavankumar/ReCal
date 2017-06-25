package com.dhriti.recal.service.impl;

import java.security.PublicKey;

import javax.swing.plaf.synth.SynthSplitPaneUI;
import javax.ws.rs.client.Entity;
import javax.ws.rs.core.Response;

import org.apache.log4j.Logger;
import org.jboss.resteasy.client.jaxrs.BasicAuthentication;
import org.jboss.resteasy.client.jaxrs.ResteasyClient;
import org.jboss.resteasy.client.jaxrs.ResteasyClientBuilder;
import org.jboss.resteasy.client.jaxrs.ResteasyWebTarget;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Service;

import com.ReCAL.libs.PasswordUtil;
import com.dhriti.recal.core.utils.Global;
import com.dhriti.recal.pojo.UserLogin;
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
	public Boolean createBorrowerUser(UserLogin userLogin) {

		String[] strAuthKey = adminService.getAuthKey().split(":");

		String siteMode = env.getRequiredProperty("site.mode");
		String userName = env.getRequiredProperty("api.username");
		String pass = env.getRequiredProperty("api.password");

		Boolean isUserCreated = Boolean.FALSE;
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
		

		response.close();

		String status = "", loginToken = "";
		String msg = "";
		String retResult = "";

		try {
			JSONParser parser = new JSONParser();
			JSONObject jsonObject = (JSONObject) parser.parse(result);

			status = (String) jsonObject.get("serverStatus");
			msg = (String) jsonObject.get("message");

			JSONObject objDetails = (JSONObject) jsonObject.get("responseDetails");
			//loginToken = objDetails.get("loginToken") != null ? (String) objDetails.get("loginToken"):"";
			LOG.info("REPONSE SUCCESS STATUS :: " + status);
			if (status.equalsIgnoreCase("SERVER_SUCCESS") && msg.equalsIgnoreCase("SUCCESS_USR_REG")) {
				retResult = "success:" + loginToken + ":" + strAuthKey[1];
				isUserCreated = Boolean.TRUE;
			} else {
				retResult = "failure:0:";
				isUserCreated = Boolean.FALSE;
			}

		} catch (Exception exp) {
			LOG.info("Getting Exception while getting Response :: " + exp.getMessage());
			exp.printStackTrace();
		}

		return isUserCreated;
	}

}
