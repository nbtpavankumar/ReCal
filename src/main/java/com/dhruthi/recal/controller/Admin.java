package com.dhruthi.recal.controller;


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

@Configuration
@PropertySource(value="classpath:config.properties", ignoreResourceNotFound=true)
@Controller
@RequestMapping("/admin/")
public class Admin {
	
	
	    @Autowired
	    private Environment env;
	
	   
	   /**
	    * This method is used to verify admin login
	    * @param name
	    * @param location
	    * @return
	    */
	   @RequestMapping(value = "checklogin", method = RequestMethod.POST)
	   @ResponseBody
	   public String adminLogin(@RequestParam String loginid,@RequestParam String password) {
		    
		   String result = "";
		   
		  
		   
		   try
		   {
		      result = adminAuthentication(loginid,password);
		   }
		   catch(Exception exp)
		   {
			   exp.printStackTrace();
		   }
		   
		    // your logic here
		    return result;
		}
	    
	   @RequestMapping(value = "login",method = RequestMethod.GET)
	   public String login(ModelMap model) {
	     return "admin/login";
	   }
	   
	   @RequestMapping(value = "forgotpassword",method = RequestMethod.GET)
	   public String forgotpassword(ModelMap model) {
	     return "admin/forgotpassword";
	   }
	   
	   
	   @RequestMapping(value = "dashboard",method = RequestMethod.GET)
	   public String dashboard(ModelMap model) {
		 model.addAttribute("page", "dashboard");
	     return "admin/dashboard";
	   }
	   
	   @RequestMapping(value = "applicationslist",method = RequestMethod.GET)
	   public String applicationslist(@RequestParam String searchval,ModelMap model) {
		 model.addAttribute("page", "applications");
		 model.addAttribute("search", searchval);
	     return "admin/listapplications";
	   }
	   
	   @RequestMapping(value = "loanslist",method = RequestMethod.GET)
	   public String loanslist(ModelMap model) {
		 model.addAttribute("page", "loans");
	     return "admin/listloans";
	   }
	   
	   @RequestMapping(value = "processing",method = RequestMethod.GET)
	   public String processing(@RequestParam String appnum,ModelMap model) {
		 model.addAttribute("page", "applications");
		 model.addAttribute("appnum", appnum);
	     return "admin/processing";
	   }
	   
	   
	   
	   @RequestMapping(value = "recentapplications", method = RequestMethod.POST)
	   @ResponseBody
	   public String recentapps(@RequestParam String uid,@RequestParam String keyId) {
		    
		   String result = "";
		   String jsonResult = "";
		   
		   try
		   {
			   
		   
		   //String[] strAuthKey = getAuthKey().split(":");
		   
		   String siteMode = env.getProperty("site.mode");
		   String userName = env.getProperty("api.username");
		   String pass     = env.getProperty("api.password");
		   
		   String apiUrl = "";
		   
		   if(siteMode.equalsIgnoreCase("development"))
			 apiUrl = env.getProperty("api.dev.dashboard.recentapps.url");
		   else
			 apiUrl = env.getProperty("api.prod.dashboard.recentapps.url");
			  
			 
		   //create resteasy clinet
		   ResteasyClient client = new ResteasyClientBuilder().build();
		   ResteasyWebTarget target = client.target(apiUrl);
		   target.register(new BasicAuthentication(userName, pass));
		   
		   Response response = target.request().header("keyid", keyId).header("uid", uid).post(null);
			 
		   jsonResult = response.readEntity(String.class);
		   
		   //System.out.println("json"+jsonResult);
	       response.close();  // You should close connections!
	       
	       
	       
	       //parse json to get key and keyid
			JSONParser parser = new JSONParser();
			JSONObject jsonObject = (JSONObject) parser.parse(jsonResult);
			  
			
			if(jsonObject.get("responseDetails") != null)
			{
				//get response dtails
				JSONArray arrApps = (JSONArray) jsonObject.get("responseDetails");
				
				//read all objects
				for(int iCnt = 0; iCnt < arrApps.size(); iCnt++) 
				{
					//get json object
					JSONObject objRow = (JSONObject) arrApps.get(iCnt);
					
					//get data
					
					String loanId       = "";
					double amount       = 0.00;
					long processDate    = 0;
					String status       = "";
					long submissionDate = 0;
					
					//check null
					if(objRow.get("loanId") != null)
					 loanId       = (String) objRow.get("loanId");
					
					if(objRow.get("loanAmount") != null)
					  amount       = (Double) objRow.get("loanAmount");
					
					if(objRow.get("processedDate") != null)
					  processDate    = (Long) objRow.get("processedDate");
					
					if(objRow.get("status") != null)
					  status       = (String) objRow.get("status");
					
					if(objRow.get("submissionDate") != null)
					 submissionDate = (Long) objRow.get("submissionDate");
					
					SimpleDateFormat sdf = new SimpleDateFormat("MMM dd,yyyy HH:mm");    
					Date dtProcess = new Date(processDate);
					Date dtSubmit  = new Date(submissionDate);
					
					
					result += "<tr><td><a href='/admin/processing?appnum="+loanId+"'>"+loanId+"</a></td><td>RM "+amount+"</td><td>"+sdf.format(dtProcess)+"</td><td>"+status+"</td><td>"+sdf.format(dtSubmit)+"</td></tr>";
					  
				}
			
			} //end if 
	       
		   }
		   catch(Exception exp)
		   {
			   exp.printStackTrace();
		   }
		   
		   
		    // your logic here
		    return result;
		}
	   
