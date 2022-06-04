package com.wisetaskclient.controllers;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

/**
 * A simple controller advice class, responsible for handling exceptions
 * that may be raised.
 * @author Theofanis Gkoufas
 *
 */
@ControllerAdvice
public class AppControllerAdvice {
	
	@ExceptionHandler(Exception.class)
	public String exceptionHandler() {
		return "login";
	}

}
