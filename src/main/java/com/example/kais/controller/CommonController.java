package com.example.kais.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.kais.entity.User;
import com.example.kais.service.UserService;

@Controller
public class CommonController {
	
	@Autowired
	private UserService userService;
	
	@GetMapping("/register")
	public String getRegisterPage() {
		return "register";
	}
	
	@PostMapping("/register")
	public String registerNewUser(@ModelAttribute("user") User user, @RequestParam("cpassword") String cpassword, Model  model) {
		
		if(userService.userExists(user.getEmail())) {
			model.addAttribute("errmsg", "User/email already existed. Please log in.");
		}
		
		if(user.getPassword().equals(cpassword)) {
			User tmp = userService.registerNewUser(user);
			
		} else {
			model.addAttribute("errmsg", "Password not match. Please try again.");
		}
		
		return "redirect:/";
	}
}
