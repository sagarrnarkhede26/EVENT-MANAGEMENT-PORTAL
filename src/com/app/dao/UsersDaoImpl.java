package com.app.dao;

import java.util.List;

import org.apache.catalina.User;
import org.hibernate.SessionFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.app.pojos.Users;
@Repository
@Transactional

public class UsersDaoImpl implements IUsesrDao {
	@Autowired //byType
	private SessionFactory sf;

	public UsersDaoImpl() {
		System.out.println("In ctor of "+getClass().getName());
	}

	@Override
	public String registerUser(Users userToRegister) {
		System.out.println("In Dao Register User");
		userToRegister.setStatus("Offline");
		String mesg="User registration failed";
		sf.getCurrentSession().persist(userToRegister);
		mesg="User registration successful , ID : "+userToRegister.getUserId();
		return mesg;
		
	}
	
	@Override
	public Users authenticateUser(String email1, String pwd1) {
		String jpql="select u from Users u where u.email =:em and u.password=:pa";
		
		return sf.getCurrentSession().createQuery(jpql, Users.class).setParameter("em", email1).
				setParameter("pa", pwd1).getSingleResult();
	}

	@Override
	public List<Users> getAllUsers() {
		System.out.println("In Dao getAllUsers");
		String jpql="select u from Users u";
		List<Users> users=sf.getCurrentSession().createQuery(jpql, Users.class).getResultList();
		if(users!=null)
		{
			System.out.println("Users are not null and returning user list");
			return users;
		}
		return null;
		
	}

	@Override
	public String changePassword(String pass, String mobNo) {
		
		System.out.println("In User Controller's Change Password");
		String mesg;
		String jpql="select u from Users u where u.contactNo=:mob";
		Users u=sf.getCurrentSession().createQuery(jpql,Users.class).setParameter("mob", mobNo).getSingleResult();
		u.setPassword(pass);
		sf.getCurrentSession().update(u);
		mesg="Password Changed Successfully";
		return mesg;
	}

	@Override
	public String updateUserStaus(Users userToUpdate, String status) {
		userToUpdate.setStatus(status);
		sf.getCurrentSession().update(userToUpdate);
		return "User Updated";
	}

	@Override
	public String deleteUser(int uid) {

		System.out.println("In User Dao's Delete User");
		Users user=sf.getCurrentSession().get(Users.class, uid);
		sf.getCurrentSession().delete(user);
		return "Deleted Successfully";
	}
	
	

	
	

}
