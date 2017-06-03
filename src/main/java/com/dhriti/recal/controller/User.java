package com.dhriti.recal.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.http.MediaType;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;

import com.ReCAL.libs.PasswordUtil;
import com.ReCAL.libs.AdminLoginObject;
import org.jboss.resteasy.client.jaxrs.ResteasyClient;
import org.jboss.resteasy.client.jaxrs.ResteasyClientBuilder; 
import org.jboss.resteasy.client.jaxrs.ResteasyWebTarget;
import org.jboss.resteasy.client.jaxrs.BasicAuthentication;
import java.security.PublicKey;
import javax.ws.rs.core.Response;
import javax.ws.rs.client.Entity;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import java.io.IOException;
import java.lang.Exception;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.bind.annotation.CookieValue;
import java.io.File;
import java.io.FileInputStream;
import org.jboss.resteasy.plugins.providers.multipart.MultipartFormDataOutput;
import javax.ws.rs.core.GenericEntity;

@Configuration
@PropertySource(value="classpath:config.properties", ignoreResourceNotFound=true)
@Controller
@RequestMapping("/")
public class User {
	
	
	    @Autowired
	    private Environment env;
	
	   
	   
	    
	   @RequestMapping(value = "/registration",method = RequestMethod.GET)
	   @ResponseBody
	   public String registration(@RequestParam String email,@RequestParam String password,ModelMap model) {
		   
		      String[] strAuthKey = getAuthKey().split(":");
			  
			  
		      String siteMode = env.getProperty("site.mode");
		      String userName = env.getProperty("api.username");
		      String pass     = env.getProperty("api.password");
		   
		      String apiUrl = "";
		      
		      if(siteMode.equalsIgnoreCase("development"))
				 apiUrl = env.getProperty("api.dev.userregistration.url");
			  else
				 apiUrl = env.getProperty("api.prod.userregistration.url");
		   
		  
		 
			  //create resteasy clinet
			  ResteasyClient client = new ResteasyClientBuilder().build();
			  ResteasyWebTarget target = client.target(apiUrl);
			  target.register(new BasicAuthentication(userName, pass));
			  
			  
			  String jsonRequest = "";
			  
			  
			  try 
			  {
				  PublicKey publicKey = PasswordUtil.generatePublicKey(strAuthKey[0]);
				  
				  //create json string
				  jsonRequest = "{\"loginToken\": \""+email+"\", \"password\": \""+PasswordUtil.toHex(PasswordUtil.encrypt(password.getBytes(), publicKey))+"\"}";
				  
				
			  }
			  catch(Exception  exp)
			  {
				   exp.printStackTrace();
			  }
			  
			 
			  
			 Response response = target.request().header("key", strAuthKey[0]).header("keyid", strAuthKey[1]).post(Entity.entity(jsonRequest, javax.ws.rs.core.MediaType.APPLICATION_JSON_TYPE));
			 
			 String result = response.readEntity(String.class);
		
	         response.close();  // You should close connections!
	          
		     return result;
	     
	   }
	   
