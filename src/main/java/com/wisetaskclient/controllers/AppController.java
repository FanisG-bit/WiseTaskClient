package com.wisetaskclient.controllers;

import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class AppController {

	@RequestMapping(value = "/")
	public String login() {
		return "login";
	}
	
	@GetMapping(value = "/prepareUserLogin")
	public void prepareUserLogin(HttpServletRequest request, 
					   HttpServletResponse response,
					   @RequestParam(name = "userId") int userId,
					   @RequestParam(name = "userType") String userType) {
		request.getSession().invalidate();
		HttpSession session = request.getSession(true);
		session.setAttribute("userPK", userId);
		session.setAttribute("userType", userType);
		session.setMaxInactiveInterval(1500);
		try {
			response.sendRedirect(request.getContextPath() + "/main");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value = "/main")
	public String main(HttpSession session) {
		String userType = (String) session.getAttribute("userType");
		return userType.equals("ADMIN") ? "mainAdmin" : "mainLecturer";
	}
	
	@RequestMapping(value = "/logout")
	public void logout(HttpServletResponse response,
						 HttpServletRequest request) {
		request.getSession().invalidate();
		try {
			response.sendRedirect(request.getContextPath() + "/");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
}
