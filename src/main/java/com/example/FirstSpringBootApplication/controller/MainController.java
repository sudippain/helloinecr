package com.example.FirstSpringBootApplication.controller;

import javax.swing.text.html.FormSubmitEvent.MethodType;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/main/")
public class MainController {
	
	
	@RequestMapping(method = RequestMethod.GET,value = "/hello")
	public String hello() {
		return "Hello Sudip";

	}

}