	   @RequestMapping(value = "loansummary", method = RequestMethod.POST)
	   @ResponseBody
	   public String loansummary(@RequestParam String uid,@RequestParam String keyId) {
		    
		   String result = "";
		   String jsonResult = "";
		   
		   try
		   {
			   
		   
		   //String[] strAuthKey = getAuthKey().split(":");
			  
		   
		   String siteMode = env.getProperty("site.mode");
		   String userName = env.getProperty("api.username");
		   String pass     = env.getProperty("api.password");
		   
		   String apiUrl = "";
		   
		   if(siteMode.equalsIgnoreCase("development"))
			 apiUrl = env.getProperty("api.dev.dashboard.loansummary.url");
		   else
			 apiUrl = env.getProperty("api.prod.dashboard.loansummary.url");
			  
		   
		   //create resteasy clinet
		   ResteasyClient client = new ResteasyClientBuilder().build();
		   ResteasyWebTarget target = client.target(apiUrl);
		   target.register(new BasicAuthentication(userName, pass)); 
		  
		   Response response = target.request().header("keyid", keyId).header("uid",uid).post(null);
		   
		   jsonResult = response.readEntity(String.class);
	       response.close();  // You should close connections!
	       
	       
	       //parse json to get key and keyid
		   JSONParser parser = new JSONParser();
		   JSONObject jsonObject = (JSONObject) parser.parse(jsonResult);
			  
			
			if(jsonObject.get("responseDetails") != null)
			{
				
				//get response dtails
				JSONArray arrApps = (JSONArray) jsonObject.get("responseDetails");
				
				//read all objects
				for(int iCnt = 0; iCnt < arrApps.size(); iCnt++) 
				{
					//get json object
					JSONArray arrRow = (JSONArray) arrApps.get(iCnt);
					
					String status       = "";
					long total          = 0;
					
					
					//get data
					if(arrRow.get(0) != null)
				      status  = (String) arrRow.get(0);
					
					if(arrRow.get(1) != null)
					  total   = (Long) arrRow.get(1);
					 
					result += "<tr><td><a href='javascript:showApplicationsByStatus(\""+status+"\")'>"+status+"</a></td><td>"+total+"</td></tr>";
					  
				}
				
			} //end if 
	       
		   }
		   catch(Exception exp)
		   {
			   exp.printStackTrace();
		   }
		   
		   
		    // your logic here
		    return result;
		}
	   
	  
	   
