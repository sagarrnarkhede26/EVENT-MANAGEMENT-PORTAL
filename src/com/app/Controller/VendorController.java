package com.app.Controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.catalina.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.app.dao.IVendorDao;
import com.app.pojos.Bids;
import com.app.pojos.Events;
import com.app.pojos.Users;

import antlr.debug.Event;

@Controller
@RequestMapping("/vendor")
public class VendorController {
	@Autowired
	 private IVendorDao dao;

	public VendorController() {
		System.out.println("In constructor of "+getClass().getName());
	}
	
	@GetMapping("/home")
	public String showHomePage()
	{
		System.out.println("In Show home page");
		return "/vendor/dashboard";
	}
	
	@GetMapping("/profile")
	public String showProfileDetails(HttpSession session, Model map)
	{
		System.out.println("In Vendor Controller's show Profile Details");	
		String em=(String) session.getAttribute("em");
		String pass=(String) session.getAttribute("pass");
		System.out.println(session.isNew());
		Users vendor=dao.showProfileDetails(em, pass);
		map.addAttribute("vendor_profile", vendor);
		return "/vendor/profile";
	}
	
	@GetMapping("/eventList")
	public String showPostedEvent(Model map)
	{
		System.out.println("In Vendor Controller's SHow posted Events");
		List<Events> events=dao.showPostedEvents();
		map.addAttribute("posted_events", events);
		return "/vendor/eventList";
		
	}
	
	@GetMapping("/bid")
	public String getBiddingPage(@RequestParam int eid,Model map,HttpSession session)
	{
		System.out.println("In Vendor Controller's Get Bidding Page");
		
		Bids bid=new Bids();
		session.setAttribute("eid", eid);
		map.addAttribute("bid_obj", bid);
		return "/vendor/bidOnEvent";
		
	}
	
	@PostMapping("/bid")
	public String bidOnEvent(@ModelAttribute(name="bid_obj")Bids transientBidToAdd,RedirectAttributes flashmap,HttpSession session)
	{
		System.out.println("In Vendor Controller's Bid On Event");
		int eid=(int) session.getAttribute("eid");
		Users vendor=(Users) session.getAttribute("user");
		transientBidToAdd.setVendor(vendor);
		transientBidToAdd.setStatus(false);
		dao.setEventObject(eid, transientBidToAdd);
		String mesg=dao.registerBid(transientBidToAdd);
		flashmap.addAttribute("bid_status", mesg);
		System.out.println(mesg);
		return "redirect:/vendor/eventList";
		
		
		
	}
	
	@GetMapping("/replies")
	public String seePostedBidsInformationStatus(Model map,HttpSession session)
	{
		System.out.println("In Vendor Controller's See Posted Bid Info");
		Users vendor=(Users)session.getAttribute("user");
		List<Bids> bids=dao.seePostedBidsInformationStatus(vendor);
		if(bids==null)
			map.addAttribute("accepted_bids","There are no accepted Bids Offered by You");
		else
			map.addAttribute("accepted_bids",bids);
		return "/vendor/acceptedBids";
	}

}
