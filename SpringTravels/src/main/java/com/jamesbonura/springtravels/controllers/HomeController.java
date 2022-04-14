package com.jamesbonura.springtravels.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
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
	
	@PostMapping("/expenses/new")
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
	
	@RequestMapping("/expenses/edit/{id}")
	public String edit(@PathVariable("id") Long id, Model model) {
		// GET ONE EXPENSE FROM DATABASE
		Expense oneExpense = expenseServ.getExpense(id);
		
		//PASS ONE EXPENSE TO JSP
		model.addAttribute("expense", oneExpense);
		
		return "edit.jsp";
	}
	
	@PutMapping("/expenses/edit/{id}")
	public String updateExpense(@Valid @ModelAttribute("expense") Expense filledExpense, BindingResult results,
			@PathVariable("id") Long id) {
		
		// VALIDATE THE INFORMATION
		if(results.hasErrors()) {
			return "edit.jsp";
		}
		else {
			expenseServ.createExpense(filledExpense);
			return "redirect:/expenses";
		}
	}
}
