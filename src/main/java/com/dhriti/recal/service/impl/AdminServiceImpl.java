package com.dhriti.recal.service.impl;

import java.security.PublicKey;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.ws.rs.client.Entity;
import javax.ws.rs.core.Response;

import org.jboss.resteasy.client.jaxrs.BasicAuthentication;
import org.jboss.resteasy.client.jaxrs.ResteasyClient;
import org.jboss.resteasy.client.jaxrs.ResteasyClientBuilder;
import org.jboss.resteasy.client.jaxrs.ResteasyWebTarget;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Service;

import com.ReCAL.libs.PasswordUtil;
import com.dhriti.recal.service.AdminService;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	private Environment env;

	@Override
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

	@Override
	public String loanSummaryDetails(String uid, String keyId) {
		String jsonResult = "";
		String result = "";

		try {
			String[] strAuthKey = getAuthKey().split(":");

			String siteMode = env.getProperty("site.mode");
			String userName = env.getProperty("api.username");
			String pass = env.getProperty("api.password");

			String apiUrl = "";

			if (siteMode.equalsIgnoreCase("development"))
				apiUrl = env.getProperty("api.dev.dashboard.loansummary.url");
			else
				apiUrl = env.getProperty("api.prod.dashboard.loansummary.url");

			// create resteasy clinet
			ResteasyClient client = new ResteasyClientBuilder().build();
			ResteasyWebTarget target = client.target(apiUrl);
			target.register(new BasicAuthentication(userName, pass));

			Response response = target.request().header("keyid", keyId).header("uid", uid).post(null);

			if (response.getStatus() != 200) {
				throw new Exception(
						"Failed : HTTP error code : " + response.getStatus() + " " + response.readEntity(String.class));
			}
			jsonResult = response.readEntity(String.class);
			response.close();

			// parse json to get key and keyid
			JSONParser parser = new JSONParser();
			JSONObject jsonObject = (JSONObject) parser.parse(jsonResult);

			if (jsonObject.get("responseDetails") != null) {

				// get response dtails
				JSONArray arrApps = (JSONArray) jsonObject.get("responseDetails");

				// read all objects
				for (int iCnt = 0; iCnt < arrApps.size(); iCnt++) {
					// get json object
					JSONArray arrRow = (JSONArray) arrApps.get(iCnt);

					String status = "";
					long total = 0;

					// get data
					if (arrRow.get(0) != null)
						status = (String) arrRow.get(0);

					if (arrRow.get(1) != null)
						total = (Long) arrRow.get(1);

					result += "<tr><td><a href='javascript:showApplicationsByStatus(\"" + status + "\")'>" + status
							+ "</a></td><td>" + total + "</td></tr>";

				}

			} // end if

		} catch (Exception exp) {
			exp.printStackTrace();
		}
		return result;

	}

	@Override
	public String recentApplicationDetails(String uid, String keyId) {
		String jsonResult = "";

		String result = "";
		try {

			// String[] strAuthKey = getAuthKey().split(":");

			String siteMode = env.getProperty("site.mode");
			String userName = env.getProperty("api.username");
			String pass = env.getProperty("api.password");

			String apiUrl = "";

			if (siteMode.equalsIgnoreCase("development"))
				apiUrl = env.getProperty("api.dev.dashboard.recentapps.url");
			else
				apiUrl = env.getProperty("api.prod.dashboard.recentapps.url");

			// create resteasy clinet
			ResteasyClient client = new ResteasyClientBuilder().build();
			ResteasyWebTarget target = client.target(apiUrl);
			target.register(new BasicAuthentication(userName, pass));

			Response response = target.request().header("keyid", keyId).header("uid", uid).post(null);
			
			if (response.getStatus() != 200) {
				throw new Exception("Failed : HTTP error code : " + response.getStatus() + " " + response.readEntity(String.class));
			}

			jsonResult = response.readEntity(String.class);

			// System.out.println("json"+jsonResult);
			response.close(); // You should close connections!

			// parse json to get key and keyid
			JSONParser parser = new JSONParser();
			JSONObject jsonObject = (JSONObject) parser.parse(jsonResult);

			if (jsonObject.get("responseDetails") != null) {
				// get response dtails
				JSONArray arrApps = (JSONArray) jsonObject.get("responseDetails");

				// read all objects
				for (int iCnt = 0; iCnt < arrApps.size(); iCnt++) {
					// get json object
					JSONObject objRow = (JSONObject) arrApps.get(iCnt);

					// get data

					String loanId = "";
					double amount = 0.00;
					long processDate = 0;
					String status = "";
					long submissionDate = 0;

					// check null
					if (objRow.get("loanId") != null)
						loanId = (String) objRow.get("loanId");

					if (objRow.get("loanAmount") != null)
						amount = (Double) objRow.get("loanAmount");

					if (objRow.get("processedDate") != null)
						processDate = (Long) objRow.get("processedDate");

					if (objRow.get("status") != null)
						status = (String) objRow.get("status");

					if (objRow.get("submissionDate") != null)
						submissionDate = (Long) objRow.get("submissionDate");

					SimpleDateFormat sdf = new SimpleDateFormat("MMM dd,yyyy HH:mm");
					Date dtProcess = new Date(processDate);
					Date dtSubmit = new Date(submissionDate);

					result += "<tr><td><a href='/admin/processing?appnum=" + loanId + "'>" + loanId + "</a></td><td>RM "
							+ amount + "</td><td>" + sdf.format(dtProcess) + "</td><td>" + status + "</td><td>"
							+ sdf.format(dtSubmit) + "</td></tr>";

				}

			} // end if

		} catch (Exception exp) {
			exp.printStackTrace();
		}

		// your logic here
		return result;
	}

	@Override
	public String loanDetailsbyStatus(String searchval, String uid, String keyId) {

		String jsonResult = "";
		String result = "";
		try {

			// String[] strAuthKey = getAuthKey().split(":");

			String siteMode = env.getProperty("site.mode");
			String userName = env.getProperty("api.username");
			String pass = env.getProperty("api.password");

			String apiUrl = "";

			if (siteMode.equalsIgnoreCase("development"))
				apiUrl = env.getProperty("api.dev.loanapplist.url");
			else
				apiUrl = env.getProperty("api.prod.loanapplist.url");

			// create resteasy clinet
			ResteasyClient client = new ResteasyClientBuilder().build();
			ResteasyWebTarget target = client.target(apiUrl + "/" + searchval);
			target.register(new BasicAuthentication(userName, pass));

			Response response = target.request().header("keyid", keyId).header("uid", uid).post(null);
			
			if (response.getStatus() != 200) {
				throw new Exception("Failed : HTTP error code : " + response.getStatus() + " " + response.readEntity(String.class));
			}

			jsonResult = response.readEntity(String.class);
			response.close(); // You should close connections!

			// parse json to get key and keyid
			JSONParser parser = new JSONParser();
			JSONObject jsonObject = (JSONObject) parser.parse(jsonResult);

			if (jsonObject.get("responseDetails") != null) {

				// get response dtails
				JSONArray arrApps = (JSONArray) jsonObject.get("responseDetails");

				// read all objects
				for (int iCnt = 0; iCnt < arrApps.size(); iCnt++) {
					// get json object
					JSONObject objRow = (JSONObject) arrApps.get(iCnt);

					String loanId = "";
					double amount = 0.00;
					long processDate = 0;
					String status = "";
					long submissionDate = 0;
					long userId = 0;

					// get data
					if (objRow.get("loanId") != null)
						loanId = (String) objRow.get("loanId");

					if (objRow.get("loanAmount") != null)
						amount = (Double) objRow.get("loanAmount");

					if (objRow.get("processedDate") != null)
						processDate = (Long) objRow.get("processedDate");

					if (objRow.get("status") != null)
						status = (String) objRow.get("status");

					if (objRow.get("submissionDate") != null)
						submissionDate = (Long) objRow.get("submissionDate");

					if (objRow.get("userId") != null)
						userId = (Long) objRow.get("userId");

					SimpleDateFormat sdf = new SimpleDateFormat("MMM dd,yyyy HH:mm");
					Date dtProcess = new Date(processDate);
					Date dtSubmit = new Date(submissionDate);

					if (iCnt == 0)
						result += "[ \"" + sdf.format(dtProcess) + "\",\"" + loanId + "\",\"" + userId + "\",\"RM"
								+ amount + "\",\" \",\"" + status + "\",\"" + sdf.format(dtSubmit) + "\" ]";
					else
						result += ",[ \"" + sdf.format(dtProcess) + "\",\"" + loanId + "\",\"" + userId + "\",\"RM"
								+ amount + "\",\" \",\"" + status + "\",\"" + sdf.format(dtSubmit) + "\" ]";

				}

			} // end if

		} catch (Exception exp) {
			exp.printStackTrace();
		}

		result += " ]}";

		// your logic here
		return result;
	}

}
