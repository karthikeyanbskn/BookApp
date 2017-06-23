package com.karthi.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.karthi.model.User;



public interface UserRepository extends JpaRepository<User, Integer>{
	
	@Query(value = "select * from user where username=?1 and password=?2 and active=A", nativeQuery = true)
	public User findByUserNameAndPassword(String userName, String password);
	
	@Query(value = "select * from user where username=?1", nativeQuery = true)
	public User findByUserName(String userName);
}
