package com.LoginRegister.services;

import com.LoginRegister.entities.User;

public interface UserService {
	public boolean registerUser(User user);
	public User loginUser(String email, String password);
}