	   @RequestMapping(value = "/login",method = RequestMethod.GET)
	   @ResponseBody
	   public String login(@RequestParam String email,@RequestParam String password,HttpServletResponse resp) {
		   
		      String[] strAuthKey = getAuthKey().split(":");
			  
			  
		      String siteMode = env.getProperty("site.mode");
		      String userName = env.getProperty("api.username");
		      String pass     = env.getProperty("api.password");
		   
		      String apiUrl = "";
		      
		      if(siteMode.equalsIgnoreCase("development"))
				 apiUrl = env.getProperty("api.dev.userlogin.url");
			  else
				 apiUrl = env.getProperty("api.prod.userlogin.url");
		   
		  
		 
			  //create resteasy clinet
			  ResteasyClient client = new ResteasyClientBuilder().build();
			  ResteasyWebTarget target = client.target(apiUrl);
			  target.register(new BasicAuthentication(userName, pass));
			  
			  
			  String jsonRequest = "";
			  
			  
			  try 
			  {
				  PublicKey publicKey = PasswordUtil.generatePublicKey(strAuthKey[0]);
				  
				  //create json string
				  jsonRequest = "{\"loginToken\": \""+email+"\", \"password\": \""+PasswordUtil.toHex(PasswordUtil.encrypt(password.getBytes(), publicKey))+"\"}";
				  
				
			  }
			  catch(Exception  exp)
			  {
				   exp.printStackTrace();
			  }
			  
			 
			  
			 Response response = target.request().header("key", strAuthKey[0]).header("keyid", strAuthKey[1]).post(Entity.entity(jsonRequest, javax.ws.rs.core.MediaType.APPLICATION_JSON_TYPE));
			 
			 String result = response.readEntity(String.class);
		
	         response.close();  // You should close connections!
	         
	          String status = "";
			  String msg = "";
			  String retResult = "";
			  long userId = 0;
			  
			   try {
				  
				  //parse json to get key and keyid
				  JSONParser parser = new JSONParser();
				  JSONObject jsonObject = (JSONObject) parser.parse(result);
				  
				  status = (String) jsonObject.get("serverStatus");
				  msg    = (String) jsonObject.get("message");
				  
				  JSONObject objDetails = (JSONObject) jsonObject.get("responseDetails");
				  userId    = (Long) objDetails.get("userId"); 
				  
		  
				  //check status and message
				  if(status.equalsIgnoreCase("SERVER_SUCCESS") && msg.equalsIgnoreCase("AUTHENTICATE_SUCCESS"))
				  {
					   //set cookies
					   resp.addCookie(new Cookie("userId", Long.toString(userId)));
					   resp.addCookie(new Cookie("keyId", strAuthKey[1]));
					  
				  }
				  else
				  {
					  resp.addCookie(new Cookie("userId",""));
					  resp.addCookie(new Cookie("keyId", ""));
				  }
				  
				
			  
		      } catch (ParseException e) {
			       e.printStackTrace();
		     }
			   
	          
		     return result;
	     
	   }
	   
	   @RequestMapping(value = "/getprofile",method = RequestMethod.GET)
	   @ResponseBody
	   public String getprofile(@CookieValue(value = "userId", defaultValue = "0") String uid, @CookieValue(value = "keyId", defaultValue = "") String keyId) {
		   
		     
		      String siteMode = env.getProperty("site.mode");
		      String userName = env.getProperty("api.username");
		      String pass     = env.getProperty("api.password");
		   
		      String apiUrl = "";
		      
		      if(siteMode.equalsIgnoreCase("development"))
				 apiUrl = env.getProperty("api.dev.userprofiles.url");
			  else
				 apiUrl = env.getProperty("api.prod.userprofiles.url");
		   
		  
		 
			  //create resteasy clinet
			  ResteasyClient client = new ResteasyClientBuilder().build();
			  ResteasyWebTarget target = client.target(apiUrl);
			  target.register(new BasicAuthentication(userName, pass));
			  
			 
			  Response response = target.request().header("keyid",keyId).header("uid", uid).post(null);
			 
			  String result = response.readEntity(String.class);
		
	          response.close();  // You should close connections!
	          
		      return result;
	     
	   }
	   
	   @RequestMapping(value = "/updateprofile",method = RequestMethod.GET)
	   @ResponseBody
	   public String updateprofile(@RequestParam String name,@RequestParam String id,@RequestParam String mobile,@RequestParam String nationality ,@CookieValue(value = "userId", defaultValue = "0") String uid,@CookieValue(value = "keyId", defaultValue = "") String keyId) {
		   
		     
		      String siteMode = env.getProperty("site.mode");
		      String userName = env.getProperty("api.username");
		      String pass     = env.getProperty("api.password");
		   
		      String apiUrl = "";
		      
		      if(siteMode.equalsIgnoreCase("development"))
				 apiUrl = env.getProperty("api.dev.updateprofile.url");
			  else
				 apiUrl = env.getProperty("api.prod.updateprofile.url");
		   
		  
		 
			  //create resteasy clinet
			  ResteasyClient client = new ResteasyClientBuilder().build();
			  ResteasyWebTarget target = client.target(apiUrl);
			  target.register(new BasicAuthentication(userName, pass));
			  
			  String jsonRequest = "";
			  
			  
			  //create json string
			  jsonRequest = "{\"name\": \""+name+"\", \"identificationNumber\": \""+id+"\", \"mobileNumber\": \""+mobile+"\", \"nationality\": \""+nationality+"\"}";
			 
			  Response response = target.request().header("keyid",keyId).header("uid", uid).post(Entity.entity(jsonRequest, javax.ws.rs.core.MediaType.APPLICATION_JSON_TYPE));
			 
			  String result = response.readEntity(String.class);
		
	          response.close();  // You should close connections!
	          
		      return result;
	     
	   }
	   
