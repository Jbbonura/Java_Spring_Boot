package com.jamesbonura.daikichiroutes_pathvariables.controllers;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/daikichi")
public class HomeController {
	@RequestMapping("")
	public String index() {
		return "Welcome!";
	}
	
	@RequestMapping("/today")
	public String today() {
		return "Today you will find luck in all your endeavors!";
	}
	
	@RequestMapping("/tomorrow")
	public String tomorrow() {
		return "Tomorrow, an opportunity will arise, so be sure to be open to new ideas!";
	}
	@RequestMapping("/travel/{city}")
	public String travel(@PathVariable ("city") String city){
		return String.format("Congratulations! You will soon travel to %s!", city);
	}
	
	@RequestMapping("/lotto/{num}")
	public String lotto(@PathVariable ("num") String num) {
		int intNum = Integer.parseInt(num);
		if(intNum % 2 != 0) {
			return "You have enjoyed the fruits of your labor not now is a great time to spend time with family and friends.";
		}
		else {
			return "You will take a grand journey in the near future, but be weary of tempting offers.";
		}
	}
}
