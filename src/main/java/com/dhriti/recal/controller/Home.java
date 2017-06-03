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

@Configuration
@PropertySource(value="classpath:config.properties", ignoreResourceNotFound=true)
@Controller
@RequestMapping("/")
public class Home {
	
	
	    @Autowired
	    private Environment env;
	
	   
	   
	    
	   @RequestMapping(value = "/home",method = RequestMethod.GET)
	   public String home(ModelMap model) {
	     return "home";
	   }
	   
	   
}
