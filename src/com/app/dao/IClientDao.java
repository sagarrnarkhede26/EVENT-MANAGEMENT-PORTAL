package com.app.dao;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.catalina.User;

import com.app.pojos.Bids;
import com.app.pojos.Events;
import com.app.pojos.Users;

public interface IClientDao {
Users getProfileDetails(String email1, String pwd1);
String postEvent(Events transientEventToPost);
List<Events> seePostedEventInfo(Users user);
List<Bids> seeBidByVendors(int eid);
Users getBidByVendor(int eid);
String deleteEvent(int eid);
}
