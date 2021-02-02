package com.app.dao;

import org.apache.catalina.User;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.app.pojos.Users;

@Repository
@Transactional
public class AdminDaoImpl implements IAdminDao {
	@Autowired //byType
	private SessionFactory sf;
	

	public AdminDaoImpl() {
		System.out.println("In constructor of "+getClass().getName());
	}

	@Override
	public Users getProfileDetails(String email1, String pwd1) {
		System.out.println("In Admin's get Profile Details");
		String jpql="select u from Users u where u.email =:em and u.password=:pa";
		return sf.getCurrentSession().createQuery(jpql, Users.class).
				setParameter("em", email1).setParameter("pa", pwd1).getSingleResult();
	}

}
