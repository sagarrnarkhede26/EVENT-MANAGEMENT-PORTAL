package com.app.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.app.pojos.Bids;
import com.app.pojos.Events;
import com.app.pojos.Users;

@Repository
@Transactional

public class VendorDaoImpl implements IVendorDao {
	@Autowired //byType
	private SessionFactory sf;
	

	public VendorDaoImpl() {
		System.out.println("In constructor of "+getClass().getName());

	}

	@Override
	public Users showProfileDetails(String email1, String pwd1) {
		System.out.println("In Vendor's get Profile Details");
		String jpql="select u from Users u where u.email =:em and u.password=:pa";
		return sf.getCurrentSession().createQuery(jpql, Users.class).
				setParameter("em", email1).setParameter("pa", pwd1).getSingleResult();
	}

	@Override
	public List<Events> showPostedEvents() {
		System.out.println("In Vendor's Dao Show Posted Events");
		String jpql="select e from Events e";
		
		return sf.getCurrentSession().createQuery(jpql,Events.class).getResultList();
	}

	@Override
	public void setEventObject(int event_id,Bids bid) {
		System.out.println("In Vendor's Set Event Object");
		Events event=sf.getCurrentSession().get(Events.class, event_id);
		bid.setEvent(event);
		
	}

	@Override
	public String registerBid(Bids transientBidToAdd) {
		System.out.println("In Vendor Controller's Register Bid");
		String mesg="Bid Registration Failed";
		sf.getCurrentSession().persist(transientBidToAdd);
		mesg="Bid Registration Successful ,ID "+transientBidToAdd.getBidId();
		return mesg;
	}

	
	@Override
	public List<Bids> seePostedBidsInformationStatus(Users vendor) {
		System.out.println("In Vendor Dao's see Posted Bids Information Status");
		String jpql="select b from Bids b where b.status =:sts and b.vendor=:vndr";
		return sf.getCurrentSession().createQuery(jpql,Bids.class).
			setParameter("sts", true).setParameter("vndr", vendor).getResultList();
		
	}

}
