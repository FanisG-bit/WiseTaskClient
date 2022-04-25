package com.wisetaskclient.controllers;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class AppControllerAdvice {
	
	@ExceptionHandler(Exception.class)
	public String exceptionHandler() {
		return "login";
	}

}