	   @RequestMapping(value = "listapplications", method = RequestMethod.POST)
	   @ResponseBody
	   public String listapplication(@RequestParam String searchval,@RequestParam String uid,@RequestParam String keyId) {
		    
		   String result = "{  \"data\": [";
		   String jsonResult = "";
		   
		   try
		   {
			   
		   
		   //String[] strAuthKey = getAuthKey().split(":");
			  
		   
		   String siteMode = env.getProperty("site.mode");
		   String userName = env.getProperty("api.username");
		   String pass     = env.getProperty("api.password");
		   
		   String apiUrl = "";
		   
		   if(siteMode.equalsIgnoreCase("development"))
			 apiUrl = env.getProperty("api.dev.loanapplist.url");
		   else
			 apiUrl = env.getProperty("api.prod.loanapplist.url");
		   
		   //create resteasy clinet
		   ResteasyClient client = new ResteasyClientBuilder().build();
		   ResteasyWebTarget target = client.target(apiUrl+"/"+searchval);
		   target.register(new BasicAuthentication(userName, pass));
		   
		   Response response = target.request().header("keyid", keyId).header("uid",uid).post(null);
			 
		   jsonResult = response.readEntity(String.class);
	       response.close();  // You should close connections!
	       
	      
	       //parse json to get key and keyid
		   JSONParser parser = new JSONParser();
		   JSONObject jsonObject = (JSONObject) parser.parse(jsonResult);
			  
			
			if(jsonObject.get("responseDetails") != null)
			{	
			
				//get response dtails
				JSONArray arrApps = (JSONArray) jsonObject.get("responseDetails");
				
				//read all objects
				for(int iCnt = 0; iCnt < arrApps.size(); iCnt++) 
				{
					//get json object
					JSONObject objRow = (JSONObject) arrApps.get(iCnt);
					
					String loanId       = "";
					double amount       = 0.00;
					long processDate    = 0;
					String status       = "";
					long submissionDate = 0;
					long userId         = 0;
					
					
					//get data
					if(objRow.get("loanId") != null)
					 loanId         = (String) objRow.get("loanId");
					
					if(objRow.get("loanAmount") != null)
					  amount       = (Double) objRow.get("loanAmount");
					
					if(objRow.get("processedDate") != null)
					 processDate    = (Long) objRow.get("processedDate");
					
					if(objRow.get("status") != null)
					 status       = (String) objRow.get("status");
					
					if(objRow.get("submissionDate") != null)
					 submissionDate = (Long) objRow.get("submissionDate");
					
					if(objRow.get("userId") != null)
					  userId         = (Long) objRow.get("userId");
					
					SimpleDateFormat sdf = new SimpleDateFormat("MMM dd,yyyy HH:mm");    
					Date dtProcess = new Date(processDate);
					Date dtSubmit  = new Date(submissionDate);
					
					
					
					if(iCnt == 0)
					  result += "[ \""+sdf.format(dtProcess)+"\",\""+loanId+"\",\""+userId+"\",\"RM"+amount+"\",\" \",\""+status+"\",\""+sdf.format(dtSubmit)+"\" ]";
					else
					  result += ",[ \""+sdf.format(dtProcess)+"\",\""+loanId+"\",\""+userId+"\",\"RM"+amount+"\",\" \",\""+status+"\",\""+sdf.format(dtSubmit)+"\" ]";
					
					
					  
				}
				
			} //end if 
	       
		   }
		   catch(Exception exp)
		   {
			   exp.printStackTrace();
		   }
		   
		   
		   result += " ]}";
		   
		   
				   
		    // your logic here
		    return result;
		}
	   
	   
	   @RequestMapping(value = "searchapplications", method = RequestMethod.POST)
	   @ResponseBody
	   public String searchapplications(@RequestParam String searchval, @RequestParam String uid, @RequestParam String keyId) {
		    
		   String result = "{  \"data\": [";
		   String jsonResult = "";
		   
		   try
		   {
			   
		   
		   //String[] strAuthKey = getAuthKey().split(":");
			
		   String siteMode = env.getProperty("site.mode");
		   String userName = env.getProperty("api.username");
		   String pass     = env.getProperty("api.password");
		   
		   String apiUrl = "";
		   
		   if(siteMode.equalsIgnoreCase("development"))
			 apiUrl = env.getProperty("api.dev.loanapplist.url");
		   else
			 apiUrl = env.getProperty("api.prod.loanapplist.url");
			 
		   //create resteasy clinet
		   ResteasyClient client = new ResteasyClientBuilder().build();
		   ResteasyWebTarget target = client.target(apiUrl+"/"+searchval);
		   target.register(new BasicAuthentication(userName, pass));
		   
		   Response response = target.request().header("keyid", keyId).header("uid", uid).post(null);
			 
		   jsonResult = response.readEntity(String.class);
	       response.close();  // You should close connections!
	       
	      
	       
	       //parse json to get key and keyid
		   JSONParser parser = new JSONParser();
		   JSONObject jsonObject = (JSONObject) parser.parse(jsonResult);
			  
			
			if(jsonObject.get("responseDetails") != null)
			{
				
				//get response dtails
				JSONArray arrApps = (JSONArray) jsonObject.get("responseDetails");
				
				//read all objects
				for(int iCnt = 0; iCnt < arrApps.size(); iCnt++) 
				{
					//get json object
					JSONObject objRow = (JSONObject) arrApps.get(iCnt);
					
					String loanId       = "";
					double amount       = 0.00;
					long processDate    = 0;
					String status       = "";
					long submissionDate = 0;
					long userId         = 0;
					
					
					//get data
					if(objRow.get("loanId") != null)
					 loanId         = (String) objRow.get("loanId");
					
					if(objRow.get("loanAmount") != null)
					  amount       = (Double) objRow.get("loanAmount");
					
					if(objRow.get("processedDate") != null)
					 processDate    = (Long) objRow.get("processedDate");
					
					if(objRow.get("status") != null)
					 status       = (String) objRow.get("status");
					
					if(objRow.get("submissionDate") != null)
					 submissionDate = (Long) objRow.get("submissionDate");
					
					if(objRow.get("userId") != null)
					  userId         = (Long) objRow.get("userId");
					
					SimpleDateFormat sdf = new SimpleDateFormat("MMM dd,yyyy HH:mm");    
					Date dtProcess = new Date(processDate);
					Date dtSubmit  = new Date(submissionDate);
					
					
					
					if(iCnt == 0)
					  result += "[ \""+sdf.format(dtProcess)+"\",\""+loanId+"\",\""+userId+"\",\"RM"+amount+"\",\" \",\""+status+"\",\""+sdf.format(dtSubmit)+"\" ]";
					else
					  result += ",[ \""+sdf.format(dtProcess)+"\",\""+loanId+"\",\""+userId+"\",\"RM"+amount+"\",\" \",\""+status+"\",\""+sdf.format(dtSubmit)+"\" ]";
					
					
					  
				}
			} //end if 
	       
		   }
		   catch(Exception exp)
		   {
			   exp.printStackTrace();
		   }
		   
		   
		   result += " ]}";
		   
		 
				   
		    // your logic here
		    return result;
		}
	   
	   
	   
