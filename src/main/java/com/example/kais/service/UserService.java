package com.example.kais.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.kais.entity.User;
import com.example.kais.repository.RoleRepository;
import com.example.kais.repository.UserRepository;

@Service
@Transactional
public class UserService {

	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private RoleRepository roleRepository;
	
	public boolean userExists(String email) {
		User user = userRepository.getUserByEmail(email);
		
		if(user == null) {
			return false;
			
		} else {
			return true;
		}
	}
	
	public User registerNewUser(User user) {
		user.setPassword(new BCryptPasswordEncoder().encode(user.getPassword()));
		user.addRoles(roleRepository.findById(1L).get());
		
		return user;
	}
}