	   @RequestMapping(value = "/ccrisrecords",method = RequestMethod.GET)
	   @ResponseBody
	   public String ccrisrecords(@CookieValue(value = "userId", defaultValue = "0") String uid, @CookieValue(value = "keyId", defaultValue = "") String keyId) {
		   
		     
		      String siteMode = env.getProperty("site.mode");
		      String userName = env.getProperty("api.username");
		      String pass     = env.getProperty("api.password");
		   
		      String apiUrl = "";
		      
		      if(siteMode.equalsIgnoreCase("development"))
				 apiUrl = env.getProperty("api.dev.ccrisrecords.url");
			  else
				 apiUrl = env.getProperty("api.prod.ccrisrecords.url");
		   
		  
		 
			  //create resteasy clinet
			  ResteasyClient client = new ResteasyClientBuilder().build();
			  ResteasyWebTarget target = client.target(apiUrl);
			  target.register(new BasicAuthentication(userName, pass));
			  
			 
			  Response response = target.request().header("keyid",keyId).header("uid", uid).post(null);
			 
			  String result = response.readEntity(String.class);
		
	          response.close();  // You should close connections!
	          
		      return result;
	     
	   }
	   
	   @RequestMapping(value = "/creditanalysis",method = RequestMethod.GET)
	   @ResponseBody
	   public String creditanalysis(@CookieValue(value = "userId", defaultValue = "0") String uid, @CookieValue(value = "keyId", defaultValue = "") String keyId) {
		   
		     
		      String siteMode = env.getProperty("site.mode");
		      String userName = env.getProperty("api.username");
		      String pass     = env.getProperty("api.password");
		   
		      String apiUrl = "";
		      
		      if(siteMode.equalsIgnoreCase("development"))
				 apiUrl = env.getProperty("api.dev.creditanalysis.url");
			  else
				 apiUrl = env.getProperty("api.prod.creditanalysis.url");
		   
		  
		 
			  //create resteasy clinet
			  ResteasyClient client = new ResteasyClientBuilder().build();
			  ResteasyWebTarget target = client.target(apiUrl);
			  target.register(new BasicAuthentication(userName, pass));
			  
			 
			  Response response = target.request().header("keyid",keyId).header("uid", uid).post(null);
			 
			  String result = response.readEntity(String.class);
		
	          response.close();  // You should close connections!
	          
		      return result;
	     
	   }
	   
	   
	   @RequestMapping(value = "/kycstatus",method = RequestMethod.GET)
	   @ResponseBody
	   public String kycstatus(@CookieValue(value = "userId", defaultValue = "0") String uid, @CookieValue(value = "keyId", defaultValue = "") String keyId) {
		   
		     
		      String siteMode = env.getProperty("site.mode");
		      String userName = env.getProperty("api.username");
		      String pass     = env.getProperty("api.password");
		   
		      String apiUrl = "";
		      
		      if(siteMode.equalsIgnoreCase("development"))
				 apiUrl = env.getProperty("api.dev.kycstatus.url");
			  else
				 apiUrl = env.getProperty("api.prod.kycstatus.url");
		   
		  
		 
			  //create resteasy clinet
			  ResteasyClient client = new ResteasyClientBuilder().build();
			  ResteasyWebTarget target = client.target(apiUrl);
			  target.register(new BasicAuthentication(userName, pass));
			  
			 
			  Response response = target.request().header("keyid",keyId).header("uid", uid).post(null);
			 
			  String result = response.readEntity(String.class);
		
	          response.close();  // You should close connections!
	          
		      return result;
	     
	   }
	   
	   
	   @RequestMapping(value = "/submitccris",method = RequestMethod.GET)
	   @ResponseBody
	   public String submitccris(@CookieValue(value = "userId", defaultValue = "0") String uid, @CookieValue(value = "keyId", defaultValue = "") String keyId,@RequestParam String pcode,@RequestParam String desc) {
		   
		     
		      String siteMode = env.getProperty("site.mode");
		      String userName = env.getProperty("api.username");
		      String pass     = env.getProperty("api.password");
		   
		      String apiUrl = "";
		      
		      if(siteMode.equalsIgnoreCase("development"))
				 apiUrl = env.getProperty("api.dev.submitccris.url");
			  else
				 apiUrl = env.getProperty("api.prod.submitccris.url");
		   
		  
		 
			  //create resteasy clinet
			  ResteasyClient client = new ResteasyClientBuilder().build();
			  ResteasyWebTarget target = client.target(apiUrl);
			  target.register(new BasicAuthentication(userName, pass));
			  
			  String jsonRequest = "";
			  
			 //create json string
			  jsonRequest = "{\"purposeCode\": \""+pcode+"\", \"purposeDesc\": \""+desc+"\"}";
			  
			 
			  Response response = target.request().header("keyid",keyId).header("uid", uid).post(Entity.entity(jsonRequest, javax.ws.rs.core.MediaType.APPLICATION_JSON_TYPE));
			 
			  String result = response.readEntity(String.class);
		
	          response.close();  // You should close connections!
	          
		      return result;
	     
	   }
	   
	   
	   @RequestMapping(value = "/kyc",method = RequestMethod.GET)
	   @ResponseBody
	   public String kyc(@CookieValue(value = "userId", defaultValue = "0") String uid, @CookieValue(value = "keyId", defaultValue = "") String keyId) {
		   
		     
		      String siteMode = env.getProperty("site.mode");
		      String userName = env.getProperty("api.username");
		      String pass     = env.getProperty("api.password");
		   
		      String apiUrl = "";
		      
		      if(siteMode.equalsIgnoreCase("development"))
				 apiUrl = env.getProperty("api.dev.kyc.url");
			  else
				 apiUrl = env.getProperty("api.prod.kyc.url");
		   
		  
		 
			  //create resteasy clinet
			  ResteasyClient client = new ResteasyClientBuilder().build();
			  ResteasyWebTarget target = client.target(apiUrl);
			  target.register(new BasicAuthentication(userName, pass));
			  
			  String result = "";
			  
			  
			  try 
			  {
			  
			  File f1 = new File("C:/Users/divinetech/Desktop/test.jpg");
			  File f2 = new File("C:/Users/divinetech/Desktop/test.jpg");
			  File f3 = new File("C:/Users/divinetech/Desktop/test.jpg");
			  File f4 = new File("C:/Users/divinetech/Desktop/test.jpg");
			  
			  MultipartFormDataOutput mdo = new MultipartFormDataOutput();
				
			  mdo.addFormData("uploadICFront", new FileInputStream(f1), javax.ws.rs.core.MediaType.MULTIPART_FORM_DATA_TYPE);
				
			  mdo.addFormData("uploadICBack", new FileInputStream(f2), javax.ws.rs.core.MediaType.MULTIPART_FORM_DATA_TYPE);
				
			  mdo.addFormData("uploadFace1", new FileInputStream(f3), javax.ws.rs.core.MediaType.MULTIPART_FORM_DATA_TYPE);
				
			  mdo.addFormData("uploadFace2", new FileInputStream(f4), javax.ws.rs.core.MediaType.MULTIPART_FORM_DATA_TYPE);
				
			  GenericEntity<MultipartFormDataOutput> entity = new GenericEntity<MultipartFormDataOutput>(mdo) { };
			  
			
			  Response response = target.request().header("keyid",keyId).header("uid", uid).post(Entity.entity(entity, javax.ws.rs.core.MediaType.MULTIPART_FORM_DATA_TYPE));
			 
			  result = response.readEntity(String.class);
		
	          response.close();  // You should close connections!
			  }
			  catch(Exception exp)
			  {
				System.out.println(exp);
			  }
	          
		      return result;
	     
	   }
	   
	   
	   @RequestMapping(value = "/loanapplication",method = RequestMethod.GET)
	   @ResponseBody
	   public String loanapplication(@CookieValue(value = "userId", defaultValue = "0") String uid, @CookieValue(value = "keyId", defaultValue = "") String keyId) {
		   
		     
		      String siteMode = env.getProperty("site.mode");
		      String userName = env.getProperty("api.username");
		      String pass     = env.getProperty("api.password");
		   
		      String apiUrl = "";
		      
		      if(siteMode.equalsIgnoreCase("development"))
				 apiUrl = env.getProperty("api.dev.loanapplication.url");
			  else
				 apiUrl = env.getProperty("api.prod.loanapplication.url");
		   
		  
		 
			  //create resteasy clinet
			  ResteasyClient client = new ResteasyClientBuilder().build();
			  ResteasyWebTarget target = client.target(apiUrl);
			  target.register(new BasicAuthentication(userName, pass));
			  
			  //data values
			  String address = "A3302, Persoft Tower, Jalan SS3/75";
			  String city = "Petaling Jaya";
			  String country = "Malaysia";
			  String postalcode = "46300";
			  String state = "Wilayah Persekutuan";
			  
			  String EmployerName = "ReCAL Sdn. Bhd.";
			  String EmploymentType = "Full time";
			  String LengthOfService = "9";
			  String TypeOfBusiness = "Technical Consultant";
			  
			  String LoanAmount = "1490000";
			  String Purpose = "Buy Ducatti Monster Triple R";
			  String ReferralCode = "";
			  String Tenure = "9";
			  String TargetSegment = "A0001";
			  String DisbursementBank = "Maybank";
			  String DisbursementBankAccNo = "121212121212121";
			  
			  String jsonloan = "";
			  String jsonUserEmply = "";
			  String jsonUserAddress = "";
			  
			 //create json string
			  jsonUserAddress = "{\"address\": \""+address+"\", \"city\": \""+city+"\", \"country\": \""+country+"\", \"postcode\": \""+postalcode+"\", \"state\": \""+state+"\"}";
			  jsonUserEmply = "{\"employerName\": \""+EmployerName+"\", \"employmentType\": \""+EmploymentType+"\", \"lengthOfService\": \""+LengthOfService+"\", \"typeOfBusiness\": \""+TypeOfBusiness+"\"}";
			  jsonloan = "{\"loanAmount\": \""+LoanAmount+"\", \"purpose\": \""+Purpose+"\", \"referralCode\": \""+ReferralCode+"\", \"userAddrObj\": \""+jsonUserAddress+"\", \"UserEmplyObj\": \""+jsonUserEmply+"\", \"tenure\": \""+Tenure+"\", \"targetSegment\": \""+TargetSegment+"\", \"disbursementBank\": \""+DisbursementBank+"\", \"disbursementBankAccNo\": \""+DisbursementBankAccNo+"\", \"productId\": \"P\"}";
			  
			 
			  Response response = target.request().header("keyid",keyId).header("uid", uid).post(Entity.entity(jsonloan, javax.ws.rs.core.MediaType.APPLICATION_JSON_TYPE));
			 
			  String result = response.readEntity(String.class);
		
	          response.close();  // You should close connections!
	          
		      return result;
	     
	   }
	   
	   
	   
	   
	   
	   
	     /**
		  ** This method get auth key to call api
		  */
		  public String getAuthKey()
		  {
			  
			   String siteMode = env.getProperty("site.mode");
			   String userName = env.getProperty("api.username");
			   String password = env.getProperty("api.password");
			   
			   String apiUrl = "";
			   
			   if(siteMode.equalsIgnoreCase("development"))
				 apiUrl = env.getProperty("api.dev.key.url");
			   else
				 apiUrl = env.getProperty("api.prod.key.url");
			  
			 
			  //create resteasy clinet
			  ResteasyClient client = new ResteasyClientBuilder().build();
			  ResteasyWebTarget target = client.target(apiUrl);
			  target.register(new BasicAuthentication(userName, password));
			  
			  //send request and get response
			  Response response = target.request().post(Entity.entity(null, javax.ws.rs.core.MediaType.APPLICATION_JSON_TYPE));
			  
			  
			  String result = response.readEntity(String.class);
			  
			 
			 
	          response.close();  // You should close connections!
			  
			   String publickey = "";
			   String keyId = "";
			  
			  try {
				  
				  //parse json to get key and keyid
				  JSONParser parser = new JSONParser();
				  JSONObject jsonObject = (JSONObject) parser.parse(result);
				  
				  //get response dtails
				  JSONObject responseDetails = (JSONObject) jsonObject.get("responseDetails");
				  
				  publickey    =     (String) responseDetails.get("publicKey");
				  //keyId        =     String.valueOf(((Long) responseDetails.get("keyId")).intValue());
				  keyId        =     (String) responseDetails.get("keyId");
				 
			  
			  
		      } catch (ParseException e) {
			       e.printStackTrace();
		     }
			  
			  return publickey+":"+keyId;


		  }
		  
	   
	   
}
