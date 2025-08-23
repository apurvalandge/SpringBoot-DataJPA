package com.management.product.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;


import com.management.product.services.AdminServices;
import com.management.product.services.ProductService;

@Controller
public class AdminController {

	@Autowired
	private AdminServices adminServ;
	
	@Autowired
	private ProductService productServ;
	
	@GetMapping("login")
	public String loginPge()
	{
		return "login.jsp";
	}
	@PostMapping("/verify")
	public String login (@RequestParam String username,@RequestParam String password, Model m)
	{
		if(adminServ.validateLogin(username, password)) {
			m.addAttribute("totalProducts" , productServ.getTotalProducts());
			m.addAttribute("totalBrands", productServ.getTotalBrands());
			m.addAttribute("lowStockProduct", productServ.getLowStockProducts());
			m.addAttribute("outOfStockProducts", productServ.getOutOfStockProduct());
			return "Dashboard.jsp";
		}
		else {
			m.addAttribute("error" , "Invalid Username or Password!");
			return "login.jsp";
		}
	}
	@GetMapping("/dashboard")
	public String showDashboard(Model m) {
	    m.addAttribute("totalProducts", productServ.getTotalProducts());
	    m.addAttribute("totalBrands", productServ.getTotalBrands());
	    m.addAttribute("lowStockProduct", productServ.getLowStockProducts());
	    m.addAttribute("outOfStockProducts", productServ.getOutOfStockProduct());
	    return "Dashboard.jsp";
	}
	
	@GetMapping("/logout")
	public String logout() {
		return "index.jsp";
	}

	
	
	

}