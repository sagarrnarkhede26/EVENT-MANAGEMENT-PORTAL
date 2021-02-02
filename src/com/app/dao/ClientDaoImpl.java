package com.app.dao;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.catalina.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.app.pojos.Bids;
import com.app.pojos.Events;
import com.app.pojos.Users;

import antlr.debug.Event;

@Repository
@Transactional

public class ClientDaoImpl implements IClientDao {
	@Autowired //byType
	private SessionFactory sf;
	

	public ClientDaoImpl() {
		System.out.println("In constructor of "+getClass().getName());
		
	}

	@Override
	public Users getProfileDetails(String email1, String pwd1) {
		System.out.println("In Client's get Profile Details");
		String jpql="select u from Users u where u.email =:em and u.password=:pa";	
		return sf.getCurrentSession().createQuery(jpql, Users.class).
				setParameter("em", email1).setParameter("pa", pwd1).getSingleResult();
	}

	@Override
	public String postEvent(Events transientEventToPost) {
		System.out.println("In Client Dao Post event");
		String mesg="Event Posting failed";
		sf.getCurrentSession().persist(transientEventToPost);
		mesg="Event Posting successful , ID : "+transientEventToPost.getEventId();
		return mesg;
		
	}

	@Override
	public List<Events> seePostedEventInfo(Users user) {
		System.out.println("In Client Dao's see Posted Event Info");
		String jpql="select e from Events e where e.eventOwner=:uid";
		
		return sf.getCurrentSession().createQuery(jpql, Events.class).
				setParameter("uid", user).getResultList();
	}

	@Override
	public List<Bids> seeBidByVendors(int eid) {
		System.out.println("In Vendor's Dao See Bid By Vendors");
		String jpql="select e from Events e where e.eventId=:id";
		Events event=sf.getCurrentSession().createQuery(jpql, Events.class).
				setParameter("id", eid).getSingleResult();
		String jpql2="select b from Bids b where b.event=:evnt";
		
		return sf.getCurrentSession().createQuery(jpql2, Bids.class).
				setParameter("evnt", event).getResultList();
	}

	@Override
	public Users getBidByVendor(int bidId) {
		System.out.println("In Vendor's dao get Bid By Vendor");
		Bids bid= sf.getCurrentSession().get(Bids.class, bidId);
		bid.setStatus(true);
		Users vendor=bid.getVendor();
		return vendor;
	}

	@Override
	public String deleteEvent(int eid) {
		System.out.println("In CLient's Dao delete event");
		Events event=(Events)sf.getCurrentSession().get(Events.class, eid);
		sf.getCurrentSession().delete(event);
		return "Event Deleted Successfully";
	}

}
