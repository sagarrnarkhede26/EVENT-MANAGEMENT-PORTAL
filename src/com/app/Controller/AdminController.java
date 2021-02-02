package com.app.Controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.app.dao.IAdminDao;
import com.app.dao.IUsesrDao;
import com.app.dao.IVendorDao;
import com.app.pojos.Users;

@Controller
@RequestMapping("/admin")
public class AdminController {
	@Autowired
	private IUsesrDao dao;
	@Autowired
	private IAdminDao adminDao;

	public AdminController() {
		System.out.println("In constr of "+getClass().getName());
}
	
	@GetMapping("/home")
	public String showHomePage()
	{
		System.out.println("In Admin's Show home page");
		return "/admin/dashboard";
	}
	@GetMapping("/list")
	public String showAllClients(Model map)
	{
		System.out.println("In showAllClients");
		List<Users> list=dao.getAllUsers();
		System.out.println("successfull");
		
		map.addAttribute("users", list);
		return "/admin/list";
	}
	
	@GetMapping("/logout")
	public String adminLogout(HttpSession hs, Model map, HttpServletRequest request, 
			HttpServletResponse response,HttpSession session) {
		System.out.println("in user's logout");
		Users user=(Users)session.getAttribute("user");
		dao.updateUserStaus(user, "Offline");
		map.addAttribute("admin_details", hs.getAttribute("admin_dtls"));
		hs.invalidate();
		response.setHeader("refresh", "5;url="+request.getContextPath());
		return "/admin/logout";// forward view name : /WEB-INF/view/user/logout.jsp
	}
	
	@GetMapping("/profile")
	public String showProfileDetails(HttpSession session, Model map)
	{
		System.out.println("In Admin Controller's show Profile Details");
		String em=(String) session.getAttribute("em");
		String pass=(String) session.getAttribute("pass");
		System.out.println(session.isNew());
		Users admin=adminDao.getProfileDetails(em, pass);
		map.addAttribute("admin_profile", admin);
		return "/admin/profile";
	}

}
