package com.app.dao;

import java.util.List;

import com.app.pojos.Bids;
import com.app.pojos.Events;
import com.app.pojos.Users;

public interface IVendorDao {
Users showProfileDetails(String email1, String pwd1);
List<Events> showPostedEvents();
void setEventObject(int event_id,Bids bid);
String registerBid(Bids transientBidToAdd);
List<Bids> seePostedBidsInformationStatus(Users vendor);

}
