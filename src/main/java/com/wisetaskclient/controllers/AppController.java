package com.wisetaskclient.controllers;

import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * A controller responsible for forwarding the client to the respective JSP pages.
 * @author Theofanis Gkoufas
 *
 */
@Controller
public class AppController {

	/**
	 * Default pattern that forwards the user to the login page.
	 * @return
	 */
	@RequestMapping(value = "/")
	public String login() {
		return "login";
	}
	
	/**
	 * After successfully entering the correct user credentials, the user's primary key
	 * along with his/her type are being stored are attributes in the session cookie
	 * for convenience (because we are using them in other operations afterwards).
	 * @param request One of spring's implicit objects that provide information about request.
	 * @param response One of spring's implicit objects that provide functionality in sending a response.
	 * @param userId The user's primary key.
	 * @param userType The account type of the user.
	 */
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
	
	/**
	 * Forwards the user to the main page. Based on the user's account type,
	 * the client is being forwarded to the corresponding main page (administrators and
	 * lecturers have different main pages).
	 * @param session The session cookie that currently exists on the application.
	 * @return The name of the jsp page where the user will be forwarded.
	 */
	@RequestMapping(value = "/main")
	public String main(HttpSession session) {
		String userType = (String) session.getAttribute("userType");
		return userType.equals("ADMIN") ? "mainAdmin" : "mainLecturer";
	}
	
	/**
	 * Upon logout from the application, the user is being forwarded back to the login
	 * page.
	 * @param response One of spring's implicit objects that provide functionality in sending
	 * a response.
	 * @param request One of spring's implicit objects that provide information about request.
	 */
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
