package com.LoginRegister.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.LoginRegister.entities.User;

public interface UserRepository extends JpaRepository<User,Integer>
{
	User findByEmail(String email);
}
