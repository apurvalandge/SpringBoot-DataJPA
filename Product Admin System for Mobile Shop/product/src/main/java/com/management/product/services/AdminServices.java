package com.management.product.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.management.product.entities.Admin;
import com.management.product.repos.AdminRepository;

@Service
public class AdminServices {

	@Autowired
	private AdminRepository adminRepo;
	
	public boolean validateLogin(String username, String password) {
		Admin admin = adminRepo.findByUsername(username);
		if(admin!= null && admin.getPassword().equals(password)) {
			return true;
		}
		return false;
	}
}
