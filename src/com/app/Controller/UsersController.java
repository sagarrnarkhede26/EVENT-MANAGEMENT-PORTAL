package com.app.Controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.http.client.AbstractClientHttpResponse;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.app.dao.IUsesrDao;
import com.app.dao.UsersDaoImpl;
import com.app.pojos.Role;
import com.app.pojos.Users;

@RequestMapping("/user")
@Controller
public class UsersController 
{
	@Autowired
	private IUsesrDao dao;
	
	@GetMapping("/register")
	public String showRegisterUserForm(Model map)
	{
		System.out.println("In Show User Register Form");
		map.addAttribute("new_user",new Users());
		return "/user/register";
	}
	
	@PostMapping("/register")
	public String registerUser(@ModelAttribute(name="new_user") Users transientUserToRegister,RedirectAttributes flashmap)
	{
		System.out.println("In registerUser "+transientUserToRegister);
		flashmap.addFlashAttribute("status",dao.registerUser(transientUserToRegister));
		return "redirect:/user/register"; //Ds.resp.
	}
	
	@GetMapping("/login")
	public String showLoginForm() {
		System.out.println("in show login form");
		return "/user/login";// actual view name : /WEB-INF/views/user/login.jsp
	}
	
	
	@PostMapping("/login")
	public String processLoginForm(@RequestParam String em, @RequestParam String pass, Model map,HttpSession session )  
	{
		System.out.println("in process login form");
		try {
			//invokes service layer method for auth
			Users authenticateUser = dao.authenticateUser(em, pass);
			//login successful : valid user login
			map.addAttribute("user_dtls", authenticateUser);
			map.addAttribute("mesg","Login Successful");
			System.out.println(dao.updateUserStaus(authenticateUser, "Online"));
			session.setAttribute("em", em);
			session.setAttribute("user", authenticateUser);
			session.setAttribute("pass", pass);
			//check role of the logged in user 
			if(authenticateUser.getRole().equals(Role.ADMIN))
			{
				System.out.println("Its Admin");
				return "/admin/dashboard";
			}
			if(authenticateUser.getRole().equals(Role.CLIENT))
			{
				System.out.println("Its Client");
				return "/client/dashboard";
			}
			System.out.println("Its Vendor");
			return "/vendor/dashboard";
			
		} catch (RuntimeException e) {
			//NoResultExc
			//e.printStackTrace();
			System.out.println("err in controller "+e);
			map.addAttribute("mesg","Invalid Login , Pls retry");
			return "/user/login";// def nav : RD's forward 
		}

	
	}
	
	@GetMapping("/logout")
	public String userLogout(HttpSession hs, Model map, HttpServletRequest request, 
			HttpServletResponse response,HttpSession session) {
		System.out.println("in user's logout");
		Users user=(Users)session.getAttribute("user");
		dao.updateUserStaus(user, "Offline");
		map.addAttribute("user_details", hs.getAttribute("user_dtls"));
		hs.invalidate();
		response.setHeader("refresh", "1;url="+request.getContextPath());
		return "/user/logout";// forward view name : /WEB-INF/view/user/logout.jsp
	}
	
	@GetMapping("/forgotPass")
	public String ForgotPassword()
	{
		System.out.println("In User Controller's Forgot Password");
		return "/user/forgotPassword";
	}
	
	@PostMapping("/forgotPass")
	public String changePassword(@RequestParam String pass,@RequestParam String mobNo,Model map)
	{
		try {
			System.out.println("In User Controller's Change Password");
			map.addAttribute("mesg",dao.changePassword(pass, mobNo));
			return "redirect:/user/login";
		} catch (RuntimeException e) {
			//NoResultExc
			//e.printStackTrace();
			System.out.println("err in controller "+e);
			map.addAttribute("mesg","Invalid Details , Pls retry");
			return "/user/login";// def nav : RD's forward 
		}
		
		
		
	}
	@GetMapping("/delete")
	public String deleteUser(@RequestParam int pid,RedirectAttributes flashmap)
	{
		System.out.println("In User Controller's Delete User");
		flashmap.addAttribute("delete_status",dao.deleteUser(pid));
		return "/admin/dashboard";
		 
	}
}