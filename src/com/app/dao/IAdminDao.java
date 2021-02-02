package com.app.dao;

import org.apache.catalina.User;

import com.app.pojos.Users;

public interface IAdminDao {
	Users getProfileDetails(String email1, String pwd1);
}
