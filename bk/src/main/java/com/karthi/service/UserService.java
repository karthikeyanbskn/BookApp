package com.karthi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.karthi.model.User;
import com.karthi.repository.UserRepository;



@Service
public class UserService {
	@Autowired
	private UserRepository userRepository;

	public User findByUserNameAndPassword(String userName, String password) {
		User user = userRepository.findByUserName(userName);
		return userRepository.findByUserNameAndPassword(userName, user.getPassword());
	}

	public List<User> findAll() {
		return userRepository.findAll();
	}

	public User findOne(int id) {
		return userRepository.findOne(id);
	}

	

	public void register(User user) {
		// TODO Auto-generated method stub
		
	}

}
