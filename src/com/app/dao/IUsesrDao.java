package com.app.dao;

import java.util.List;

import org.apache.catalina.User;

import com.app.pojos.Users;

public interface IUsesrDao {
	String registerUser(Users userToRegister);
	Users authenticateUser(String email,String pwd);
	List<Users> getAllUsers();
	String changePassword(String pass,String mobNo);
	String updateUserStaus(Users userToUpdate,String status);
	String deleteUser(int uid);
}
