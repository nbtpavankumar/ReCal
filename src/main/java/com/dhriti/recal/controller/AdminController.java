package com.dhriti.recal.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminController {

	@GetMapping("/admin")
	public String hello(Model model) {
		System.out.println("HELLO");
		return "admin/login";
	}

}
