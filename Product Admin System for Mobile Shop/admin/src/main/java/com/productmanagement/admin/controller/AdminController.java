package com.productmanagement.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.servlet.http.HttpSession;
import com.productmanagement.admin.services.AdminServices;

@Controller
public class AdminController {

    @Autowired
    private AdminServices adminServ;

    @PostMapping("/loginadmin")
    public String login(@RequestParam String username,
                        @RequestParam String password,
                        HttpSession session,
                        Model m) {

        if (adminServ.validateLogin(username, password)) {
            session.setAttribute("adminUser", username);
            return "redirect:/dashboard"; 
        } else {
            m.addAttribute("error", "Invalid username or password");
            return "login.jsp"; 
        }
    }
    
    @GetMapping("/dashboard")
    public String dashboard(HttpSession session, Model model) {
        if (session.getAttribute("adminUser") == null) {
            return "redirect:/login"; 
        }
        model.addAttribute("adminName", session.getAttribute("adminUser"));
        return "dashboard.jsp"; 
    }
}
