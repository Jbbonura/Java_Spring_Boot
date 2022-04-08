package com.jamesbonura.hellohuman.controllers;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController

public class HomeController {
	@RequestMapping("/")
	public String firstName(@RequestParam(value="name", required=false, defaultValue= "Human") String searchQuery, 
			@RequestParam(value="last_name", required=false, defaultValue= "") String searchQuery2, 
			@RequestParam(value="times", required = false, defaultValue = "1") String searchQuery3){
		
		int times = Integer.parseInt(searchQuery3);
		String message = String.format("Hello %s %s",searchQuery, searchQuery2);
		for(int i = 1; i <= times; i++) {
			if(i == 1) {
				
			}
			else {
			message += String.format(" Hello %s %s",searchQuery, searchQuery2);
			}		
		}
		return message;
	}
}

