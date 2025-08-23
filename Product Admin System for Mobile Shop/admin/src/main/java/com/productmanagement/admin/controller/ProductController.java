package com.productmanagement.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ProductController {

	@GetMapping("/")
	public String HomePage()
	{
		return "index.jsp";
	}
	
	@GetMapping("login")
	public String loginPge()
	{
		return "login.jsp";
	}
}
