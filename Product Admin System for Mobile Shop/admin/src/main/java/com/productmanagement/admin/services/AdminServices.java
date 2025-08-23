package com.productmanagement.admin.services;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.productmanagement.admin.entites.Admin;
import com.productmanagement.admin.repos.AdminRepository;

@Service
public class AdminServices {

	@Autowired
	private AdminRepository adminRepo;
	
	public boolean validateLogin(String username, String password) {
        Optional<Admin> adminOpt = adminRepo.findByUsername(username);
        return adminOpt.isPresent() && adminOpt.get().getPassword().equals(password);
    }
}