	   @RequestMapping(value = "listloans", method = RequestMethod.POST)
	   @ResponseBody
	   public String listloans() {
		    
		   String result = "{  \"data\": [";
		   String jsonResult = "";
		   
		   try
		   {
			   
		   
		   String[] strAuthKey = getAuthKey().split(":");
			  
		   String siteMode = env.getProperty("site.mode");
		   String userName = env.getProperty("api.username");
		   String pass     = env.getProperty("api.password");
		   
		   String apiUrl = "";
		   
		   if(siteMode.equalsIgnoreCase("development"))
			 apiUrl = env.getProperty("api.dev.loanapplist.url");
		   else
			 apiUrl = env.getProperty("api.prod.loanapplist.url");
		   
		   //create resteasy clinet
		   ResteasyClient client = new ResteasyClientBuilder().build();
		   ResteasyWebTarget target = client.target(apiUrl);
		   target.register(new BasicAuthentication(userName, pass));
		   
		   Response response = target.request().header("key", strAuthKey[0]).header("keyid", strAuthKey[1]).post(Entity.entity(null, javax.ws.rs.core.MediaType.APPLICATION_JSON_TYPE));
			 
		   jsonResult = response.readEntity(String.class);
	       response.close();  // You should close connections!
	       
	       
	       //parse json to get key and keyid
			JSONParser parser = new JSONParser();
			JSONObject jsonObject = (JSONObject) parser.parse(jsonResult);
			  
			//get response dtails
			JSONArray arrApps = (JSONArray) jsonObject.get("responseDetails");
			
			//read all objects
			for(int iCnt = 0; iCnt < arrApps.size(); iCnt++) 
			{
				//get json object
				JSONObject objRow = (JSONObject) arrApps.get(iCnt);
				
				//get data
				long loanId         = (Long) objRow.get("loanId");
				double amount       = (Double) objRow.get("loanAmount");
				long processDate    = (Long) objRow.get("processedDate");
				String status       = (String) objRow.get("status");
				long submissionDate = (Long) objRow.get("submissionDate");
				long userId         = (Long) objRow.get("userId");
				
				SimpleDateFormat sdf = new SimpleDateFormat("MMM dd,yyyy HH:mm");    
				Date dtProcess = new Date(processDate);
				Date dtSubmit  = new Date(submissionDate);
				
				
				
				if(iCnt == 0)
				  result += "[ \""+sdf.format(dtProcess)+"\",\""+loanId+"\",\""+userId+"\",\"RM"+amount+"\",,\""+status+"\",\""+sdf.format(dtSubmit)+"\" ]";
				else
				  result += ",[ \""+sdf.format(dtProcess)+"\",\""+loanId+"\",\""+userId+"\",\"RM"+amount+"\",,\""+status+"\",\""+sdf.format(dtSubmit)+"\" ]";
				
				
				  
			}
	       
		   }
		   catch(Exception exp)
		   {
			   exp.printStackTrace();
		   }
		   
		   
		   result += " ]}";
				   
		    // your logic here
		    return result;
		}
	    
	   
	   //--------------------------------------------------------------------------------------------------------------
	   
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
		  
		  
		  /**
		  * This method auth the admin credentials for login
		  */
		  public String adminAuthentication(String loginId, String password)
		  {
			   String[] strAuthKey = getAuthKey().split(":");
			  
			  
			   String siteMode = env.getProperty("site.mode");
			   String userName = env.getProperty("api.username");
			   String pass     = env.getProperty("api.password");
			   
			   String apiUrl = "";
			   
			   if(siteMode.equalsIgnoreCase("development"))
				 apiUrl = env.getProperty("api.dev.adminlogin.url");
			   else
				 apiUrl = env.getProperty("api.prod.adminlogin.url");
			 
			  //create resteasy clinet
			  ResteasyClient client = new ResteasyClientBuilder().build();
			  ResteasyWebTarget target = client.target(apiUrl);
			  target.register(new BasicAuthentication(userName, pass));
			  
			  
			  String jsonRequest = "";
			  //AdminLoginObject alobj = new AdminLoginObject();
			  
			  try 
			  {
				  PublicKey publicKey = PasswordUtil.generatePublicKey(strAuthKey[0]);
				  
				  //create json string
				  jsonRequest = "{\"adminLoginId\": \""+loginId+"\", \"password\": \""+PasswordUtil.toHex(PasswordUtil.encrypt(password.getBytes(), publicKey))+"\"}";
				  
				
			  }
			  catch(Exception  exp)
			  {
				   exp.printStackTrace();
			  }
			  
			 
			  
			 Response response = target.request().header("key", strAuthKey[0]).header("keyid", strAuthKey[1]).post(Entity.entity(jsonRequest, javax.ws.rs.core.MediaType.APPLICATION_JSON_TYPE));
			 
			  String result = response.readEntity(String.class);
			  //System.out.println(result);
			
	          response.close();  // You should close connections!
			  
			  String status = "";
			  String msg = "";
			  String retResult = "";
			  long adminId = 0;
			  
			   try {
				  
				  //parse json to get key and keyid
				  JSONParser parser = new JSONParser();
				  JSONObject jsonObject = (JSONObject) parser.parse(result);
				  
				  status = (String) jsonObject.get("serverStatus");
				  msg    = (String) jsonObject.get("message");
				  
				  JSONObject objDetails = (JSONObject) jsonObject.get("responseDetails");
				  adminId    = (Long) objDetails.get("adminId"); 
				  
				  //System.out.println("adminId"+adminId);
				  
				  //check status and message
				  if(status.equalsIgnoreCase("SERVER_SUCCESS") && msg.equalsIgnoreCase("AUTHENTICATE_SUCCESS"))
				  {
					   retResult = "success:"+adminId+":"+strAuthKey[1];
				  }
				  else
				  {
					  retResult = "failure:0:";
				  }
				  
				
			  
		      } catch (ParseException e) {
			       e.printStackTrace();
		     }
			 
			  return retResult;

		  }
		  
		
		  
		  /**
		  * Encode json string
		  */
		  public Object encodeNS(String doc) 
		  {
			JSONParser parser = new JSONParser();
			
			try {
				 
				  Object value = parser.parse(doc);
				  return value;
			} catch (ParseException e) {
				e.printStackTrace();
				return null;
		    }
	      }
		  
	//-------------------------------------------------------------------------------------------------------------

}
