package com.app.Controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.app.dao.IClientDao;
import com.app.pojos.Bids;
import com.app.pojos.Events;
import com.app.pojos.Users;

@Controller
@RequestMapping("/client")
public class ClientController {

	@Autowired
	IClientDao dao;

	public ClientController() {
		System.out.println("In constructor of " + getClass().getName());
	}

	@GetMapping("/dashboard")
	public String showDashboard() {
		System.out.println("In Client's Controller show Dashboard");
		return "/client/dashboard";
	}

	@GetMapping("/profile")
	public String showProfileDetails(HttpSession session, Model map) {
		System.out.println("In Client Controller's show Profile Details");
		String em = (String) session.getAttribute("em");
		String pass = (String) session.getAttribute("pass");
		System.out.println(session.isNew());
		Users client = dao.getProfileDetails(em, pass);

		map.addAttribute("client_profile", client);
		return "/client/profile";
	}

	@GetMapping("/event")
	public String showPostEventPage(Model map) {
		System.out.println("In Client Controller's Show Post Event Page");
		map.addAttribute("new_event", new Events());
		return "/client/event";
	}

	@PostMapping("/event")
	public String postEvent(@ModelAttribute(name = "new_event") Events transientEventToPost,
			RedirectAttributes flashmap, HttpSession session) {
		System.out.println("In Client Controller's Post Event");
		Users user = (Users) session.getAttribute("user");
		transientEventToPost.setEventOwner(user);
		flashmap.addFlashAttribute("event", dao.postEvent(transientEventToPost));

		return "redirect:/client/dashboard";
	}

	@GetMapping("/info")
	public String seePostedEventInfo(HttpSession session, Model map) {
		System.out.println("In Client Controller's See posted Event Info");
		Users user = (Users) session.getAttribute("user");
		List<Events> events = dao.seePostedEventInfo(user);
		map.addAttribute("events_list", events);
		return "/client/eventList";

	}

	@GetMapping("/seeBids")
	public String seeBidByVendors(@RequestParam int eventId, Model map) {
		System.out.println("In Client Controller's See Bid By Vendors");
		List<Bids> bids = dao.seeBidByVendors(eventId);
		map.addAttribute("bids_info", bids);
		return "/client/bidList";

	}

	
	 @GetMapping("/getBidByVendor") 
	 public String selectTheBid(@RequestParam int bidId,Model map) {
		 System.out.println("in CLient Controller's Select the Bid");
		 Users vendor=dao.getBidByVendor(bidId);
		 map.addAttribute("vendor_details",vendor);
		 return "/client/contactDetails";
		 
	  
	  }
	 
	 @GetMapping("/deleteEvent")
	 public String deleteEvent(@RequestParam int eventId)
	 {
		 System.out.println("In Client's Controller delete event");
		 String mesg= dao.deleteEvent(eventId);
		 System.out.println(mesg);
		 return "/client/dashboard";
	 }
	 
	 
	 
}
