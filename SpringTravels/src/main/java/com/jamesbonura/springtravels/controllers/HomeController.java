package com.jamesbonura.springtravels.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jamesbonura.springtravels.models.Expense;
import com.jamesbonura.springtravels.services.ExpenseService;

@Controller
public class HomeController {
	
	@Autowired
	private ExpenseService expenseServ;
	
	@RequestMapping("/expenses")
	public String index(@ModelAttribute("expense") Expense emptyExpense, Model model) {
		List<Expense> allExpenses = expenseServ.allExpenses();
		model.addAttribute("expenses", allExpenses);
		return "index.jsp";
	}
	
	@PostMapping("/new/expense")
	public String create(@Valid @ModelAttribute("expense") Expense filledExpense, BindingResult results) {
		//VALIDATE
		if(results.hasErrors()) {
			return "index.jsp";
		}
		else {
			expenseServ.createExpense(filledExpense);
			return "redirect:/expenses";
		}
	}
}
